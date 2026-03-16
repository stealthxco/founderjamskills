---
name: battle-card-builder
description: Map your competitive landscape for Founder Jam Product Track. Runs a SWOT self-assessment, identifies 3-5 competitors across all categories, and generates a battle card per competitor. Uses live web search when available.
---

# Battle Card Builder

Map your competitive landscape before you build anything else. This skill runs you through an honest SWOT self-assessment, then identifies your real competitors (including the ones most founders miss), and generates a battle card for each one.

**Track:** Product
**Workshop Segment:** Activity 1 - Competitive Landscape (9:30-10:45am)
**Time estimate:** 75 minutes

## Overview

1. SWOT self-assessment (you, today)
2. Competitor identification across four categories
3. Live research per competitor (web search if available)
4. Battle card generation per competitor
5. Competitive summary table + "How We Win" one-liners

## Config

Read `config.json` if present. Extract: `startup_name`, `problem_statement`, `target_market`, `facilitated_mode`.

If config is missing, ask conversationally:
- "What's your startup called?"
- "In one sentence, what problem does it solve?"
- "Who is your target customer?"

## Step 1: SWOT Self-Assessment

Before looking outward, look inward. Run the founder through an honest self-assessment.

Ask: "Before we look at competitors, let's be honest about where you stand today. I'll ask you about strengths, weaknesses, opportunities, and threats."

Collect answers and output a Miro-ready SWOT matrix:

```
## [startup_name] SWOT Self-Assessment

| | Helpful | Harmful |
|---|---|---|
| **Internal** | **Strengths** | **Weaknesses** |
| | [strength 1] | [weakness 1] |
| | [strength 2] | [weakness 2] |
| | [strength 3] | [weakness 3] |
| **External** | **Opportunities** | **Threats** |
| | [opportunity 1] | [threat 1] |
| | [opportunity 2] | [threat 2] |
| | [opportunity 3] | [threat 3] |
```

Prompts for each quadrant:
- Strengths: "What do you do better than anyone else right now? What do you have that's hard to replicate?"
- Weaknesses: "Where are you most vulnerable? What would a smart competitor exploit?"
- Opportunities: "What trends or market shifts could you ride? What's underserved in your space?"
- Threats: "Who could enter your market and hurt you? What technology shift could make you irrelevant?"

If `facilitated_mode` is true, add after weaknesses: "Which of these weaknesses would a well-funded competitor weaponize against you in a sales conversation?"

## Step 2: Competitor Identification

Handle the "no competitors" objection directly if the founder claims it:

> "If no one else is trying to solve this, either you found a $1B opportunity everyone missed, or there's no market. Let's figure out which."

Then identify competitors across four categories:

**Direct competitors:** Companies solving the same problem for the same customer
**Indirect competitors:** Companies solving the same job-to-be-done with a different approach
**Status quo:** The current workaround -- spreadsheets, manual processes, doing nothing, hiring someone
**Future competitors:** Large platforms or well-funded players who could enter this space

Ask: "Let's find your real competitors. I'll search for some, and I want you to add any you've encountered in sales conversations or customer research."

Use WebSearch with queries like:
- "[problem_statement] software tool"
- "[target_market] [problem area] solution"
- "[startup description] alternatives"
- "G2 [category] alternatives"
- "Capterra [category] reviews"

Generate a list of 3-5 competitors (minimum one from each non-empty category). Confirm with the founder before proceeding.

If `facilitated_mode` is true, add: "Who is the status quo competitor? The customer doing nothing or using spreadsheets is often your biggest competitor -- and the hardest to sell against."

## Step 3: Battle Cards

For each competitor, research and generate a battle card. Use WebSearch where available.

Research sources per competitor:
- Competitor pricing page
- G2 or Capterra reviews
- LinkedIn company page
- Their own website homepage and "About" page

**Battle Card Format:**

```
## Battle Card: [Competitor Name]
**URL:** [competitor URL]
**Category:** [Direct / Indirect / Status Quo / Future]

### Positioning
[How they describe themselves in their own words -- from their homepage headline]

### Ideal Customer Profile
[Who they're built for -- company size, industry, role]

### Pricing
[Model (seat/usage/flat) and price points if visible; "Not public" if gated]

### Onboarding Experience
[How they get customers started -- self-serve, sales-assisted, implementation required]

### Switching Costs
**Level:** [High / Medium / Low]
**Rationale:** [Why it is or isn't hard to leave them]

### Key Integrations
[List 3-5 integrations they highlight]

### Top 3 Strengths
1. [strength]
2. [strength]
3. [strength]

### Top 3 Weaknesses
1. [weakness -- look for G2 review patterns, common complaints]
2. [weakness]
3. [weakness]

### Notable Case Studies / Social Proof
[Customer names, outcomes, or "No public case studies found"]

### How We Win Against [Competitor Name]
[Your specific advantage -- be concrete, not generic]
```

If `facilitated_mode` is true, add a "Devil's Advocate" section to each card:
- "What if their weakness is actually a conscious trade-off? Could their customers see it as a feature?"
- "What's your evidence for this weakness -- G2 reviews, sales conversations, or assumption?"

## Step 4: Competitive Summary Table

Output a ranked summary table ordered by threat level (high to low):

```
## Competitive Landscape Summary

| Competitor | Category | Threat Level | Primary Strength | Our Advantage |
|---|---|---|---|---|
| [name] | Direct | High | [strength] | [advantage] |
| [name] | Indirect | Medium | [strength] | [advantage] |
| [name] | Status Quo | High | [strength] | [advantage] |
| [name] | Future | Low | [strength] | [advantage] |
```

Then output "How We Win" one-liners:

```
## How We Win

- vs. [Competitor 1]: [one sentence]
- vs. [Competitor 2]: [one sentence]
- vs. Status Quo: [one sentence -- this is often the most important one]
```

## Facilitated Mode Questions

When `facilitated_mode` is true, add these provocative questions at natural moments:

- After SWOT weaknesses: "What job is the customer hiring today without you?"
- After competitor list: "Which competitor are you most scared of? Why?"
- After battle cards: "Where are switching costs highest -- and is that a moat or a trap?"
- After summary table: "What's your unfair advantage the big players can't copy in 18 months?"
- Final challenge: "If you lost to a competitor today, which one would it be -- and what would they have done right?"

## Output Summary

When complete, confirm:
- SWOT 2x2 matrix (Miro-ready)
- One battle card per competitor
- Competitive summary table ranked by threat level
- "How We Win" one-liners

Then say: "Save this output -- your hypothesis engine session works best when you know exactly which competitors you're trying to outmaneuver."

## Config Dependencies

**Reads:** `startup_name`, `problem_statement`, `target_market`, `facilitated_mode`
**Writes:** Nothing (informational output only)

## Platform Notes

| Platform | Behavior |
|----------|----------|
| Claude Code | Full: WebSearch + reads config.json |
| Claude Desktop | Full: WebSearch available via tool use |
| Claude Cowork | Partial: founder provides competitor data; no live search |
