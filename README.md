# Founder Jam Skills Pack

A set of 19 Claude Code skills -- 10 for the workshop day, 9 for post-workshop growth operations -- for early-stage startup founders attending Founder Jam, a full-day workshop experience hosted by [Innovate Charlotte](https://www.innovatecharlotte.org/) and [StealthX](https://stealthx.co/). Two tracks (Product and Growth) guide founders from competitive analysis through prototyping or go-to-market strategy, with AI-powered tools at every step.

Learn more at [innovatecharlotte.org/founderjams](https://www.innovatecharlotte.org/founderjams).

## Quick Start

```bash
# 1. Clone and install
git clone https://github.com/stealthxco/founderjamskills.git
cd founderjamskills
./install.sh

# 2. Capture your startup context
# In Claude Code, run:
founder-setup

# 3. Follow your track (see Skill Map below)
```

Setup takes about 5 minutes. After running `founder-setup`, you're ready to start your track activities.

## Skill Map

| # | Skill | Track | When | What It Produces |
|---|-------|-------|------|-----------------|
| 1 | `founder-setup` | Both | Morning Kickoff | config.json + startup snapshot |
| 2 | `battle-card-builder` | Product | Activity 1 (9:30am) | SWOT + competitive battle cards |
| 3 | `hypothesis-engine` | Product | Activity 2 (11:00am) | Ranked hypotheses with validation plans |
| 4 | `prototype-launcher` | Product | Activity 3 (1:00pm) | Prototype artifacts (Lovable prompts, landing pages, etc.) |
| 5 | `icp-definer` | Growth | Part 1 (9:30am) | ICP cards + channel strategy |
| 6 | `offer-designer` | Growth | Part 2 (11:00am) | Lead magnet + 7-email nurture sequence |
| 7 | `growth-builder` | Growth | Part 3 (1:00pm) | Automation spec + 30-day plan |
| 8 | `market-analyzer` | Both | On-demand | TAM/SAM/SOM + competitive landscape |
| 9 | `pitch-builder` | Both | Share-Outs (4:00pm) | Talking points for end-of-day presentation |
| 10 | `validation-planner` | Both | Commitments (4:45pm) | 2D/2W/2M plan + Green/Yellow/Red decision gates |
| | | | | |
| 11 | `lead-magnet-ideator` | Growth | Post-Workshop | 5-7 scored lead magnet concepts with validation hooks |
| 12 | `testimonial-collector` | Both | Post-Workshop | Personalized testimonial request emails, collection tracker, champion activation plans |
| 13 | `show-rate-optimizer` | Growth | Post-Workshop | 3-email confirmation sequences, pre-call value notes, no-show recovery |
| 14 | `offer-architect` | Growth | Post-Workshop | Grand Slam packages with bonus stacking, guarantees, and upsell/downsell architecture |
| 15 | `nurture-engine` | Growth | Post-Workshop | Source-specific 7-email nurture sequences with give-to-ask ratio enforcement |
| 16 | `case-study-generator` | Both | Post-Workshop | Multi-format case study packages (website, blog, social, newsletter) |
| 17 | `seo-keyword-mapper` | Both | Post-Workshop | 6 Circles keyword maps, programmatic SEO templates, publishing roadmaps |
| 18 | `content-calendar-planner` | Both | Post-Workshop | Weekly/monthly content calendars with velocity rules and ratio tracking |
| 19 | `landing-page-auditor` | Both | Post-Workshop | 8-dimension page audits with prioritized fixes and A/B test variants |

## Two Ways to Use These Skills

### Claude Code (Full Experience)

Run `./install.sh` to symlink all skills into Claude Code. Invoke any skill by name. Skills read and write to a shared `config.json` so context flows between them automatically.

### Claude Desktop / Cowork (Simpler)

Run `./install.sh --lite` or browse the `instructions/` folder. Each file contains the activation prompt to paste into a new Claude conversation. No installation needed.

## Product Track Guide

**Who it's for:** Founders building products who want to validate their competitive position, sharpen their strategic hypothesis, and build a rapid prototype.

**Sequence:**

1. **`founder-setup`** -- Capture your startup context and get oriented
2. **`battle-card-builder`** -- SWOT self-assessment, identify 3-5 competitors (including "status quo"), generate battle cards with competitive intelligence
3. **`hypothesis-engine`** -- Diverge to 6-10 candidate hypotheses using thought starters, score on desirability/feasibility/viability, converge to top 2-3
4. **`prototype-launcher`** -- Select prototype type, generate artifacts (Lovable prompts, landing page copy, service blueprints, etc.)
5. **`pitch-builder`** -- Structure your 7-10 minute share-out with talking points
6. **`validation-planner`** -- Create your 2 Days / 2 Weeks / 2 Months commitment plan

Use `market-analyzer` any time you need competitive research or market sizing.

**Post-Workshop Extensions:** `testimonial-collector` (gather proof from early users), `case-study-generator` (turn wins into marketing assets), `landing-page-auditor` (optimize your prototype's landing page), `content-calendar-planner` (plan ongoing content), `seo-keyword-mapper` (find your organic search opportunities).

## Growth Track Guide

**Who it's for:** Founders focused on go-to-market strategy who want to define their ideal customer, design their offer, and build distribution automation.

**Sequence:**

1. **`founder-setup`** -- Capture your startup context and get oriented
2. **`icp-definer`** -- Define ICP via Jobs-to-be-Done, analyze competitor growth tactics, select 1-2 distribution channels
3. **`offer-designer`** -- Design lead magnet matched to business type, build content workflow, write 7-email nurture sequence
4. **`growth-builder`** -- Build one automation (sales enrichment or support), define North Star metric, create 30-day validation plan
5. **`pitch-builder`** -- Structure your 5-minute share-out with talking points
6. **`validation-planner`** -- Create your 2 Days / 2 Weeks / 2 Months commitment plan

Use `market-analyzer` any time you need competitive research or market sizing.

**Post-Workshop Extensions:** `lead-magnet-ideator` (brainstorm and score concepts before building with `offer-designer`), `offer-architect` (optimize your offer into a Grand Slam package), `nurture-engine` (build source-specific email sequences), `show-rate-optimizer` (maximize discovery call show rates), `testimonial-collector` (gather proof from early users), `case-study-generator` (turn wins into marketing assets), `content-calendar-planner` (plan ongoing content), `seo-keyword-mapper` (find organic search opportunities), `landing-page-auditor` (optimize your pages).

**Workflow progression:** `offer-designer` -> `offer-architect` (optimize into Grand Slam package). `lead-magnet-ideator` -> `seo-keyword-mapper` -> `content-calendar-planner` -> `case-study-generator` (proof assets). `testimonial-collector` and `show-rate-optimizer` can run independently at any time.

## After the Workshop

These skills work in solo mode too. In your `config.json`, set:

```json
{
  "facilitated_mode": false
}
```

This switches skills from workshop mode (with facilitator challenge prompts) to solo mode (more streamlined, less confrontational). Use the skills with real customer data, real competitor research, and real traction numbers.

The `validation-planner` output becomes your 30-day roadmap. Check back at the Green/Yellow/Red decision gates to know whether to persist, optimize, or pivot.

## Frameworks and Attribution

All frameworks referenced in these skills come from published sources. See [ATTRIBUTION.md](ATTRIBUTION.md) for full citations, including:

- Good Strategy / Bad Strategy (Richard Rumelt)
- Jobs-to-be-Done (Clayton Christensen)
- Customer Development (Steve Blank)
- Double Diamond (Design Council UK)
- $100M Offers / $100M Leads (Alex Hormozi)
- 6 Circles Method / Content Atomizer (James Dickerson)
- ACP Framework / Champion Activation (Greg Isenberg)

## More Resources

Want more tools, frameworks, and insights for founders? Subscribe to the **Building Great Experiences** newsletter for practical startup and product strategy content:

[greatexperiences.beehiiv.com/subscribe](https://greatexperiences.beehiiv.com/subscribe)

## About Founder Jam

Founder Jam is a full-day workshop experience for early-stage startup founders, hosted by Innovate Charlotte and StealthX.

**Innovate Charlotte** -- [innovatecharlotte.org](https://www.innovatecharlotte.org/) | [LinkedIn](https://www.linkedin.com/company/innovatecharlotte/) | [Instagram](https://www.instagram.com/innovateclt/)

**StealthX** -- [stealthx.co](https://stealthx.co/) | [LinkedIn](https://linkedin.com/company/stealthxco) | [Instagram](https://instagram.com/stealthxco)

Visit the [Founder Jam page](https://www.innovatecharlotte.org/founderjams) for upcoming events and registration.
