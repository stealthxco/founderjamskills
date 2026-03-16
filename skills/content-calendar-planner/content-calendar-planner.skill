---
name: content-calendar-planner
description: Plan and schedule content across all channels (blog, social, newsletter, email) with publishing velocity rules, Isenberg's validation cascade, and Hormozi's give-to-ask ratio enforcement. Turns keyword maps and content ideas into a phased, trackable publishing calendar.
---

# Content Calendar Planner Skill

## Overview

Turn keyword maps, content ideas, and case study packages into a structured publishing calendar across all channels. Instead of ad-hoc content creation, maintain a systematic cadence that compounds over time.

Key capabilities:
- Build weekly and monthly content calendars across all channels
- Enforce publishing velocity rules (steady cadence, not bulk dumps)
- Apply Hormozi's give-to-ask ratio across the content mix
- Implement Isenberg's validation cascade as a pre-production gate
- Track content pipeline status from idea through publication
- Identify content gaps by service area, customer segment, and funnel stage

## Config Dependencies

**Reads from `config.json`:**
- `startup_name` -- company name for content branding
- `icp_segment` -- target customer for gap analysis
- `business_type` -- service model for content type selection
- `facilitated_mode` -- enables challenge prompts

**Optional config fields:**
- `service_areas` -- array of service offerings for coverage tracking
- `newsletter_name` -- for newsletter scheduling
- `content_channels` -- array of active channels (e.g., ["blog", "linkedin", "newsletter", "email"])

**Writes:** Nothing (output is presented for review and manual saving)

## Channel Cadence Framework

### Blog / Website

**Acceleration cadence:** 3-5 posts per week (first 90 days of content push)
**Steady state:** 2-3 posts per week

**Content types by phase:**

| Phase | Timeline | Content Type | Source |
|-------|----------|-------------|--------|
| Phase 1 | Weeks 1-3 | Companion blog posts for existing case studies | case-study-generator output |
| Phase 2 | Weeks 3-6 | Framework and thought leadership deep-dives | Keyword map Tier 1 topics |
| Phase 3 | Weeks 4-8 | Programmatic SEO pages | seo-keyword-mapper templates |
| Ongoing | Week 4+ | Content derivatives | Atomized from core content |

**Velocity rules (Dickerson):**
- Never publish all content at once
- Maximum 2 programmatic pages on the same day
- Space blog posts at least 1 day apart
- Batch-create content, then schedule over weeks

### Social Media (LinkedIn, X, etc.)

**Target cadence:** 3-5 posts per week

**Format mix:**

| Format | Frequency | Purpose |
|--------|-----------|---------|
| Story > Insight | 2x/week | Case study derivatives, engagement stories |
| Framework/Tactical | 1-2x/week | Teach a specific methodology |
| Hot Take | 1x/week | Bold opinion backed by experience |
| Validation test | As needed | Short post testing a new topic |

### Newsletter

**Target cadence:** Weekly

**Planning horizon:** Assign topics 2-4 weeks in advance

### Email Nurture

**Cadence:** Governed by nurture-engine sequences

**Dependency tracking:** If a nurture email references a blog post or case study, that content must be published at least 3 days before the email sends.

## Give-to-Ask Ratio Enforcement (Hormozi)

Apply these ratios across all content:

| Channel | Target Ratio | What Counts as "Give" | What Counts as "Ask" |
|---------|-------------|----------------------|---------------------|
| Blog | 3:1 per post | Teaching, frameworks, insights | CTA to assessment, call, or download |
| Social | 10:1 across posts | Value posts, stories, frameworks | Posts promoting services or packages |
| Newsletter | 3.5:1 per issue | Teaching sections, actionable insights | CTA sections, service mentions |
| Overall monthly mix | 3.5:1 minimum | All value content | All promotional content |

**Ratio check process:**
1. Tag every content piece as "give," "ask," or "bridge" (soft transition)
2. Calculate ratio for each week and month
3. Flag if ratio drops below 3.5:1 in any channel
4. Adjust by swapping an ask for a give or adding a value piece

**Bridge content** counts as 0.5 ask. Example: teaching with a service mention.

## Validation Cascade Integration (Isenberg)

Before scheduling high-investment content, route through the cascade:

```
## Validation Cascade: [Topic]

Stage 1: Social media one-liner
- Date posted: YYYY-MM-DD
- Engagement: [reactions/comments]
- Verdict: [Proceed / Kill]

Stage 2: Full social post
- Date posted: YYYY-MM-DD
- Engagement: [reactions/comments/saves]
- Verdict: [Proceed / Kill]

Stage 3: Blog post production
- Assigned to calendar: YYYY-MM-DD

Stage 4: Amplification
- Newsletter issue: YYYY-MM-DD
- Paid promotion: [Y/N]
```

**Exception:** Case study companion posts and programmatic pages skip the cascade.

## Content Pipeline Stages

