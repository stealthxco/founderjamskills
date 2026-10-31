#!/bin/bash
set -e

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
SKILLS_DIR="$REPO_DIR/skills"
CLAUDE_SKILLS_DIR="$HOME/.claude/skills"

# Flags: --no-sherpa skips the four facilitator skills in skills/sherpa/.
INSTALL_SHERPA=1
MODE=""
for arg in "$@"; do
    case "$arg" in
        --no-sherpa) INSTALL_SHERPA=0 ;;
        --uninstall|--lite) MODE="$arg" ;;
        -h|--help)
            echo "Usage: ./install.sh [--no-sherpa | --lite | --uninstall]"
            echo "  (no flag)     link every skill into ~/.claude/skills/ for Claude Code"
            echo "  --no-sherpa   skip the facilitator skills in skills/sherpa/"
            echo "  --lite        show the Claude Desktop / claude.ai options (no install)"
            echo "  --uninstall   remove the links this script created"
            echo "Prefer the plugin? In Claude Code: /plugin marketplace add stealthxco/founderjamskills"
            exit 0 ;;
        *) echo "Unknown option: $arg (try --help)" >&2; exit 1 ;;
    esac
done

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

print_success() { echo -e "${GREEN}$1${NC}"; }
print_warning() { echo -e "${YELLOW}$1${NC}"; }
print_error() { echo -e "${RED}$1${NC}"; }

