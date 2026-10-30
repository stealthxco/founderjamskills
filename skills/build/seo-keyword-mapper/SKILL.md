---
name: seo-keyword-mapper
description: Map keyword opportunities with Dickerson's 6 Circles, generate programmatic SEO templates, prioritize topics, and build a publishing roadmap. Build stage, GTM and growth path when search is a channel.
license: CC-BY-4.0
---

# SEO Keyword Mapper Skill

**Stage:** Build. **Best for paths:** GTM and growth.

## Overview

Turn your service areas, client pain points, and competitive positioning into a prioritized keyword strategy. Instead of guessing what to write about, systematically map every keyword opportunity, validate topics before committing resources, and generate programmatic page templates at scale.

Key capabilities:
- Map keyword opportunities across all 6 circles for any service area
- Generate programmatic SEO templates for scalable page creation
- Apply Isenberg's validation cascade to test topics before full production
- Prioritize keywords using Hormozi's "starving crowd" filter
- Score keywords on volume, competition, intent alignment, and customer fit
- Build a phased publishing roadmap with velocity guidance

## Context

Get context from a FOUNDER JAM HANDOFF block pasted in the chat (the format is defined in `founder-setup`). If you are running in Claude Code with file access, `config.json` in the working directory works too. Ask for anything that is missing, one question at a time.

Sherpa check: if `mode` is missing or empty, ask once, "Is a sherpa with you today?" Default to solo. With a sherpa, add this skill's challenge prompts. Solo, skip them.

**Read from the handoff block:**
- `startup_name`: company name for page titles
- `icp_segment`: target customer for ICP fit scoring
- `business_type`: service model for keyword selection
- `mode`: `with-sherpa` adds challenge prompts

**Optional details (not in the handoff block, ask if useful):**
- `service_areas`: array of service offerings (drives Circle 1)
- `industries_served`: array of target industries (drives programmatic templates)

**Writes:** No new handoff fields. Prints the latest handoff block at the end (see Handoff). Other output is presented for review and manual saving.

## The 6 Circles method (Dickerson)

Every keyword opportunity exists in one of six circles. Map all six before writing a single word.

### Circle 1: What you sell

Core service keywords. Most competitive but most directly commercial.

| Service Area | Primary Keywords | Long-Tail Variants |
|-------------|-----------------|-------------------|
| [from the handoff block or input] | [2-3 primary terms] | [3-5 long-tail phrases] |

### Circle 2: Problems you solve

Client pain points, stated in their language (not yours). High intent because searchers are looking for solutions.

| Problem Category | Keywords (Client Language) | Search Intent |
|-----------------|--------------------------|--------------|
| [category] | [terms prospects actually search] | [informational / commercial / transactional] |

**Tip:** Use language from actual sales conversations, support tickets, and client calls. Not your marketing copy.

### Circle 3: Outcomes you deliver

Result-oriented keywords. Connect to case studies and social proof.

| Outcome | Keywords | Case Study to Link |
|---------|---------|-------------------|
| [measurable result] | [search terms] | [matching proof asset] |

### Circle 4: Unique positioning

Differentiation keywords. Lower volume but higher conversion.

| Differentiator | Keywords | Content Angle |
|---------------|---------|--------------|
| [what makes you different] | [terms] | [how to write about this] |

### Circle 5: Adjacent topics

Related interest areas your ICP searches for, even when not actively buying.

| Adjacent Topic | Keywords | Bridge to Your Services |
|---------------|---------|------------------------|
| [related topic your ICP cares about] | [terms] | [how this connects to services] |

### Circle 6: Entities to associate

Brand association keywords. People, companies, tools, and methodologies you want to appear alongside in search.

| Entity Type | Entities | Content Strategy |
|------------|---------|-----------------|
| Competitor names | [firms] | Comparison content, "vs" pages |
| Technology platforms | [tools] | Integration and expertise content |
| Methodologies | [frameworks] | Application and adaptation content |

## Keyword scoring framework

Score every keyword on 5 dimensions (1-5 each):

| Dimension | What It Measures | High Score (5) | Low Score (1) |
|-----------|-----------------|---------------|--------------|
| **Volume** | Monthly search volume | 1,000+ searches/month | <50 searches/month |
| **Competition** | Difficulty to rank | Low competition, few quality results | Dominated by high-authority sites |
| **Intent Alignment** | Match to your services | Searcher wants exactly what you offer | Tangentially related |
| **ICP Fit** | Attracts the right buyer? | Decision-makers at target companies | Wrong role, wrong company size |
| **Conversion Potential** | Closeness to buying decision | Bottom-of-funnel, evaluating partners | Top-of-funnel, months from purchase |

**Composite Score:** Volume + (Competition inverted) + Intent Alignment + ICP Fit + Conversion Potential

**Priority tiers:**
- 20-25: Tier 1, Write immediately
- 15-19: Tier 2, Write in Phase 2
- 10-14: Tier 3, Programmatic pages or later
- Below 10: Skip or monitor

### Starving Crowd filter (Hormozi)

After scoring, apply this filter to top keywords:

| Filter | Question | Kill If.. |
|--------|----------|-----------|
| Pain Intensity | How much is this costing the searcher? | Low urgency, nice-to-have |
| Purchasing Power | Can the searcher actually pay? | Individual contributors, bootstrapped startups below your price point |
| Decision Speed | Can they move in 30-60 days? | Long procurement cycles you can't serve |
| Willingness | Is budget allocated? | "Free" intent, pure DIY seekers |

