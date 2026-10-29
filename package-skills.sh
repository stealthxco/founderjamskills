#!/usr/bin/env bash
#
# package-skills.sh: build one installable .zip per skill for the Claude apps
# (Claude Desktop / claude.ai -> Settings -> Capabilities -> Skills -> Upload skill).
#
# Skills live at skills/<stage>/<name>/SKILL.md (stage = understand, focus, build,
# validate, sherpa). Each zip has a single top-level folder <name>/ holding the real
# SKILL.md plus anything bundled in the skill folder (templates/, content/). Every
# template or content file a SKILL.md references must exist inside that skill's folder;
# the build fails if one is missing, so a dangling reference can never ship.
#
# Output: dist/<name>.zip (committed so non-technical users can download one file)
# Usage:  ./package-skills.sh
#
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILLS_DIR="$REPO_DIR/skills"
DIST_DIR="$REPO_DIR/dist"

GREEN='\033[0;32m'; RED='\033[0;31m'; NC='\033[0m'
ok()   { echo -e "${GREEN}$1${NC}"; }
fail() { echo -e "${RED}$1${NC}" >&2; exit 1; }

command -v python3 >/dev/null 2>&1 || fail "ERROR: 'python3' not found. Install it and re-run."

mkdir -p "$DIST_DIR"
rm -f "$DIST_DIR"/*.zip

built=0
seen=" "
for src in "$SKILLS_DIR"/*/*/SKILL.md; do
  skill_dir="$(dirname "$src")"
  skill="$(basename "$skill_dir")"

  [ -L "$src" ] && fail "ERROR: $skill/SKILL.md is a symlink. Zip upload needs a real file."
  case "$seen" in *" $skill "*) fail "ERROR: duplicate skill name '$skill'." ;; esac
  seen="$seen$skill "

  # Frontmatter: name must match the folder; description and license are required.
  head -1 "$src" | grep -q '^---$' || fail "ERROR: $skill missing YAML frontmatter."
  fm="$(awk 'NR==1{next} /^---$/{exit} {print}' "$src")"
  echo "$fm" | grep -qx "name: $skill" || fail "ERROR: $skill frontmatter 'name:' must equal '$skill'."
  desc="$(echo "$fm" | sed -n 's/^description: //p')"
  [ -n "$desc" ] || fail "ERROR: $skill missing 'description:' in frontmatter."
  [ "${#desc}" -le 1024 ] || fail "ERROR: $skill description is ${#desc} chars (max 1024)."
  echo "$fm" | grep -Eq '^license: (CC-BY-4\.0|CC0-1\.0)$' || fail "ERROR: $skill missing 'license: CC-BY-4.0' (or CC0-1.0 for third-party skills)."

  # Every templates/ or content/ file referenced in the skill must be bundled with it.
  deps="$(grep -oE '(templates|content)/[A-Za-z0-9._-]+\.md' "$src" | sort -u || true)"
  for dep in $deps; do
    [ -f "$skill_dir/$dep" ] || fail "ERROR: $skill references '$dep' but it is not in skills/*/$skill/."
  done

  # Deterministic zip (sorted entries, fixed timestamps) with one top-level folder <name>/.
  python3 - "$skill_dir" "$skill" "$DIST_DIR/$skill.zip" <<'PY'
import os, sys, zipfile
src, name, out = sys.argv[1:4]
entries = []
for root, dirs, files in os.walk(src):
    dirs.sort()
    for f in sorted(files):
        if f == ".DS_Store":
            continue
        full = os.path.join(root, f)
        entries.append((os.path.join(name, os.path.relpath(full, src)), full))
with zipfile.ZipFile(out, "w", zipfile.ZIP_DEFLATED) as zf:
    for arc, full in sorted(entries):
        info = zipfile.ZipInfo(arc, date_time=(2026, 1, 1, 0, 0, 0))
        info.compress_type = zipfile.ZIP_DEFLATED
        info.external_attr = 0o644 << 16
        with open(full, "rb") as fh:
            zf.writestr(info, fh.read())
PY
  ok "  built dist/$skill.zip"
  built=$((built + 1))
done

echo ""
ok "Done. $built skill zip(s) in dist/"
echo "Upload any dist/*.zip via Claude Desktop or claude.ai -> Settings -> Capabilities -> Skills -> Upload skill."
