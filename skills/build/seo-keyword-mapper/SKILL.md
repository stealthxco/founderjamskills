---
name: seo-keyword-mapper
description: Map keyword opportunities using Dickerson's 6 Circles Method, generate programmatic SEO templates, apply Isenberg's validation cascade to prioritize topics, and build a publishing roadmap.
---

# SEO Keyword Mapper Skill

## Overview

Turn your service areas, client pain points, and competitive positioning into a prioritized keyword strategy. Instead of guessing what to write about, systematically map every keyword opportunity, validate topics before committing resources, and generate programmatic page templates at scale.

Key capabilities:
- Map keyword opportunities across all 6 circles for any service area
- Generate programmatic SEO templates for scalable page creation
- Apply Isenberg's validation cascade to test topics before full production
- Prioritize keywords using Hormozi's "starving crowd" filter
- Score keywords on volume, competition, intent alignment, and customer fit
- Build a phased publishing roadmap with velocity guidance

## Config Dependencies

**Reads from `config.json`:**
- `startup_name` -- company name for page titles
- `icp_segment` -- target customer for ICP fit scoring
- `business_type` -- service model for keyword selection
- `facilitated_mode` -- enables challenge prompts

**Optional config fields:**
- `service_areas` -- array of service offerings (drives Circle 1)
- `industries_served` -- array of target industries (drives programmatic templates)

**Writes:** Nothing (output is presented for review and manual saving)

## The 6 Circles Method (Dickerson)

Every keyword opportunity exists in one of six circles. Map all six before writing a single word.

### Circle 1: What You Sell

Core service keywords. Most competitive but most directly commercial.

| Service Area | Primary Keywords | Long-Tail Variants |
|-------------|-----------------|-------------------|
| [from config or input] | [2-3 primary terms] | [3-5 long-tail phrases] |

### Circle 2: Problems You Solve

Client pain points, stated in their language (not yours). High intent because searchers are looking for solutions.

| Problem Category | Keywords (Client Language) | Search Intent |
|-----------------|--------------------------|--------------|
| [category] | [terms prospects actually search] | [informational / commercial / transactional] |

**Tip:** Use language from actual sales conversations, support tickets, and client calls. Not your marketing copy.

### Circle 3: Outcomes You Deliver

Result-oriented keywords. Connect to case studies and social proof.

| Outcome | Keywords | Case Study to Link |
|---------|---------|-------------------|
| [measurable result] | [search terms] | [matching proof asset] |

### Circle 4: Unique Positioning

Differentiation keywords. Lower volume but higher conversion.

| Differentiator | Keywords | Content Angle |
|---------------|---------|--------------|
| [what makes you different] | [terms] | [how to write about this] |

### Circle 5: Adjacent Topics

Related interest areas your ICP searches for, even when not actively buying.

| Adjacent Topic | Keywords | Bridge to Your Services |
|---------------|---------|------------------------|
| [related topic your ICP cares about] | [terms] | [how this connects to services] |

### Circle 6: Entities to Associate

Brand association keywords. People, companies, tools, and methodologies you want to appear alongside in search.

| Entity Type | Entities | Content Strategy |
|------------|---------|-----------------|
| Competitor names | [firms] | Comparison content, "vs" pages |
| Technology platforms | [tools] | Integration and expertise content |
| Methodologies | [frameworks] | Application and adaptation content |

## Keyword Scoring Framework

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
- 20-25: Tier 1 -- Write immediately
- 15-19: Tier 2 -- Write in Phase 2
- 10-14: Tier 3 -- Programmatic pages or later
- Below 10: Skip or monitor

### Starving Crowd Filter (Hormozi)

After scoring, apply this filter to top keywords:

| Filter | Question | Kill If.. |
|--------|----------|-----------|
| Pain Intensity | How much is this costing the searcher? | Low urgency, nice-to-have |
| Purchasing Power | Can the searcher actually pay? | Individual contributors, bootstrapped startups below your price point |
| Decision Speed | Can they move in 30-60 days? | Long procurement cycles you can't serve |
| Willingness | Is budget allocated? | "Free" intent, pure DIY seekers |

## Programmatic SEO Templates (Dickerson)

Generate pages at scale using template patterns.

### Template 1: `[Service] for [Industry]`

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

### Template 2: `[Service] for [Role]`

```
URL pattern: /services/[service-slug]-for-[role-slug]
Title pattern: "[Service] for [Role]s | [startup_name]"
```

### Template 3: `[Tool/Approach] vs [Tool/Approach]`

```
URL pattern: /insights/[thing-a]-vs-[thing-b]
Title pattern: "[Thing A] vs [Thing B]: Which Is Right for [ICP]?"
```

### Template 4: `Best [Solution] for [Use Case]`

```
URL pattern: /insights/best-[solution]-for-[use-case]
Title pattern: "Best [Solution] for [Use Case] | [startup_name]"
```

### Publishing Velocity Rules (Dickerson)

- Publish 3-5 pages per week, NOT all at once
- Velocity signals matter to search engines
- Steady cadence signals a healthy, growing site
- Maximum 2 programmatic pages on the same day
- Batch-create content, then schedule publication over weeks

## Validation Cascade (Isenberg)

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

## Human Checkpoint Checklist (Dickerson)

Before publishing ANY page:

- [ ] All claims fact-checked
- [ ] All links verified working
- [ ] Unique perspective or expertise added (not generic advice)
- [ ] AI language tells removed ("delve," "landscape," "paradigm," "tapestry," "navigate")
- [ ] Passes the test: "Would you send this to a client?"
- [ ] CTA present and contextually relevant

## Output Format

```
## Keyword Map: [Service Area]
**Last updated:** YYYY-MM-DD

### Circle 1-6
[tables for each circle]

### Scoring Summary
| Keyword | Vol | Comp | Intent | ICP | Conv | Total | Tier | Starving Crowd? |
|---------|-----|------|--------|-----|------|-------|------|-----------------|
[sorted by total score descending]

### Programmatic Opportunities
[template patterns and estimated page counts]

### Recommended Publishing Order
[prioritized list with rationale]
```

## Workflow

1. **Select service area** -- Specific area or "all" to map everything
2. **Map all 6 circles** -- Populate with specific keywords using client language
3. **Score and prioritize** -- Apply 5-dimension scoring + starving crowd filter
4. **Generate programmatic templates** -- For Tier 3 keywords
5. **Build publishing roadmap** -- Phased plan respecting velocity rules
6. **Track** -- Maintain keyword tracker with coverage and performance data

## Facilitated Mode

When `facilitated_mode: true`, add these challenge prompts:

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

## Works Well With

- If using `content-calendar-planner`: keyword maps feed directly into the content calendar
- If using `case-study-generator`: Circle 3 keywords map to specific case studies for blog posts
- If using `lead-magnet-ideator`: Circle 2 and Circle 5 feed lead magnet concept generation
- If using `landing-page-auditor`: programmatic pages should be audited after creation

## Platform Notes

| Platform | How to Use |
|----------|-----------|
| **Claude Code** | Full experience. Run as a skill with config.json in the working directory |
| **Claude Desktop** | Paste the skill content as a Project instruction. Specify the service area to map |
| **Claude Cowork** | Add as a source document. Works best when you paste your service descriptions and client pain points |
