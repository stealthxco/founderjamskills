---
name: cohort-prep
description: Pre-event prep for sherpas. Ingest a cohort roster, build a briefing card per startup with predicted sticking points by path, suggest sherpa assignments, and make a Miro checklist.
license: CC-BY-4.0
---

# Cohort Prep

Pre-event skill for sherpas. Run this before each Founder Jam to review the cohort, surface predicted sticking points, and prepare your table setup. The day follows four stages (Understand, Focus, Build, Validate) and each founder picks one of four paths with their sherpa during Focus.

## Overview

This skill walks through:
1. Roster ingestion (text, CSV, or JSON)
2. Per-startup briefing card generation
3. Sherpa assignment suggestions
4. Miro board setup checklist

**When to run:** 24-48 hours before the event.

## Process

### Step 1: Ingest roster

Accept cohort data in any of these formats:

**Pasted text:** Ask the sherpa to paste startup details. Parse freeform. Extract: startup name, founder names, problem statement, stage, business type, and the focus area they chose on the application (their likely path).

**CSV or JSON:** Accept structured input directly.

**Founder handoff blocks:** If a founder shares their FOUNDER JAM HANDOFF block (the format is defined in the `founder-setup` skill), read `startup_name`, `path`, `stage`, `business_type`, `problem_statement`, `icp_segment`, `hypothesis_selected`, `lead_magnet`, `outbound_system`, `channels_selected`, and `published_pages` from it instead of asking.

**Required fields per startup:**
- `startup_name`
- `founder_names` (one or more)
- `problem_statement` (1-2 sentences)
- `stage` (Idea / Pre-Revenue / Early-Revenue)
- `business_type` (B2B SaaS / Services / Marketplace / Consumer)
- `path` (product and positioning / GTM and growth / sales / ops and automation / undecided)

**Optional fields:**
- `traction` (users, revenue, waitlist, LOIs)
- `team_size`
- `notes` (anything unusual or flagged by organizers)

If any required field is missing, ask for it before proceeding.

### Step 2: Generate briefing cards

For each startup, produce a briefing card using the `templates/cohort-briefing-card.md` format.

**Auto-predict sticking points based on stage + business type + path:**

| Condition | Predicted Sticking Points |
|-----------|--------------------------|
| Idea stage | Will struggle with specificity in hypothesis; may not have real competitor data; may over-index on solution instead of problem |
| Pre-revenue, product and positioning | Will resist narrowing ICP to one segment; may want to over-engineer prototype instead of building minimum artifact |
| Pre-revenue, GTM and growth or sales | Will have no baseline data for metrics; may struggle with lead magnet format selection |
| Early-revenue, product and positioning | Will resist pivoting what's "working"; hypothesis may be too incremental |
| Early-revenue, GTM and growth or sales | May under-invest in automation ("I'll just do it manually"); will struggle defining North Star vs. vanity metrics |
| Ops and automation | May want custom code when a simple workflow would test the idea; may automate a process they haven't mapped yet |
| B2B SaaS | Competitive data is available but dense; may spend too long on battle cards |
| Services | ICP is often vague ("any business"); push for job title and company size specificity |
| Marketplace | Two-sided ICP problem, push them to choose one side for the day |
| Consumer | Distribution channel selection is hardest; may lack budget for paid; needs organic channel plan |

**Recommended emphasis areas:** Flag which stage of the day (Understand, Focus, Build, or Validate) will likely need extra time for this startup. Reference `templates/session-pacing-guide.md`.

### Step 3: Suggest sherpa assignments

If sherpa names and domains are provided, suggest assignments based on:

1. **Domain expertise match**: Pair sherpas with startups in adjacent industries or similar business models.
2. **Business type match**: B2B SaaS startups benefit from sherpas with software or sales backgrounds; Services from operational experience.
3. **Table size balance**: Distribute startups evenly. No sherpa should have more than 2 startups unless the cohort is small.

Output suggested assignments as a table:

```
| Startup | Path | Stage | Suggested Sherpa | Rationale |
|---------|-------|-------|----------------------|-----------|
```

If sherpa roster is not provided, skip this step and note it as a manual action item.

### Step 4: Miro board setup checklist

Build one board layout for the whole cohort with four stage columns: Understand, Focus, Build, Validate. Founders pick their path in Focus, so pre-load the shared frames for every table and keep the path frames ready to drop in.

**All tables (shared frames):**
- [ ] Startup name on each frame header
- [ ] Sherpa name in corner
- [ ] Timer sticky note (15/30-minute blocks)
- [ ] Understand: SWOT template (2x2 grid, labeled) and battle card frames (one per competitor, 4-5 frames)
- [ ] Focus: path picker frame listing the four paths with one line on each
- [ ] Validate: validation planner template (2 days / 2 weeks / 2 months) and share-out notes frame
- [ ] Color coding applied: blue = competitive and customer data, yellow = hypotheses and decisions, orange = offer and content, green = prototype and build artifacts

**Path frames (ready to drop in once the founder chooses):**
- [ ] Product and positioning: hypothesis workspace (diverge zone + converge zone with effort/impact matrix) and prototype build space (open canvas with sticky note palette)
- [ ] GTM and growth: ICP canvas (Jobs-to-be-Done template), competitive growth matrix (channel analysis grid), lead magnet brainstorm frame (format options pre-listed), 30-day plan grid (4 weeks x 5 rows), North Star metric tracker
- [ ] Sales: ICP canvas, first-100-prospects list frame, sequence drafts frame, call tracker
- [ ] Ops and automation: manual-time audit table, workflow diagram space (node mapping area), North Star metric tracker

### Step 5: Output summary

After processing all startups, present a cohort overview:

```
## Cohort overview: [Event date]

**Total Startups:** N
**Path Distribution:** N product and positioning / N GTM and growth / N sales / N ops and automation / N undecided
**Stage Distribution:** N Idea / N Pre-Revenue / N Early-Revenue

### Common themes
[2-3 patterns across the cohort, e.g., "3 of 5 startups are services businesses with vague ICPs"]

### Predicted high-attention startups
[List startups that will likely need the most sherpa intervention, with reason]

### Top risks for the day
[2-3 cohort-level risks, e.g., "Most startups are idea-stage, expect slow battle card research phase"]

### Sherpa assignments
[Table from Step 3, or "Manual assignment needed"]
```

## Context

**Reads:** Nothing (pre-event). Roster details come from the sherpa, the application form, or founders' handoff blocks.
**Writes:** Nothing (informational only). Sherpas may save output manually.

## Where this runs

| Where | What happens |
|-------|--------------|
| claude.ai or Claude desktop (skill uploaded) | Full flow. Output is text in the chat; copy what you want to keep. |
| Claude Code | Full flow. May write a file on request. |

---

Founder Jam curriculum and skills by Drew Burdick · program co-created with Innovate Charlotte · CC BY 4.0 · drewburdick.com/founderjam
