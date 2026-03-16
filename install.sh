#!/bin/bash
set -e

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
SKILLS_DIR="$REPO_DIR/skills"
CLAUDE_SKILLS_DIR="$HOME/.claude/skills"

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
if [ "$1" = "--uninstall" ]; then
    echo "Uninstalling Founder Jam skills..."
    if [ ! -d "$CLAUDE_SKILLS_DIR" ]; then
        print_warning "No Claude skills directory found. Nothing to uninstall."
        exit 0
    fi
    for skill_dir in "$SKILLS_DIR"/*/; do
        skill_name=$(basename "$skill_dir")
        target="$CLAUDE_SKILLS_DIR/$skill_name"
        if [ -L "$target" ]; then
            rm "$target"
            print_success "  Removed: $skill_name"
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
if [ "$1" = "--lite" ]; then
    echo ""
    echo "Founder Jam Skills - Desktop/Cowork Mode"
    echo "========================================="
    echo ""
    echo "You don't need Claude Code for this! Here's how to use the skills:"
    echo ""
    echo "1. Open the instructions/ folder in this repo"
    echo "2. Pick a skill (start with founder-setup.md)"
    echo "3. Copy the activation prompt from the instructions file"
    echo "4. Paste it into a new Claude Desktop or Cowork conversation"
    echo ""
    echo "Skill order:"
    echo ""
    echo "  Product Track:  founder-setup -> battle-card-builder -> hypothesis-engine -> prototype-launcher -> pitch-builder -> validation-planner"
    echo "  Growth Track:   founder-setup -> icp-definer -> offer-designer -> growth-builder -> pitch-builder -> validation-planner"
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

for skill_dir in "$SKILLS_DIR"/*/; do
    skill_name=$(basename "$skill_dir")
    skill_file="$skill_dir/$skill_name.skill"
    skill_md="$skill_dir/SKILL.md"
    target="$CLAUDE_SKILLS_DIR/$skill_name"

    # Verify skill file exists
    if [ ! -f "$skill_file" ]; then
        print_warning "  Skipped: $skill_name (no .skill file found)"
        skipped=$((skipped + 1))
        continue
    fi

    # Create SKILL.md symlink inside skill directory if missing
    if [ ! -e "$skill_md" ]; then
        ln -s "$skill_name.skill" "$skill_md"
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

# Copy config template if needed
if [ ! -f "$REPO_DIR/config.json" ]; then
    cp "$REPO_DIR/config.example.json" "$REPO_DIR/config.json"
    echo ""
    print_success "Created config.json from template."
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
echo "Skill order:"
echo "  Product Track:  founder-setup -> battle-card-builder -> hypothesis-engine -> prototype-launcher -> pitch-builder -> validation-planner"
echo "  Growth Track:   founder-setup -> icp-definer -> offer-designer -> growth-builder -> pitch-builder -> validation-planner"
echo ""
