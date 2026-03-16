# Founder Jam Skills Pack

**For:** Founder Jam workshop attendees
**Hosted by:** [Innovate Charlotte](https://www.innovatecharlotte.org/) and [StealthX](https://stealthx.co/)
**Event:** https://www.innovatecharlotte.org/founderjams

## What This Is

A set of 19 Claude Code skills -- 10 for the workshop day, 9 for post-workshop growth operations -- for early-stage startup founders participating in Founder Jam, a full-day workshop experience hosted by Innovate Charlotte and StealthX. Product Track founders build competitive intelligence, strategic hypotheses, and rapid prototypes. Growth Track founders define ICPs, design offers, and build go-to-market automation.

## Quick Start

1. Run `./install.sh` to install all skills
2. Run `founder-setup` to capture your startup context
3. Choose your track and follow the activity sequence below

## Tracks

**Product Track** (prototype building):
`battle-card-builder` -> `hypothesis-engine` -> `prototype-launcher`

**Growth Track** (go-to-market strategy):
`icp-definer` -> `offer-designer` -> `growth-builder`

**Shared (both tracks):**
- `founder-setup` (start of day)
- `pitch-builder` (end of day)
- `validation-planner` (end of day)

**On-demand:**
- `market-analyzer` (available any time for competitive research)

**Growth Operations (on-demand, post-workshop):**
- `lead-magnet-ideator` (brainstorm and score multiple lead magnet concepts)
- `testimonial-collector` (testimonial requests, collection tracking, champion activation)
- `show-rate-optimizer` (confirmation sequences, pre-call value notes, no-show recovery)
- `offer-architect` (Grand Slam package optimization -- use after offer-designer)
- `nurture-engine` (source-specific 7-email nurture sequences)
- `case-study-generator` (multi-format case study packages)
- `seo-keyword-mapper` (6 Circles keyword maps, programmatic SEO templates)
- `content-calendar-planner` (content calendars with velocity rules and ratio tracking)
- `landing-page-auditor` (8-dimension page audits with A/B test variants)

## Config

Your startup context lives in `config.json` (never committed to git). Created by `founder-setup` at the start of your session. Each skill reads this config and enriches it with new data as you progress through the day.

If you skip setup, each skill will ask for what it needs.

## Important Constraints

- All frameworks cited in ATTRIBUTION.md
- Skills augment the workshop facilitators -- they don't replace them
- Free tools by default; paid tools are optional enhancements
- All outputs designed to paste into Miro boards

## Skill Files

Skills are located in `skills/[skill-name]/[skill-name].skill`. After running `install.sh`, they are symlinked into `~/.claude/skills/` and can be invoked by name in Claude Code.

For Claude Desktop or Cowork users, see the `instructions/` folder for markdown versions of each skill.

## Attribution

Frameworks used in these skills are cited in ATTRIBUTION.md. All source material is from published books and public domain methodologies.
