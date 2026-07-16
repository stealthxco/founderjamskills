# Installable Skill Files (Claude Desktop / claude.ai)

Each `.zip` in this folder is one Founder Jam skill, packaged so you can upload it
straight into the **Claude desktop app** or **claude.ai** — no Claude Code, no terminal,
no cloning required.

## Install a skill (2 minutes)

1. Download the `.zip` for the skill you want (click the file above, then **Download raw file**).
2. Open **Claude Desktop** (or **claude.ai** in a browser).
3. Go to **Settings → Capabilities → Skills**.
4. Click **Upload skill** and choose the `.zip` you downloaded.
5. Start a new chat and ask for it by name, e.g. *"Run founder-setup"* or *"Use the icp-definer skill."*

Repeat for each skill you want. Start with **`founder-setup.zip`** — the other skills build on the context it captures.

> **Heads up:** Uploading custom Skills requires a **Pro, Max, Team, or Enterprise** plan with
> code execution enabled. On the Free plan, use the paste-in prompts in [`../instructions/`](../instructions/) instead — same skills, no upload needed.

## What's in each zip

Every zip contains one folder with a `SKILL.md` inside it. That's the whole skill — self-contained, nothing else to install.

## The skills

**Start here**
- `founder-setup.zip` — capture your startup context (run this first)

**Product Track** (build a prototype)
- `battle-card-builder.zip` · `hypothesis-engine.zip` · `prototype-launcher.zip`

**Growth Track** (go-to-market)
- `icp-definer.zip` · `offer-designer.zip` · `growth-builder.zip`

**Wrap-up (both tracks)**
- `pitch-builder.zip` · `validation-planner.zip`

**Any time**
- `market-analyzer.zip`

**Growth operations (post-workshop)**
- `lead-magnet-ideator.zip` · `testimonial-collector.zip` · `show-rate-optimizer.zip`
- `offer-architect.zip` · `nurture-engine.zip` · `case-study-generator.zip`
- `seo-keyword-mapper.zip` · `content-calendar-planner.zip` · `landing-page-auditor.zip`
- `outbound-composer.zip` — turn founder-led selling into an outbound system

**Claude Code only**
- `page-launcher.zip` — publishes live pages via agentpub.io and needs shell access, so it only runs fully in Claude Code. The zip installs on Desktop for reference, but use it in Claude Code for the live-publish flow.

## Rebuilding these zips

Maintainers: after editing any skill, regenerate every zip with:

```bash
./package-skills.sh
```

Run from the repo root. The script validates each skill's frontmatter and rebuilds `dist/*.zip`.

## Other ways to use these skills

- **Claude Code:** run `./install.sh` from the repo root (symlinks all skills into `~/.claude/skills/`).
- **Any plan / no upload:** copy the activation prompts in [`../instructions/`](../instructions/) into a chat.
