# Founder Jam Skills - Instructions for Claude Desktop / Cowork

These instruction files let you use the Founder Jam skills without installing Claude Code. Each file contains an activation prompt you can paste directly into Claude Desktop or Claude Cowork.

## Two Ways to Use These Skills

### Option 1: Claude Code (Full Experience)

If you have [Claude Code](https://docs.anthropic.com/en/docs/claude-code/overview) installed:

```bash
cd founderjamskills
./install.sh
```

This symlinks all skills into Claude Code. You can invoke any skill by name (e.g., just type `founder-setup` in a Claude Code session). Skills read and write to a shared `config.json`, so context flows automatically between them.

### Option 2: Claude Desktop / Cowork (No Installation Needed)

1. Open the instruction file for the skill you want to use
2. Copy the **Activation Prompt** section
3. Paste it into a new Claude Desktop or Cowork conversation
4. Follow the guided flow

Since Desktop and Cowork don't have file access, you'll need to manually share context between skills (the activation prompts include instructions for this).

## Skill Order

Start with `founder-setup.md` regardless of your track.

### Product Track

| Order | File | Time | What You Get |
|-------|------|------|-------------|
| 1 | `founder-setup.md` | 15 min | Startup snapshot + track selection |
| 2 | `battle-card-builder.md` | 75 min | SWOT + competitive battle cards |
| 3 | `hypothesis-engine.md` | 75 min | Ranked hypotheses + validation plans |
| 4 | `prototype-launcher.md` | 120 min | Prototype artifacts |
| 5 | `pitch-builder.md` | 20 min | Talking points for share-out |
| 6 | `validation-planner.md` | 15 min | 30-day commitment plan |

### Growth Track

| Order | File | Time | What You Get |
|-------|------|------|-------------|
| 1 | `founder-setup.md` | 15 min | Startup snapshot + track selection |
| 2 | `icp-definer.md` | 75 min | ICP cards + channel strategy |
| 3 | `offer-designer.md` | 75 min | Lead magnet + nurture sequence |
| 4 | `growth-builder.md` | 120 min | Automation + 30-day plan |
| 5 | `pitch-builder.md` | 20 min | Talking points for share-out |
| 6 | `validation-planner.md` | 15 min | 30-day commitment plan |

### Available Any Time

- `market-analyzer.md` - Competitive research and market sizing on demand

## Tips

- **Save your outputs.** Each skill builds on the previous one. Copy key outputs (ICP statements, hypothesis selections, etc.) to share with the next skill.
- **Be specific.** The more detail you give about your startup, the more useful the outputs will be.
- **Push back.** If an output feels generic, tell Claude. "That's too broad" or "make it specific to [my industry]" produces much better results.
- **Paste into Miro.** All outputs are formatted as markdown tables and cards that paste cleanly into Miro boards.

## More Resources

Want more tools, frameworks, and insights for founders? Subscribe to the **Building Great Experiences** newsletter:

[greatexperiences.beehiiv.com/subscribe](https://greatexperiences.beehiiv.com/subscribe)

## About Founder Jam

Founder Jam is a full-day workshop experience hosted by [Innovate Charlotte](https://www.innovatecharlotte.org/) and [StealthX](https://stealthx.co/).

Visit [innovatecharlotte.org/founderjams](https://www.innovatecharlotte.org/founderjams) for upcoming events.
