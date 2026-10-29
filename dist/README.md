# Installable skill zips (Claude desktop and claude.ai)

Each `.zip` here is one Founder Jam skill, packaged so you can upload it into the Claude desktop app or claude.ai. No Claude Code, terminal, or cloning needed.

## Install a skill (2 minutes)

1. Download the `.zip` for the skill you want (open the file on GitHub and choose the download button).
2. Open Claude desktop or claude.ai.
3. Go to Customize > Skills, click the plus button, choose "Create skill", then "Upload a skill". In older layouts the path is Settings > Capabilities > Skills > Upload skill.
4. Pick the zip and switch the skill on.
5. Start a new chat and ask for it by name, for example "Run founder-setup."

Skills need "Code execution and file creation" switched on in Settings > Capabilities (it may read "Create and edit files"). On Team and Enterprise plans an owner controls this. If uploads aren't available to you, use the paste-in prompts in [`../instructions/`](../instructions/) instead.

Start with `founder-setup.zip`. The other skills use the handoff block it prints. Then upload the skills for your path (see [`../PATHS.md`](../PATHS.md)). The full walkthrough, with artifacts and connectors, is in [`../docs/claude-apps-guide.md`](../docs/claude-apps-guide.md).

## What's in each zip

One folder named for the skill, containing:

- `SKILL.md`, the skill itself
- any `templates/` or `content/` files the skill uses
- `LICENSE`, CC BY 4.0 (third-party skills carry the CC0 text instead)
- `CREDIT.txt`, the credit line

## The skills

Understand
- `founder-setup.zip` (run this first), `market-analyzer.zip`, `battle-card-builder.zip`

Focus
- `icp-definer.zip`, `hypothesis-engine.zip`, `lead-magnet-ideator.zip`

Build
- `prototype-launcher.zip`, `offer-designer.zip`, `growth-builder.zip`, `offer-architect.zip`, `nurture-engine.zip`, `seo-keyword-mapper.zip`, `content-calendar-planner.zip`, `show-rate-optimizer.zip`
- `outbound-composer.zip`, third-party by Scott Murtaugh of GP Automations, CC0
- `page-launcher.zip`, third-party by Scott Murtaugh of GP Automations, CC0. It publishes with shell commands, so it only runs fully in Claude Code. In claude.ai or Claude desktop, ask Claude to build the page as an artifact instead.

Validate
- `validation-planner.zip`, `pitch-builder.zip`, `testimonial-collector.zip`, `case-study-generator.zip`, `landing-page-auditor.zip`

Sherpa (for facilitators)
- `cohort-prep.zip`, `intervention-guide.zip`, `cohort-debrief.zip`, `follow-up-generator.zip`

## Rebuilding the zips

After you edit a skill, regenerate every zip from the repo root:

```bash
./package-skills.sh
```

The script validates each skill's frontmatter, checks that every template a skill references is bundled, and rebuilds `dist/*.zip`.

## Other ways to use the skills

- Plugin: add `stealthxco/founderjamskills` as a marketplace and install `founder-jam`.
- Claude Code: run `./install.sh` from the repo root.
- Any plan, no upload: the activation prompts in [`../instructions/`](../instructions/).

---

Founder Jam curriculum and skills by Drew Burdick · program co-created with Innovate Charlotte · CC BY 4.0 · drewburdick.com/founderjam