| Stage | Definition |
|-------|-----------|
| **Idea** | Topic identified from keyword map, conversation, or brainstorm |
| **Validating** | Running through validation cascade |
| **Briefed** | Content brief written with keyword targets and structure |
| **Drafting** | First draft in progress |
| **Reviewing** | Draft complete, awaiting human review |
| **Scheduled** | Approved and assigned a publish date |
| **Published** | Live |
| **Atomized** | Derivatives created and scheduled across channels |

## Content Gap Analysis

### By Service Area

| Service Area | Blog Posts | Case Studies | Social Posts | Newsletter Mentions | Gap Level |
|-------------|-----------|-------------|-------------|--------------------| ----------|
| [area] | X | X | X | X | [Full / Partial / Gap] |

### By Funnel Stage

| Stage | Content Types Needed | Current Count | Gap? |
|-------|---------------------|--------------|------|
| Awareness | Blog, social, SEO pages | X | [Y/N] |
| Consideration | Case studies, comparison pages, frameworks | X | [Y/N] |
| Decision | Testimonials, package pages, ROI content | X | [Y/N] |
| Retention | Newsletter, check-in content | X | [Y/N] |

### By Customer Segment

| Segment | Content Targeting Them | Gap? |
|---------|----------------------|------|
| [from icp_segment] | X pieces | [Y/N] |

## Calendar Output Format

```
## Content Calendar: [Period]
**Generated:** YYYY-MM-DD
**Give-to-Ask Ratio:** X:1

### Week of [Date]

| Day | Channel | Type | Topic/Title | Status | Keyword Target | Give/Ask | Source |
|-----|---------|------|-------------|--------|---------------|----------|--------|
| Mon | Blog | Case Study Companion | "How We [result]..." | Scheduled | [keyword] | Give | case-study-generator |
| Mon | Social | Story > Insight | [hook] | Drafting | -- | Give | -- |
| Tue | Newsletter | Issue #X | [theme] | Briefed | -- | Give | -- |
| Wed | Blog | Framework | [topic] | Validating | [keyword] | Give | seo-keyword-mapper |
| Thu | Social | Tactical | [hook] | Idea | -- | Give | -- |
| Fri | Social | Validation Test | [one-liner] | Idea | -- | Give | -- |

### Dependencies
- [Blog post X] must publish before [nurture email Y] sends on [date]

### Ratio Check
- Gives: X | Bridges: X (0.5 ask each) | Asks: X
- Ratio: X:1
- Status: [On target / Below threshold]
```

## Pipeline Tracker

```
## Content Pipeline Tracker
**Last updated:** YYYY-MM-DD

### Pipeline Summary
| Stage | Count |
|-------|-------|
| Ideas | X |
| Validating | X |
| Briefed | X |
| Drafting | X |
| Reviewing | X |
| Scheduled | X |
| Published (this month) | X |

### Monthly Publishing Velocity
| Month | Blog | Social | Newsletter | Programmatic | Total |
|-------|------|--------|------------|-------------|-------|
| [Month] | X | X | X | X | X |

### Give-to-Ask Ratio (Monthly)
| Month | Gives | Bridges | Asks | Ratio |
|-------|-------|---------|------|-------|
| [Month] | X | X | X | X:1 |
```

## Workflow

1. **Specify period** -- "next week," "March," "Q2," etc.
2. **Assess inventory** -- Count available content by pipeline stage
3. **Build the calendar** -- Schedule Tier 1 keyword content first, fill with case studies and derivatives
4. **Validate ratio** -- Calculate give-to-ask ratio, adjust if below 3.5:1
5. **Check dependencies** -- Ensure referenced content exists before emails send
6. **Track** -- Update pipeline tracker

## Facilitated Mode

When `facilitated_mode: true`, add these challenge prompts:

- "How many blog posts do you have right now? How many completed engagements? The gap between those numbers is your content backlog."
- "What's your current publishing cadence? If the answer is 'random,' that's the first thing to fix."
- "If you could only publish on one channel for the next 30 days, which one would drive the most pipeline?"
- "What's your give-to-ask ratio right now? If you don't know, you're probably asking too much."

## Constraints

- Never schedule content that doesn't exist yet without identifying the source
- Never exceed the give-to-ask ratio threshold
- Never schedule programmatic pages faster than 2/day
- Never publish content that hasn't been through a human review
- Never schedule newsletter issues without a confirmed theme

## Works Well With

- If using `seo-keyword-mapper`: keyword maps provide the topic inventory for blog and programmatic content
- If using `case-study-generator`: case study packages provide blog companions, social posts, and newsletter sections
- If using `nurture-engine`: nurture emails reference published content -- the calendar tracks dependencies
- If using `lead-magnet-ideator`: new lead magnets need landing pages and promotional content scheduled

## Platform Notes

| Platform | How to Use |
|----------|-----------|
| **Claude Code** | Full experience. Run as a skill with config.json in the working directory |
| **Claude Desktop** | Paste the skill content as a Project instruction. Specify the planning period |
| **Claude Cowork** | Add as a source document. Paste your current content inventory for best results |