## Programmatic SEO templates (Dickerson)

Generate pages at scale using template patterns.

### Template 1: `[Service] for [industry]`

```
URL pattern: /services/[service-slug]-for-[industry-slug]
Title pattern: "[Service] for [Industry] Companies | [startup_name]"
H1 pattern: "[Service] for [Industry]: [Outcome in specific terms]"
```

Content outline per page:
1. Industry-specific pain points (Circle 2 keywords)
2. How you approach this industry (Circle 4 keywords)
3. Relevant case study (Circle 3 keywords)
4. CTA to assessment or strategy call

### Template 2: `[Service] for [role]`

```
URL pattern: /services/[service-slug]-for-[role-slug]
Title pattern: "[Service] for [Role]s | [startup_name]"
```

### Template 3: `[tool/approach] vs [tool/approach]`

```
URL pattern: /insights/[thing-a]-vs-[thing-b]
Title pattern: "[Thing A] vs [Thing B]: Which Is Right for [ICP]?"
```

### Template 4: `Best [solution] for [use case]`

```
URL pattern: /insights/best-[solution]-for-[use-case]
Title pattern: "Best [Solution] for [Use Case] | [startup_name]"
```

### Publishing velocity rules (Dickerson)

- Publish 3-5 pages per week, NOT all at once
- Velocity signals matter to search engines
- Steady cadence signals a healthy, growing site
- Maximum 2 programmatic pages on the same day
- Batch-create content, then schedule publication over weeks

## Validation cascade (Isenberg)

Before committing to a full blog post or page, validate the topic:

```
Stage 1: Social media one-liner (1 day)
  Test: Does anyone engage?
  Kill threshold: Minimal engagement
    |
    v
Stage 2: Full social post (2-3 days)
  Test: Does the expanded version resonate?
  Kill threshold: Below your average engagement
    |
    v
Stage 3: Blog post or newsletter section (1 week)
  Test: Does long-form content on this topic perform?
  Metrics: Time on page, conversions, email captures
    |
    v
Stage 4: Amplify via newsletter + paid (ongoing)
  Only for validated winners
```

**Exception:** Programmatic pages skip the cascade. Validate the template pattern, not individual pages.

## Human checkpoint checklist (Dickerson)

Before publishing ANY page:

- [ ] All claims fact-checked
- [ ] All links verified working
- [ ] Unique perspective or expertise added (not generic advice)
- [ ] AI language tells removed ("delve," "landscape," "paradigm," "tapestry," "navigate")
- [ ] Passes the test: "Would you send this to a client?"
- [ ] CTA present and contextually relevant

## Output format

```
## Keyword map: [Service area]
**Last updated:** YYYY-MM-DD

### Circle 1-6
[tables for each circle]

### Scoring summary
| Keyword | Vol | Comp | Intent | ICP | Conv | Total | Tier | Starving Crowd? |
|---------|-----|------|--------|-----|------|-------|------|-----------------|
[sorted by total score descending]

### Programmatic opportunities
[template patterns and estimated page counts]

### Recommended publishing order
[prioritized list with rationale]
```

## Workflow

1. **Select service area**: Specific area or "all" to map everything
2. **Map all 6 circles**: Populate with specific keywords using client language
3. **Score and prioritize**: Apply 5-dimension scoring + starving crowd filter
4. **Generate programmatic templates**: For Tier 3 keywords
5. **Build publishing roadmap**: Phased plan respecting velocity rules
6. **Track**: Maintain keyword tracker with coverage and performance data

## Sherpa mode

When `mode` is `with-sherpa`, add these challenge prompts:

- "What do your clients literally type into Google when they're looking for someone like you? That's Circle 2."
- "What's the one result you deliver that makes clients say 'wow'? Build Circle 3 around that."
- "Name 3 competitors. Now check: do they rank for the same keywords you're targeting? If yes, find different ones."
- "If you could only rank #1 for one keyword, which one would drive the most revenue? Start there."

## Constraints

- Never publish content without running the human checkpoint checklist
- Never create programmatic pages that are thin or duplicate
- Never prioritize volume over quality
- Never skip the validation cascade for high-investment content
- Never fabricate search volume data. Use available tools or flag as estimated

## Works well with

- If using `content-calendar-planner`: keyword maps feed directly into the content calendar
- If using `case-study-generator`: Circle 3 keywords map to specific case studies for blog posts
- If using `lead-magnet-ideator`: Circle 2 and Circle 5 feed lead magnet concept generation
- If using `landing-page-auditor`: programmatic pages should be audited after creation

## Handoff

When you finish, print the full FOUNDER JAM HANDOFF block (format: `founder-setup`) in a code fence. This skill adds no field of its own. Fill in any FOUNDER JAM HANDOFF fields you collected during this session (never add keys the format does not define), and keep every other field as you received it. Tell the founder to copy the block and paste it into the next skill. If you are running in Claude Code with file access and a Founder Jam `config.json` (one with `startup_name` and `path` keys) already exists in the working directory, update the fields you collected and leave every other key as it is. Never create `config.json` in another project or overwrite a file that is not a Founder Jam config.

## Where this runs

| Where | What happens |
|-------|--------------|
| claude.ai or Claude desktop (skill uploaded) | Full flow. Paste your handoff block at the start. Save any output you want to keep. |
| Claude Code | Full flow. Can also read and write `config.json`. |

---

Founder Jam curriculum and skills by Drew Burdick · program co-created with Innovate Charlotte · CC BY 4.0 · drewburdick.com/founderjam
