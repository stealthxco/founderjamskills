---
name: cohort-prep
description: Pre-event preparation. Ingest a cohort roster, generate per-startup briefing cards, suggest facilitator assignments, and create a Miro board setup checklist. Covers both Product and Growth track startups.
---

# Cohort Prep

Pre-event skill for facilitators. Run this before each Founder Jam event to review the cohort, surface predicted sticking points, and prepare your table setup.

## Overview

This skill walks through:
1. Roster ingestion (text, CSV, or JSON)
2. Per-startup briefing card generation
3. Facilitator assignment suggestions
4. Miro board setup checklist

**When to run:** 24-48 hours before the event.

## Process

### Step 1: Ingest Roster

Accept cohort data in any of these formats:

**Pasted text:** Ask the facilitator to paste startup details. Parse freeform. Extract: startup name, founder names, problem statement, stage, business type, track selection.

**CSV or JSON:** Accept structured input directly.

**Required fields per startup:**
- `startup_name`
- `founder_names` (one or more)
- `problem_statement` (1-2 sentences)
- `stage` (Idea / Pre-Revenue / Early-Revenue)
- `business_type` (B2B SaaS / Services / Marketplace / Consumer)
- `track` (Product / Growth)

**Optional fields:**
- `traction` (users, revenue, waitlist, LOIs)
- `team_size`
- `notes` (anything unusual or flagged by organizers)

If any required field is missing, ask for it before proceeding.

### Step 2: Generate Briefing Cards

For each startup, produce a briefing card using the `templates/cohort-briefing-card.md` format.

**Auto-predict sticking points based on stage + business type + track:**

| Condition | Predicted Sticking Points |
|-----------|--------------------------|
| Idea stage | Will struggle with specificity in hypothesis; may not have real competitor data; may over-index on solution instead of problem |
| Pre-revenue (Product) | Will resist narrowing ICP to one segment; may want to over-engineer prototype instead of building minimum artifact |
| Pre-revenue (Growth) | Will have no baseline data for metrics; may struggle with lead magnet format selection |
| Early-revenue (Product) | Will resist pivoting what's "working"; hypothesis may be too incremental |
| Early-revenue (Growth) | May under-invest in automation ("I'll just do it manually"); will struggle defining North Star vs. vanity metrics |
| B2B SaaS | Competitive data is available but dense; may spend too long on battle cards |
| Services | ICP is often vague ("any business"); push for job title and company size specificity |
| Marketplace | Two-sided ICP problem -- push them to choose one side for the day |
| Consumer | Distribution channel selection is hardest; may lack budget for paid; needs organic channel plan |

**Recommended emphasis areas:** Flag which activity in the day's agenda will likely need extra time for this startup. Reference `templates/session-pacing-guide.md`.

### Step 3: Suggest Facilitator Assignments

If facilitator names and domains are provided, suggest assignments based on:

1. **Domain expertise match** -- Pair facilitators with startups in adjacent industries or similar business models.
2. **Business type match** -- B2B SaaS startups benefit from facilitators with software or sales backgrounds; Services from operational experience.
3. **Table size balance** -- Distribute startups evenly. No facilitator should have more than 2 startups unless the cohort is small.

Output suggested assignments as a table:

```
| Startup | Track | Stage | Suggested Facilitator | Rationale |
|---------|-------|-------|----------------------|-----------|
```

If facilitator roster is not provided, skip this step and note it as a manual action item.

### Step 4: Miro Board Setup Checklist

Generate a per-table checklist for Miro setup:

**Product Track tables:**
- [ ] SWOT template pre-loaded (2x2 grid, labeled)
- [ ] Battle card frames created (one per competitor, 4-5 frames)
- [ ] Hypothesis workspace (diverge zone + converge zone with effort/impact matrix)
- [ ] Prototype build space (open canvas with sticky note palette)
- [ ] Validation planner template (2 days / 2 weeks / 2 months)
- [ ] Color coding applied: blue = competitive data, yellow = hypotheses, green = prototype artifacts

**Growth Track tables:**
- [ ] ICP canvas pre-loaded (Jobs-to-be-Done template)
- [ ] Competitive growth matrix (channel analysis grid)
- [ ] Lead magnet brainstorm frame (format options pre-listed)
- [ ] Workflow diagram space (N8N node mapping area)
- [ ] 30-day plan grid (4 weeks x 5 rows)
- [ ] North Star metric tracker (large number + supporting metrics)
- [ ] Color coding applied: blue = ICP/competitive data, orange = offer/content, green = automation/build

**All tables:**
- [ ] Startup name on each frame header
- [ ] Facilitator name in corner
- [ ] Timer sticky note (15/30-minute blocks)

### Step 5: Output Summary

After processing all startups, present a cohort overview:

```
## Cohort Overview: [Event Date]

**Total Startups:** N
**Track Distribution:** N Product / N Growth
**Stage Distribution:** N Idea / N Pre-Revenue / N Early-Revenue

### Common Themes
[2-3 patterns across the cohort -- e.g., "3 of 5 startups are services businesses with vague ICPs"]

### Predicted High-Attention Startups
[List startups that will likely need the most facilitator intervention, with reason]

### Top Risks for the Day
[2-3 cohort-level risks -- e.g., "Most startups are idea-stage, expect slow battle card research phase"]

### Facilitator Assignments
[Table from Step 3, or "Manual assignment needed"]
```

## Config

**Reads:** Nothing (pre-event).
**Writes:** Nothing (informational only). Facilitators may save output manually.

## Platform Notes

| Platform | Behavior |
|----------|----------|
| Claude Code | Full output in terminal; facilitator copies to doc or Miro |
| Claude Desktop | Same output conversationally |
| Claude Cowork | Same as Desktop |
