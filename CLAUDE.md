# Founder Jam skills

**For:** Founder Jam workshop attendees and sherpas
**Program:** co-created by Drew Burdick and [Innovate Charlotte](https://www.innovatecharlotte.org/)
**Event:** https://www.innovatecharlotte.org/founderjam

## What this is

25 skills for Founder Jam, a one-day founder workshop: 21 founder skills and 4 sherpa skills. The day follows four stages (Understand, Focus, Build, Validate). Each founder picks one of four paths with their sherpa during Focus: product and positioning, GTM and growth, sales, or ops and automation. Commitments are 2 days, 2 weeks, and 2 months.

## Quick start

1. Run `./install.sh` (or install the `founder-jam` plugin, or upload `dist/founder-setup.zip` in the Claude apps).
2. Run `founder-setup` to capture your startup context and get a suggested path.
3. Follow your path in `PATHS.md`.

## Where things are

- `skills/<stage>/<skill>/SKILL.md`, where stage is understand, focus, build, validate, or sherpa. Each SKILL.md is a real file, and the skill's templates live in its folder.
- `PATHS.md`: the path map.
- `docs/claude-apps-guide.md`: uploading skills, adding the plugin, artifacts, connectors, ChatGPT notes.
- `.claude-plugin/`: plugin and marketplace manifests.
- `dist/`: one zip per skill, built by `./package-skills.sh`.
- `instructions/`: paste-in prompts for any plan.
- `starter-kit/`: two skills for founders working alone.

## Context

Skills run from the FOUNDER JAM HANDOFF block pasted in the chat. Each skill prints an updated block when it finishes. In Claude Code, an optional `config.json` (never committed) holds the same fields. If a skill has no context, it asks for what it needs.

## Rules for editing

- Every SKILL.md has frontmatter with `name` (equal to the folder name), `description`, and `license` (`CC-BY-4.0`, or `CC0-1.0` for third-party skills). `./package-skills.sh` enforces this.
- Every SKILL.md ends with the credit line. Third-party skills end with their own credit note plus the line.
- Keep Scott Murtaugh and GP Automations items labeled third-party under their own license. Don't relicense them.
- Skills augment the sherpas. They don't replace them.
- Free tools by default. Frameworks are cited in `ATTRIBUTION.md`.
- After editing a skill, run `./package-skills.sh` and `python3 starter-kit/build.py`, and commit the rebuilt zips.

## License

CC BY 4.0 from v2.0.0 (Drew Burdick, licensor). v1.x is CC0. Credit line:

Founder Jam curriculum and skills by Drew Burdick · program co-created with Innovate Charlotte · CC BY 4.0 · drewburdick.com/founderjam
