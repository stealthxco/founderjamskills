---
name: cohort-debrief
description: Post-event cohort debrief for sherpas. Collect per-startup notes, build a summary card per startup, find patterns across paths and stages, and capture improvements. Use within 24 hours of the event.
license: CC-BY-4.0
---

# Cohort Debrief

Post-event skill for sherpas. Run this after each Founder Jam event to document what each startup built, assess output quality, and surface patterns and improvements for the next cohort.

## Overview

This skill walks through:
1. Per-startup notes collection
2. Summary card generation
3. Cohort-level pattern aggregation
4. Improvement recommendations for the next event

**When to run:** Same day as the event, while observations are fresh. Within 24 hours at the latest.

## Process

### Step 1: Collect per-startup notes

For each startup in the cohort, ask the sherpa these questions conversationally. Do not dump all questions at once, ask one topic at a time, acknowledge each answer, and move forward.

**Questions (in order):**

If a founder shared their FOUNDER JAM HANDOFF block (the format is defined in the `founder-setup` skill), read the answers it already holds (`startup_name`, `path`, `icp_segment`, `hypothesis_selected`, `lead_magnet`, `outbound_system`, `channels_selected`) and confirm them instead of asking again.

1. "What startup are we debriefing?"
   -> `startup_name`

2. "Which path did they pick in Focus? (product and positioning, GTM and growth, sales, or ops and automation)"
   -> `path`

3. "What did they commit to? Walk me through their 2-day, 2-week, and 2-month commitments from the validation planner."
   -> `commitments[]`

4. "What hypothesis or ICP did they select, and why did they choose it over the alternatives?"
   -> `hypothesis_or_icp`

5. "What did they build? (For example a prototype, a lead magnet and sequence, an outbound system, or an automation.)"
   -> `artifact_built`

6. "Which channels did they select for distribution?"
   -> `channels_selected[]`

7. "If they set one: what is their North Star metric and target number?"
   -> `north_star_metric`, `north_star_target`

8. "How was their energy level? (High / Medium / Low)"
   -> `energy_level`

9. "How engaged were they? (Active / Passive / Resistant)"
   -> `engagement`

10. "How was the quality of output? (Strong / Adequate / Needs Work)"
    -> `output_quality`

11. "What was the biggest win at this table today?"
    -> `biggest_win`

12. "What's the biggest risk that could derail this startup over the next 30 days?"
    -> `biggest_risk`

Collect data for all startups before generating cards.

### Step 2: Generate summary cards

For each startup, produce a debrief card using the `templates/debrief-template.md` format.

Fill all fields from the collected notes. Do not leave template placeholders unfilled, if data is missing, note "Not captured" rather than leaving a bracket.

### Step 3: Aggregate cohort insights

After all individual cards are complete, analyze patterns across the cohort:

**Distribution analysis:**
- Path split (N product and positioning / N GTM and growth / N sales / N ops and automation)
- Stage distribution (Idea / Pre-Revenue / Early-Revenue)
- Business type distribution (B2B SaaS / Services / Marketplace / Consumer)

**Selection patterns:**
- Most common ICP segments chosen (by industry, job title, or demographic)
- Most common channels selected
- Distribution of prototype types (service journey / GTM / pricing / sales story / feature mock)
- Distribution of lead magnet types (template / checklist / calculator / audit / mini-course / swipe file)
- Most common North Star metrics selected

**Output quality correlation:**
- How did output quality correlate with stage? (e.g., "Early-revenue startups produced stronger prototypes")
- How did output quality correlate with path?
- Which business types produced the most thorough outputs?

**Example output format:**
```
3 of 5 startups on the GTM and growth path chose LinkedIn as primary channel.
2 of 3 startups on the product and positioning path built landing page prototypes.
Idea-stage startups scored lower on output quality across the board, hypotheses were too broad.
```

### Step 4: Improvement suggestions

Based on sherpa notes and cohort patterns, produce a structured improvement report:

**Activities that ran long or short:**
- Flag any activity that consistently overran or underran based on sherpa notes
- Suggest pacing adjustments for `templates/session-pacing-guide.md`

**Frameworks that confused founders:**
- Flag any framework that required repeated re-explanation
- Suggest simplification or a different framing

**Tools that caused friction:**
- Flag any tool (N8N, Miro, AI APIs) that created delays or confusion
- Suggest alternatives or pre-event setup steps to reduce friction

**What to change for the next event:**
- Produce a short, prioritized list (3-5 items) of the highest-leverage changes
- Format: "Change [X] because [Y] happened with [N] startups"

### Step 5: Output package

Produce the full output in this order:

1. **Per-startup debrief cards** (one per startup)
2. **Cohort summary** (aggregated patterns)
3. **Improvement report** (actionable changes for next event)

Ask if the sherpa wants to save this output to a file. If yes (Claude Code only), offer to write to `[YYYY-MM-DD]-cohort-debrief.md` in the current directory.

## Context

**Reads:** Nothing.
**Writes:** Optional: `[YYYY-MM-DD]-cohort-debrief.md` (Claude Code only, on request).

## Where this runs

| Where | What happens |
|-------|--------------|
| claude.ai or Claude desktop (skill uploaded) | Full flow. Output is text in the chat; copy what you want to keep. |
| Claude Code | Full flow. May write a file on request. |

---

Founder Jam curriculum and skills by Drew Burdick · program co-created with Innovate Charlotte · CC BY 4.0 · drewburdick.com/founderjam
