# Founder Jam skills

Skills for Founder Jam, a one-day workshop for early-stage founders. Founder Jam was co-created by Drew Burdick and [Innovate Charlotte](https://www.innovatecharlotte.org/). The skills work in claude.ai, Claude desktop, and Claude Code, and they follow the day's four stages: Understand, Focus, Build, Validate.

Version 2 runs as one track with four paths. During Focus, each founder picks a path with their sherpa: product and positioning, GTM and growth, sales, or ops and automation. The path decides which skills to lean on. The day ends with 2-day, 2-week, and 2-month commitments.

Founder Jam curriculum and skills by Drew Burdick · program co-created with Innovate Charlotte · CC BY 4.0 · drewburdick.com/founderjam

## Quick start

Pick the one that matches how you work. Then run `founder-setup`.

### claude.ai or Claude desktop (upload a zip)

1. Download `founder-setup.zip` from [`dist/`](dist/).
2. In Claude, open Customize > Skills, click the plus button, choose "Create skill", then "Upload a skill", and pick the zip. (Older layout: Settings > Capabilities > Skills > Upload skill.) Skills need "Code execution and file creation" switched on in Settings > Capabilities.
3. Start a new chat and say "Run founder-setup."
4. Upload the other zips you need for your path.

Details, artifacts, and connectors: [docs/claude-apps-guide.md](docs/claude-apps-guide.md).

### Plugin (Claude desktop or Claude Code)

This repository is also a plugin marketplace. In Claude Code:

```
/plugin marketplace add stealthxco/founderjamskills
/plugin install founder-jam@founder-jam-skills
```

On Claude Code 2.1.275 or later, one step does both: `/plugin install founder-jam --marketplace stealthxco/founderjamskills`.

In Claude desktop, open Customize > Plugins, choose "Add marketplace", enter `stealthxco/founderjamskills`, and install the Founder Jam plugin. Either way you get all 25 skills in one install.

### Claude Code (clone and link)

```bash
git clone https://github.com/stealthxco/founderjamskills.git
cd founderjamskills
./install.sh              # add --no-sherpa to skip the facilitator skills
```

Then run `founder-setup` in a Claude Code session.

### Any plan, no install

Open [`instructions/`](instructions/), copy an activation prompt into a new chat, and follow it. [`starter-kit/`](starter-kit/) packages two skills for founders working on their own.

## How the day works

1. Understand: `founder-setup`, `market-analyzer`, `battle-card-builder`
2. Focus: pick a path, then `icp-definer`, `hypothesis-engine`, `lead-magnet-ideator`
3. Build: the skills for your path (prototype, offer, outbound, automation, content)
4. Validate: `validation-planner` and `pitch-builder`, plus proof and audit skills

`founder-setup` suggests a path and prints a FOUNDER JAM HANDOFF block. Paste that block at the start of each later skill. Every skill prints an updated block when it finishes, so the latest one always goes into the next skill.

The path map, with the core skills for each path and stage, is in [PATHS.md](PATHS.md).

## Skills

The skill folders are grouped by stage under [`skills/`](skills/).

| Stage | Skill | What it produces |
|-------|-------|------------------|
| Understand | `founder-setup` | Startup snapshot, suggested path, handoff block |
| Understand | `market-analyzer` | TAM, SAM, SOM and a competitive landscape |
| Understand | `battle-card-builder` | SWOT and a battle card for each competitor |
| Focus | `icp-definer` | ICP card, competitor growth analysis, 1 to 2 channels |
| Focus | `hypothesis-engine` | Ranked hypotheses with validation plans |
| Focus | `lead-magnet-ideator` | 5 to 7 scored lead magnet concepts |
| Build | `prototype-launcher` | A prototype (including a clickable Claude artifact) and a test plan |
| Build | `offer-designer` | Lead magnet and a 7-email nurture sequence |
| Build | `growth-builder` | An automation spec and a 30-day plan |
| Build | `outbound-composer` | Outbound system, sequences, and daily cadence (third-party, CC0) |
| Build | `page-launcher` | Live pages from Claude Code, or an artifact elsewhere (third-party, CC0) |
| Build | `offer-architect` | Grand Slam package with bonuses and guarantees |
| Build | `nurture-engine` | Source-specific 7-email sequences |
| Build | `seo-keyword-mapper` | Keyword maps and a publishing roadmap |
| Build | `content-calendar-planner` | Content calendar with velocity rules |
| Build | `show-rate-optimizer` | Confirmation sequences and no-show recovery |
| Validate | `validation-planner` | 2-day, 2-week, 2-month commitments and decision gates |
| Validate | `pitch-builder` | Talking points for the share-out |
| Validate | `testimonial-collector` | Testimonial requests and a collection tracker |
| Validate | `case-study-generator` | Case study package in several formats |
| Validate | `landing-page-auditor` | 8-dimension page audit with A/B variants |

### For sherpas

The [`skills/sherpa/`](skills/sherpa/) folder holds four skills for the people guiding a cohort. Founders don't need them.

| Skill | Use it |
|-------|--------|
| `cohort-prep` | Before the event: briefing cards, sherpa assignments, a Miro setup checklist |
| `intervention-guide` | During the event: language for a stuck table, pacing checks, challenge questions |
| `cohort-debrief` | The same day: a card per startup and patterns across the cohort |
| `follow-up-generator` | After the event: personalized 2-day, 2-week, and 2-month check-ins |

## Your context

Skills run from the handoff block you paste into the chat, so nothing needs to be saved. In Claude Code, skills can also read and write an optional `config.json` (copy [`config.example.json`](config.example.json); it's never committed). In `founder-setup` you say whether a sherpa is with you. Without one, skills skip the challenge prompts and run in solo mode.

## Building the zips

After you edit a skill, run `./package-skills.sh`. It checks each skill's frontmatter and bundled files, then writes `dist/<skill>.zip`. Each zip has one folder named for the skill with its SKILL.md, templates, LICENSE, a CREDIT.txt, and (except founder-setup) a HANDOFF-FORMAT.md copied from founder-setup. The script needs PyYAML (`python3 -m pip install --user pyyaml`).

## Frameworks and attribution

The skills cite published frameworks, and two skills are third-party material by Scott Murtaugh of GP Automations. [ATTRIBUTION.md](ATTRIBUTION.md) has the full credits and the license history. Release notes are in [CHANGELOG.md](CHANGELOG.md).

## License

Version 2.0.0 and later is licensed by Drew Burdick under [CC BY 4.0](LICENSE). Credit line:

Founder Jam curriculum and skills by Drew Burdick · program co-created with Innovate Charlotte · CC BY 4.0 · drewburdick.com/founderjam

Version 1.x (tag `v1.0.0`) was released under CC0 1.0 and stays that way. The `outbound-composer` and `page-launcher` skills are third-party material under CC0 1.0.

## More

Founder Jam is a program of Innovate Charlotte. See [innovatecharlotte.org/founderjam](https://www.innovatecharlotte.org/founderjam) for upcoming events. For more on building products founders want, subscribe to the Building Great Experiences newsletter at [greatexperiences.beehiiv.com/subscribe](https://greatexperiences.beehiiv.com/subscribe).