# -------------------------------------------------------------------
# Uninstall mode
# -------------------------------------------------------------------
if [ "$MODE" = "--uninstall" ]; then
    echo "Uninstalling Founder Jam skills..."
    if [ ! -d "$CLAUDE_SKILLS_DIR" ]; then
        print_warning "No Claude skills directory found. Nothing to uninstall."
        exit 0
    fi
    for skill_dir in "$SKILLS_DIR"/*/*/; do
        skill_name=$(basename "$skill_dir")
        target="$CLAUDE_SKILLS_DIR/$skill_name"
        # Only remove links that point into this repo (new layout or the old flat v1 layout).
        if [ -L "$target" ]; then
            link_dest="$(readlink "$target")"
            case "$link_dest" in
                "$SKILLS_DIR"/*) rm "$target"; print_success "  Removed: $skill_name" ;;
                *) print_warning "  Kept:    $skill_name (link points outside this repo)" ;;
            esac
        fi
    done
    echo ""
    print_success "Founder Jam skills uninstalled."
    echo "Note: config.json was preserved (your startup data is intact)."
    exit 0
fi

# -------------------------------------------------------------------
# Lite mode (Desktop/Cowork)
# -------------------------------------------------------------------
if [ "$MODE" = "--lite" ]; then
    echo ""
    echo "Founder Jam Skills - Desktop/Cowork Mode"
    echo "========================================="
    echo ""
    echo "You don't need Claude Code for this. Two options:"
    echo ""
    echo "EASIEST - Upload a ready-made skill:"
    echo "  1. Grab a .zip from the dist/ folder (start with founder-setup.zip)"
    echo "  2. In Claude Desktop or claude.ai: Customize > Skills > + > Create skill > Upload a skill"
    echo "     (older layout: Settings > Capabilities > Skills > Upload skill)"
    echo "  3. Ask for it by name in a new chat. See docs/claude-apps-guide.md for details."
    echo ""
    echo "PLUGIN - Add this repo as a marketplace (Claude Desktop: Customize > Plugins > Add marketplace):"
    echo "  stealthxco/founderjamskills, then install the founder-jam plugin."
    echo ""
    echo "ANY PLAN - Paste in an activation prompt (no upload needed):"
    echo "  1. Open the instructions/ folder in this repo"
    echo "  2. Pick a skill (start with founder-setup.md)"
    echo "  3. Copy the activation prompt from the instructions file"
    echo "  4. Paste it into a new Claude Desktop or Cowork conversation"
    echo ""
    echo "  Start with founder-setup, then follow your path. See PATHS.md for the skills on each path."
    echo "  Stages: Understand -> Focus -> Build -> Validate"
    echo ""

    # Try to open the instructions README
    INSTRUCTIONS_README="$REPO_DIR/instructions/README.md"
    if [ -f "$INSTRUCTIONS_README" ]; then
        if command -v open &> /dev/null; then
            open "$INSTRUCTIONS_README"
        elif command -v xdg-open &> /dev/null; then
            xdg-open "$INSTRUCTIONS_README"
        fi
    fi
    exit 0
fi

# -------------------------------------------------------------------
# Standard install (Claude Code)
# -------------------------------------------------------------------
echo ""
echo "Founder Jam Skills - Claude Code Install"
echo "========================================="
echo ""

# Check for Claude Code
if [ ! -d "$HOME/.claude" ]; then
    print_error "Claude Code not detected (~/.claude/ not found)."
    echo ""
    echo "Install Claude Code first:"
    echo "  https://docs.anthropic.com/en/docs/claude-code/overview"
    echo ""
    echo "Or run with --lite for Claude Desktop/Cowork mode:"
    echo "  ./install.sh --lite"
    exit 1
fi

# Create skills directory if needed
mkdir -p "$CLAUDE_SKILLS_DIR"

# Install each skill
installed=0
skipped=0

# Skills live at skills/<stage>/<name>/SKILL.md; each skill folder is linked by name.
for skill_dir in "$SKILLS_DIR"/*/*/; do
    skill_dir="${skill_dir%/}"
    skill_name=$(basename "$skill_dir")
    skill_md="$skill_dir/SKILL.md"
    target="$CLAUDE_SKILLS_DIR/$skill_name"

    # Sherpa skills are for facilitators; skip them with --no-sherpa.
    if [ "$INSTALL_SHERPA" -eq 0 ] && [ "$(basename "$(dirname "$skill_dir")")" = "sherpa" ]; then
        continue
    fi

    # Verify SKILL.md exists
    if [ ! -f "$skill_md" ]; then
        print_warning "  Skipped: $skill_name (no SKILL.md found)"
        skipped=$((skipped + 1))
        continue
    fi

    # A link from an older layout (v1 pointed at skills/<name>) goes stale after the move to
    # skills/<stage>/<name>. Replace stale links that point into this repo.
    if [ -L "$target" ]; then
        link_dest="$(readlink "$target")"
        case "$link_dest" in
            "$SKILLS_DIR"/*)
                if [ "${link_dest%/}" != "$skill_dir" ]; then
                    rm "$target"
                    print_warning "  Relinked: $skill_name (was $link_dest)"
                fi ;;
        esac
    fi

    # Symlink skill directory into ~/.claude/skills/
    if [ -e "$target" ]; then
        print_warning "  Exists:  $skill_name (skipped, already installed)"
        skipped=$((skipped + 1))
    else
        ln -s "$skill_dir" "$target"
        print_success "  Installed: $skill_name"
        installed=$((installed + 1))
    fi
done

# config.json is optional. The skills work from a pasted FOUNDER JAM HANDOFF block;
# in Claude Code they can also read and write config.json when it exists.
if [ ! -f "$REPO_DIR/config.json" ]; then
    cp "$REPO_DIR/config.example.json" "$REPO_DIR/config.json"
    echo ""
    print_success "Created config.json from template (optional in Claude Code)."
elif python3 -c 'import json, sys; c = json.load(open(sys.argv[1])); sys.exit(0 if isinstance(c, dict) and "startup_name" in c and "path" not in c else 1)' "$REPO_DIR/config.json" 2>/dev/null; then
    echo ""
    print_warning "config.json is a v1 file (it has no 'path' key), so the v2 skills will not read or update it."
    echo "  Add a \"path\" key set to product-positioning, gtm-growth, sales, ops-automation, or undecided,"
    echo "  or delete config.json and run founder-setup again. See 'Upgrading from v1' in CHANGELOG.md."
fi

echo ""
echo "---"
echo "Installed: $installed skills"
if [ $skipped -gt 0 ]; then
    echo "Skipped:   $skipped (already installed or missing)"
fi
echo ""
print_success "Ready! Run 'founder-setup' to get started."
echo ""
echo "Stages: Understand -> Focus -> Build -> Validate"
echo "Start with founder-setup, then follow your path (see PATHS.md)."
echo "Prefer a plugin? In Claude Code: /plugin marketplace add stealthxco/founderjamskills"
echo ""
