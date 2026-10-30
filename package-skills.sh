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
# Each zip also carries LICENSE (CC BY 4.0, or the CC0 text for third-party skills) and a
# short CREDIT.txt with the Founder Jam credit line. Both are generated into the zip only;
# they are not stored in the skill folders, so the plugin and the zips share one source.
#
# Output: dist/<name>.zip (committed so non-technical users can download one file)
# Usage:  ./package-skills.sh
#
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILLS_DIR="$REPO_DIR/skills"
DIST_DIR="$REPO_DIR/dist"
CREDIT_LINE="Founder Jam curriculum and skills by Drew Burdick · program co-created with Innovate Charlotte · CC BY 4.0 · drewburdick.com/founderjam"

GREEN='\033[0;32m'; RED='\033[0;31m'; NC='\033[0m'
ok()   { echo -e "${GREEN}$1${NC}"; }
fail() { echo -e "${RED}$1${NC}" >&2; exit 1; }

command -v python3 >/dev/null 2>&1 || fail "ERROR: 'python3' not found. Install it and re-run."
[ -f "$REPO_DIR/LICENSE" ] || fail "ERROR: LICENSE not found at the repo root."
[ -f "$REPO_DIR/licenses/CC0-1.0.txt" ] || fail "ERROR: licenses/CC0-1.0.txt not found."

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

  # Frontmatter: must parse as YAML (a loader rejects an unquoted ": " in a value);
  # name must match the folder; description (max 200 chars) and license are required.
  head -1 "$src" | grep -q '^---$' || fail "ERROR: $skill missing YAML frontmatter."
  lic="$(python3 -I - "$src" "$skill" <<'PY'
import re, sys
path, skill = sys.argv[1:3]
fm = open(path, encoding="utf-8").read().split("---", 2)[1]
try:
    import yaml
    data = yaml.safe_load(fm)
except ImportError:
    # No PyYAML: parse the flat key: value lines and reject plain scalars YAML would misread.
    data = {}
    for line in fm.strip().splitlines():
        key, _, val = line.partition(":")
        val = val.strip()
        if val[:1] in ('"', "'"):
            val = val[1:-1].replace('\\"', '"')
        elif ": " in val or " #" in val:
            sys.exit(f"ERROR: {skill} '{key}:' has an unquoted ': ' or ' #'. Quote the value.")
        data[key.strip()] = val
except yaml.YAMLError as e:
    sys.exit(f"ERROR: {skill} frontmatter is not valid YAML: {e}")
if not isinstance(data, dict):
    sys.exit(f"ERROR: {skill} frontmatter is not a YAML mapping.")
if data.get("name") != skill:
    sys.exit(f"ERROR: {skill} frontmatter 'name:' must equal '{skill}'.")
desc = str(data.get("description") or "")
if not desc:
    sys.exit(f"ERROR: {skill} missing 'description:' in frontmatter.")
if len(desc) > 200:
    sys.exit(f"ERROR: {skill} description is {len(desc)} chars (max 200).")
if data.get("license") not in ("CC-BY-4.0", "CC0-1.0"):
    sys.exit(f"ERROR: {skill} missing 'license: CC-BY-4.0' (or CC0-1.0 for third-party skills).")
print(data["license"])
PY
)" || exit 1

  # Every templates/ or content/ file referenced in the skill must be bundled with it.
  deps="$(grep -oE '(templates|content)/[A-Za-z0-9._-]+\.md' "$src" | sort -u || true)"
  for dep in $deps; do
    [ -f "$skill_dir/$dep" ] || fail "ERROR: $skill references '$dep' but it is not in skills/*/$skill/."
  done

  # The skill folder must not already hold the generated files.
  for gen in LICENSE CREDIT.txt; do
    [ -e "$skill_dir/$gen" ] && fail "ERROR: $skill/$gen exists in the skill folder. It is generated into the zip; remove it."
  done

  # LICENSE and CREDIT.txt depend on the skill's license.
  if [ "$lic" = "CC0-1.0" ]; then
    license_file="$REPO_DIR/licenses/CC0-1.0.txt"
    credit="Third-party skill, released under CC0 1.0 (public domain dedication) by its author. It is not covered by the CC BY 4.0 license that applies to the rest of the Founder Jam pack. See the end of SKILL.md for the author credit. Distributed in the Founder Jam skills pack, whose credit line is: $CREDIT_LINE"
  else
    license_file="$REPO_DIR/LICENSE"
    credit="$CREDIT_LINE"
  fi

  # Deterministic zip (sorted entries, fixed timestamps) with one top-level folder <name>/.
  python3 -I - "$skill_dir" "$skill" "$DIST_DIR/$skill.zip" "$license_file" "$credit" <<'PY'
import os, sys, zipfile
src, name, out, license_file, credit = sys.argv[1:6]
entries = []  # (archive path, bytes)
for root, dirs, files in os.walk(src):
    for d in dirs:
        if os.path.islink(os.path.join(root, d)):
            sys.exit("ERROR: symlinked folder in skill folder: " + os.path.join(root, d))
    dirs.sort()
    for f in sorted(files):
        if f == ".DS_Store":
            continue
        full = os.path.join(root, f)
        if os.path.islink(full):
            sys.exit("ERROR: symlink in skill folder: " + full)
        with open(full, "rb") as fh:
            entries.append((os.path.join(name, os.path.relpath(full, src)), fh.read()))
with open(license_file, "rb") as fh:
    entries.append((os.path.join(name, "LICENSE"), fh.read()))
entries.append((os.path.join(name, "CREDIT.txt"), (credit + "\n").encode("utf-8")))
with zipfile.ZipFile(out, "w", zipfile.ZIP_DEFLATED) as zf:
    for arc, data in sorted(entries):
        info = zipfile.ZipInfo(arc, date_time=(2026, 1, 1, 0, 0, 0))
        info.compress_type = zipfile.ZIP_DEFLATED
        info.external_attr = 0o644 << 16
        zf.writestr(info, data)
PY
  ok "  built dist/$skill.zip"
  built=$((built + 1))
done

echo ""
ok "Done. $built skill zip(s) in dist/"
echo "Upload any dist/*.zip in Claude Desktop or claude.ai (Customize > Skills, or Settings > Capabilities > Skills in older layouts). See docs/claude-apps-guide.md."
