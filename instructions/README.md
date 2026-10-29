# Founder Jam paste-in prompts

These files let you run Founder Jam skills in any Claude chat, with no install and no files. Each one holds a prompt you copy into a new conversation. They work on any Claude plan, including Free.

If your plan has Skills turned on, uploading a skill is easier. Take a `.zip` from [`../dist/`](../dist/) and add it under Customize > Skills > + > Create skill > Upload a skill (older layout: Settings > Capabilities > Skills > Upload skill). See [`../docs/claude-apps-guide.md`](../docs/claude-apps-guide.md).

## How Founder Jam is organized

Founder Jam is one track with four paths. The day follows four stages: Understand, Focus, Build, Validate. You pick a path with your sherpa during Focus. The four paths are product and positioning, GTM and growth, sales, and ops and automation. You finish the day with 2-day, 2-week, and 2-month commitments.

A sherpa is a Founder Jam facilitator. If you are working alone, that's fine. Every skill defaults to solo mode.

## Carry your context with the handoff block

Chat windows don't share memory, so the skills pass your context in a FOUNDER JAM HANDOFF block. Run `founder-setup.md` first. It prints the block. Paste the block at the start of each later prompt. Each prompt ends by printing an updated block, so paste the newest one into the next prompt.

```
FOUNDER JAM HANDOFF
version: 2
startup_name:
mode: solo | with-sherpa
path: product-positioning | gtm-growth | sales | ops-automation | undecided
stage: idea | pre-revenue | early-revenue
problem_statement:
target_market:
team_size:
traction:
business_type: b2b-saas | services | marketplace | consumer
icp_segment:
top_pains:
hypothesis_selected:
channels_selected:
lead_magnet:
outbound_system:
published_pages:
```

Leave a field empty when you don't know it. A partial block is fine, and Claude will ask for the rest. Here, `stage` is your startup's stage, not a Founder Jam stage.

## Prompts by stage

| Stage | File | Time | What you get |
|-------|------|------|--------------|
| Understand | `founder-setup.md` | 15 min | Startup snapshot, suggested path, handoff block |
| Understand | `market-analyzer.md` | 20-40 min | Market size, competitive map, channel opportunities |
| Understand | `battle-card-builder.md` | 75 min | SWOT and a battle card per competitor |
| Focus | `icp-definer.md` | 75 min | Beachhead customer and 1-2 channels |
| Focus | [`lead-magnet-ideator.md`](../starter-kit/paste-in/lead-magnet-ideator.md) | 40 min | 5-7 scored lead magnet ideas |
| Focus | `hypothesis-engine.md` | 75 min | Ranked hypotheses with validation commitments |
| Build | `prototype-launcher.md` | 120 min | A prototype and a test plan |
| Build | `offer-designer.md` | 75 min | Lead magnet, capture workflow, 7-email nurture sequence |
| Build | `growth-builder.md` | 120 min | One automation, a North Star metric, a 30-day plan |
| Build | `outbound-composer.md` | 60-90 min | Outbound system (third-party skill) |
| Build | `page-launcher.md` | 25-45 min | A page ready to publish (third-party skill) |
| Validate | `validation-planner.md` | 15 min | Your 2-day, 2-week, 2-month commitments |
| Validate | `pitch-builder.md` | 20-30 min | Talking points for the share-out |

The other skills in the pack (offer-architect, nurture-engine, seo-keyword-mapper, content-calendar-planner, show-rate-optimizer, landing-page-auditor, case-study-generator, testimonial-collector, and the four sherpa skills) have no paste-in prompt. Upload their zips from `dist/` or use Claude Code.

## Which prompts for which path

Everyone starts with `founder-setup.md` and ends with `validation-planner.md` and `pitch-builder.md`. In between, lean on these. See [`../PATHS.md`](../PATHS.md) for the full map.

| Path | Understand | Focus | Build |
|------|------------|-------|-------|
| Product and positioning | `battle-card-builder.md`, `market-analyzer.md` | `hypothesis-engine.md`, `icp-definer.md` | `prototype-launcher.md` |
| GTM and growth | `market-analyzer.md`, `battle-card-builder.md` | `icp-definer.md`, `lead-magnet-ideator.md` | `offer-designer.md`, `growth-builder.md` |
| Sales | `market-analyzer.md`, `battle-card-builder.md` | `icp-definer.md`, `hypothesis-engine.md` | `outbound-composer.md` |
| Ops and automation | `market-analyzer.md` | `hypothesis-engine.md` | `growth-builder.md`, `prototype-launcher.md` |

## Using Claude Code instead

If you have [Claude Code](https://docs.anthropic.com/en/docs/claude-code/overview), install the `founder-jam` plugin or run `./install.sh` from the repository root, then type a skill name such as `founder-setup`. Skills run from the same handoff block. An optional `config.json` can hold the same fields. See the repository README.

## Tips

- Save your outputs. Copy key results (your customer, your hypothesis) into your handoff block.
- Be specific. The more detail you give, the more useful the outputs.
- Push back. If an output feels generic, say so. "That's too broad" or "make it specific to my industry" works.
- Paste into Miro. Outputs are markdown tables and cards that paste cleanly into a board.

## More resources

Subscribe to the Building Great Experiences newsletter: [greatexperiences.beehiiv.com/subscribe](https://greatexperiences.beehiiv.com/subscribe)

Founder Jam is a one-day workshop co-created by Drew Burdick and [Innovate Charlotte](https://www.innovatecharlotte.org/). Upcoming events: [innovatecharlotte.org/founderjams](https://www.innovatecharlotte.org/founderjams).

---

Founder Jam curriculum and skills by Drew Burdick · program co-created with Innovate Charlotte · CC BY 4.0 · drewburdick.com/founderjam
