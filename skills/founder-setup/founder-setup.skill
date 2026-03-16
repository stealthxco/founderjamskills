---
name: founder-setup
description: Capture your startup context for Founder Jam. Creates config.json used by all other skills. Includes AI enablement basics and optional problem-solution fit scoring.
---

# Founder Setup

Capture your startup context and prepare for a productive Founder Jam session. This skill creates a local `config.json` that all other skills read, so you only enter your startup details once.

## Overview

This is the first skill you run at Founder Jam. It walks you through:
1. Startup context capture (name, stage, problem, market, traction)
2. Track selection (Product or Growth) with a recommendation based on your stage
3. Brief AI enablement module (prompting basics, tool tips)
4. Optional problem-solution fit scorer

**Time estimate:** 15-20 minutes

## Process

### Step 1: Startup Context Intake

Ask the founder each question conversationally. Don't dump a form -- ask one at a time, acknowledge each answer, and build on it.

**Questions to ask (in order):**

1. "What's your startup called?"
   -> `startup_name`

2. "In one sentence, what problem does [startup_name] solve?"
   -> `problem_statement`

3. "Who has this problem? Be as specific as you can -- job title, company size, industry, or demographic."
   -> `target_market`

4. "Where are you right now?"
   - Idea stage: you have a concept but no product or customers
   - Pre-revenue: you have a product or prototype but no paying customers
   - Early-revenue: you have paying customers but haven't found repeatable growth
   -> `stage`

5. "How many people are working on this (including you)?"
   -> `team_size`

6. "What traction do you have so far? Users, revenue, waitlist signups, letters of intent -- anything counts."
   -> `traction`

7. "What type of business is this?"
   - B2B SaaS
   - Services (consulting, agency, freelance)
   - Marketplace (two-sided)
   - Consumer (B2C app, product, or service)
   -> `business_type`

### Step 2: Track Selection

Based on the founder's answers, recommend a track:

**Recommend Product Track if:**
- Stage is "idea" or early "pre-revenue"
- Problem statement is still broad or untested
- No clear competitive positioning yet
- Founder says "I need to figure out what to build"

**Recommend Growth Track if:**
- Stage is "pre-revenue" or "early-revenue"
- Has a product or prototype already
- Needs customers, distribution, or go-to-market
- Founder says "I need to get customers" or "I need to grow"

Present the recommendation with rationale, but let the founder choose:

```
Based on what you've shared, I'd recommend the **[Product/Growth] Track** because [1-sentence reason].

Product Track: Competitive analysis -> Strategic hypothesis -> Rapid prototype
Growth Track: ICP definition -> Offer design -> Go-to-market automation

Which track do you want? (You can always use skills from the other track too.)
```

-> `track`

### Step 3: AI Enablement (Brief)

Share these three tips for getting the most out of AI tools during the workshop:

**Tip 1: Give context, not just commands.**
Instead of "write me a landing page," say "write a landing page for [startup_name] targeting [target_market] who struggle with [problem]. The tone should be [direct/friendly/technical]."

**Tip 2: Push back on the output.**
If something doesn't sound right, say so. "That's too generic" or "make it more specific to [industry]" or "I don't agree with point 3, here's why..." The AI gets better when you challenge it.

**Tip 3: Use it as a thinking partner, not an answer machine.**
The best outputs come from conversation. Share what you know, what you're unsure about, and what you've tried before. The AI can help you think through problems, not just generate text.

### Step 4: Write Config

Write the collected data to `config.json` in the repo root:

```json
{
  "startup_name": "[collected]",
  "track": "[selected]",
  "stage": "[collected]",
  "problem_statement": "[collected]",
  "target_market": "[collected]",
  "team_size": [collected],
  "traction": "[collected]",
  "facilitated_mode": true,
  "icp_segment": "",
  "hypothesis_selected": "",
  "channels_selected": [],
  "lead_magnet": "",
  "business_type": "[collected]"
}
```

### Step 5: Startup Snapshot Summary

Present a summary of the collected context:

```
## [startup_name] - Founder Jam Snapshot

**Problem:** [problem_statement]
**Market:** [target_market]
**Stage:** [stage]
**Team:** [team_size] people
**Traction:** [traction]
**Business Type:** [business_type]
**Track:** [track]

### Your Day at Founder Jam

[If Product Track:]
1. Battle Card Builder - Map your competitive landscape
2. Hypothesis Engine - Generate and select your top strategic hypothesis
3. Prototype Launcher - Build a rapid prototype of your solution
4. Pitch Builder - Prepare your share-out
5. Validation Planner - Create your 30-day commitment plan

[If Growth Track:]
1. ICP Definer - Define your ideal customer and distribution strategy
2. Offer Designer - Design your lead magnet and nurture sequence
3. Growth Builder - Build automation and your 30-day plan
4. Pitch Builder - Prepare your share-out
5. Validation Planner - Create your 30-day commitment plan

### Focus Areas for Today
[Generate 3 specific focus areas based on stage, traction, and track]
```

### Step 6: Optional Problem-Solution Fit Score

If the founder wants a quick gut-check before diving in, offer a problem-solution fit assessment:

"Want a quick reality check on your problem-solution fit before we dive into the day? It takes 2 minutes."

If yes, score on three dimensions (1-5 each):

| Dimension | Score | Assessment |
|-----------|-------|------------|
| **Specificity** | 1-5 | Is the problem specific enough to build for? (1 = vague, 5 = precise) |
| **Market Size** | 1-5 | Is the target market large enough to matter? (1 = tiny niche, 5 = massive) |
| **Founder-Problem Fit** | 1-5 | Does this founder have unfair insight into this problem? (1 = no connection, 5 = lived it) |

For any score below 3, flag it as an area to sharpen during the day's activities.

## Facilitated Mode

When `facilitated_mode` is true (default during workshop), add these challenge prompts at natural moments:

- After problem statement: "Is the problem painful enough that someone would pay today to solve it?"
- After target market: "Who has this problem the worst? Are you building for them?"
- After traction: "What have you already tried to validate this?"

When `facilitated_mode` is false (solo mode after workshop), skip challenge prompts and run the intake efficiently.

## Config Dependencies

**Reads:** Nothing (this is the first skill)
**Writes:** All fields in config.json

## Platform Notes

| Platform | Behavior |
|----------|----------|
| Claude Code | Full flow: writes config.json to disk |
| Claude Desktop | Collects all info conversationally; outputs startup snapshot as text (no file write) |
| Claude Cowork | Same as Desktop |
