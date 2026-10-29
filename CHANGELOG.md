# Changelog

## 2.0.0 (unreleased)

Founder Jam moves to one track with four paths.

### Changed

- The skills are grouped by the four stages of the day (Understand, Focus, Build, Validate) under `skills/<stage>/<skill>/`. The v1 Product and Growth tracks are replaced by paths that founders pick with their sherpa during Focus: product and positioning, GTM and growth, sales, and ops and automation. See `PATHS.md`.
- Every skill defaults to solo mode, asks whether a sherpa is with the founder, and works from a pasted FOUNDER JAM HANDOFF block. `config.json` is optional and only used in Claude Code.
- Every SKILL.md is a real file with the templates it needs bundled in its folder. The v1 symlinks are gone.
- `founder-setup` suggests a path and prints the handoff block. `validation-planner` and `pitch-builder` use the 2-day, 2-week, 2-month commitments.
- `README.md`, `CLAUDE.md`, and `install.sh` are rewritten for the new layout. `install.sh` replaces stale v1 links, takes `--no-sherpa`, and only removes links it created.

### Added

- Four sherpa skills in `skills/sherpa/`: `cohort-prep`, `intervention-guide`, `cohort-debrief`, `follow-up-generator`. They moved in from the separate facilitators repository.
- A Claude plugin: `.claude-plugin/plugin.json` and `.claude-plugin/marketplace.json`. This repository is a marketplace. Add it with `/plugin marketplace add stealthxco/founderjamskills`, then install `founder-jam@founder-jam-skills`.
- One installable zip per skill in `dist/`. Each has a single top-level folder with a real SKILL.md, templates, LICENSE, and CREDIT.txt.
- `docs/claude-apps-guide.md`: uploading skills, adding the plugin, prototyping with artifacts in claude.ai and Claude desktop, research with Google Drive, Gmail, and Notion connectors, and ChatGPT side notes.
- An optional "build a clickable artifact" step in `prototype-launcher`, and optional connector research steps in `founder-setup`, `market-analyzer`, `battle-card-builder`, and `icp-definer`.
- `PATHS.md`, the path map.
- `CHANGELOG.md`.

### Licensing

- Version 2.0.0 and later is licensed by Drew Burdick under CC BY 4.0. `LICENSE` holds the full legal text and the credit line.
- Version 1.x (tag `v1.0.0`) stays under CC0 1.0. The CC0 text is in `licenses/CC0-1.0.txt`.
- The sherpa skills were CC BY-NC-SA 4.0 in their separate repository. The author relicensed them as CC BY 4.0 for v2.
- `outbound-composer` and `page-launcher` are third-party skills by Scott Murtaugh of GP Automations. They keep CC0 1.0 and are not relicensed. See `ATTRIBUTION.md`.
- The credit line for all material is "Founder Jam curriculum and skills by Drew Burdick · program co-created with Innovate Charlotte · CC BY 4.0 · drewburdick.com/founderjam".

### Upgrading from v1

Run `./install.sh` again. It replaces the old links in `~/.claude/skills/` that pointed at `skills/<name>`. If you use the plugin, run `claude plugin marketplace update founder-jam-skills` in your shell.
