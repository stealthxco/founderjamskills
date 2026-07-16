#!/usr/bin/env bash
#
# package-skills.sh — build one installable .zip per skill for the Claude apps
# (Claude Desktop / claude.ai → Settings → Capabilities → Skills → Upload skill).
#
# Each zip contains a single top-level folder <skill-name>/ with a REAL SKILL.md
# inside it (the repo's SKILL.md is a symlink, which does NOT survive zip upload).
# The founder skills are self-contained, so each zip is just <skill-name>/SKILL.md.
#
# Output: dist/<skill-name>.zip  (committed so non-technical users can one-click download)
# Usage:  ./package-skills.sh
#
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILLS_DIR="$REPO_DIR/skills"
DIST_DIR="$REPO_DIR/dist"

GREEN='\033[0;32m'; RED='\033[0;31m'; NC='\033[0m'
ok()   { echo -e "${GREEN}$1${NC}"; }
fail() { echo -e "${RED}$1${NC}" >&2; exit 1; }

command -v zip >/dev/null 2>&1 || fail "ERROR: 'zip' not found. Install it and re-run."

mkdir -p "$DIST_DIR"
rm -f "$DIST_DIR"/*.zip

built=0
for skill_dir in "$SKILLS_DIR"/*/; do
  skill="$(basename "$skill_dir")"
  src="$skill_dir/$skill.skill"
  [ -f "$src" ] || { echo "SKIP: $skill (no $skill.skill)"; continue; }

  # Validate frontmatter before packaging (name + description are required by the apps).
  head -1 "$src" | grep -q '^---' || fail "ERROR: $skill missing YAML frontmatter."
  grep -q '^name:' "$src"        || fail "ERROR: $skill missing 'name:' in frontmatter."
  grep -q '^description:' "$src" || fail "ERROR: $skill missing 'description:' in frontmatter."

  stage="$(mktemp -d)"
  mkdir -p "$stage/$skill"
  # Copy the .skill body to a REAL SKILL.md (dereferences nothing — .skill is a real file).
  cp "$src" "$stage/$skill/SKILL.md"

  ( cd "$stage" && zip -q -r -X "$DIST_DIR/$skill.zip" "$skill" -x '*.DS_Store' )
  rm -rf "$stage"
  ok "  built dist/$skill.zip"
  built=$((built + 1))
done

echo ""
ok "Done. $built skill zip(s) in dist/"
echo "Upload any dist/*.zip via Claude Desktop or claude.ai → Settings → Capabilities → Skills → Upload skill."
