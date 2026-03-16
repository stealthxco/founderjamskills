---
name: pitch-builder
description: Structure your end-of-day share-out at Founder Jam. Track-aware: Product Track (7-10 min) or Growth Track (5 min). Generates talking points, not scripts. Iterative refinement section by section.
---

# Pitch Builder

Structure your end-of-day presentation in 20-30 minutes. Generates talking points -- not a script -- so your delivery stays natural and founder-authentic. Works through each section iteratively before moving to the next.

## Overview

This skill is track-aware. It detects your track from config and runs the right format automatically.

- **Product Track:** 7-10 minute presentation (5 sections)
- **Growth Track:** 5 minute presentation (4 sections)

**Time estimate:** 20-30 minutes at workshop

## Process

### Step 1: Load Config

Read `config.json` if it exists. Extract:
- `track` (product/growth) -- determines output mode
- `startup_name` -- personalizes output
- `facilitated_mode` -- adds or removes coach prompts
- Also read for context: `hypothesis_selected`, `icp_segment`, `lead_magnet`, `channels_selected`

If config is missing, ask:
1. "What track are you on -- Product or Growth?"
2. "What's your startup name?"
3. "Give me a one-sentence summary of what you built or figured out today."

### Step 2: Brief Context Capture

Before building the pitch, gather what happened during the day. Ask conversationally (one question at a time, build on each answer):

**If Product Track:**
1. "What were the most interesting things you learned about your competitive landscape?"
2. "What hypothesis did you end up choosing -- and what made it the winner over the others?"
3. "What did you prototype? Walk me through what it is and how it works."
4. "What surprised you most today? What would you do differently?"
5. "What specific help do you need from this cohort?"

**If Growth Track:**
1. "Who is your beachhead customer -- be specific. What's the JTBD statement you landed on?"
2. "What's your lead magnet and what did you build today (nurture sequence, automation, or content workflow)?"
3. "What are your concrete 30-day commitments? Give me the numbers."
4. "What specific help do you need from this room?"

### Step 3: Build Pitch Section by Section

Work through each section iteratively. After drafting each section, ask: "Does this capture it? Anything to adjust before we move on?"

---

**PRODUCT TRACK FORMAT (7-10 minutes)**

**Section 1: Competitive Landscape Findings (90 seconds)**

Generate talking points covering:
- What the founder learned about the market
- Who the real competitors are (including status quo)
- One key insight that shifted their thinking

Draft format:
```
## Section 1: Competitive Landscape (90s)

- [Key market insight in plain language]
- [The competitors that matter most, and why]
- [The one thing that surprised you about the landscape]
```

**Section 2: Hypothesis Selection (90 seconds)**

Generate talking points covering:
- What hypothesis they chose
- What they rejected and why
- Why this one is the right bet right now

Draft format:
```
## Section 2: Hypothesis Selection (90s)

- [The chosen hypothesis in one sentence]
- [What you rejected and the brief reason]
- [Why this is the right focus -- what makes it worth testing]
```

**Section 3: Prototype Demo (3-4 minutes)**

Generate talking points for a live walkthrough:
- What the prototype is (type + format)
- The one user journey to show
- What assumption is being tested

Draft format:
```
## Section 3: Prototype Demo (3-4 min)

- [What it is, in one sentence an 8-year-old could understand]
- [The user journey: start here -> do this -> get this outcome]
- [What assumption you're testing with this prototype]
- [One specific thing you want feedback on]
```

**Section 4: Key Learnings (60 seconds)**

Generate talking points covering:
- What surprised them
- What they would do differently with a full day
- What they now know that they didn't know this morning

Draft format:
```
## Section 4: Key Learnings (60s)

- [What surprised you most]
- [What you'd do differently]
- [What you now know that changes your next move]
```

**Section 5: One Ask (30 seconds)**

Generate a single, specific ask. Push for specificity -- not "any feedback welcome" but a real request.

Draft format:
```
## Section 5: One Ask (30s)

- [The specific ask -- a connection, a challenge, a resource, a beta tester]
- [Why this is the thing that would move you forward most this week]
```

---

**GROWTH TRACK FORMAT (5 minutes)**

**Section 1: ICP and Offer (60 seconds)**

Generate talking points covering:
- Beachhead customer (specific, not broad)
- Lead magnet type and title
- Why this ICP and this offer are the right combination

Draft format:
```
## Section 1: ICP & Offer (60s)

- [Beachhead customer: who they are, what triggers their need]
- [Lead magnet: type + title + the one outcome it delivers]
- [Why this pairing -- the connection between ICP pain and offer value]
```

**Section 2: What You Built (90 seconds)**

Generate talking points covering:
- What was built today (nurture sequence, automation, or content workflow)
- How it works end-to-end in plain language
- Tools used

Draft format:
```
## Section 2: What You Built (90s)

- [What you built: type + format]
- [How it works: trigger -> action -> outcome, in plain language]
- [Tools: [free tools] + [optional paid enhancements if applicable]]
```

**Section 3: 30-Day Plan (90 seconds)**

Generate talking points with real numbers. Push for specificity.

Draft format:
```
## Section 3: 30-Day Plan (90s)

- [Week 1 commitment: specific action + specific number]
- [Week 2 commitment: specific action + specific number]
- [North Star metric: the one number that will tell you if it's working]
- [Decision rule: what Green/Yellow/Red looks like at Day 30]
```

**Section 4: One Ask (60 seconds)**

Generate a single, specific ask from this room.

Draft format:
```
## Section 4: One Ask (60s)

- [The specific ask -- an intro, a challenge, a resource, a beta test]
- [Why this is the thing that would move you forward most this week]
```

---

### Step 4: Timing Guide

After all sections are drafted, generate a timing guide:

**Product Track:**
```
## Timing Guide

0:00 - 1:30   Competitive landscape findings
1:30 - 3:00   Hypothesis selection
3:00 - 7:00   Prototype demo
7:00 - 8:00   Key learnings
8:00 - 8:30   One ask
```

**Growth Track:**
```
## Timing Guide

0:00 - 1:00   ICP & offer
1:00 - 2:30   What you built
2:30 - 4:00   30-day plan
4:00 - 5:00   One ask
```

### Step 5: One-Sentence Pitch

Generate a one-sentence pitch for hallway conversations. Format:
"[startup_name] helps [specific ICP] [achieve specific outcome] by [brief mechanism]."

Offer 2-3 variations and ask which one sounds most like how the founder actually talks.

### Step 6: Facilitator Questions

If `facilitated_mode` is true, surface these questions as final reflection prompts:

- "If you only had 60 seconds, what's the one thing you want people to remember?"
- "What's the ask that would actually move you forward this week?"
- "What did you learn that surprised you most?"

## Output Format

Deliver in sequence, Miro-ready:

1. **Pitch Outline** -- section-by-section talking points
2. **Timing Guide** -- section lengths
3. **One-Sentence Pitch** -- 2-3 options for hallway conversations

## Config Dependencies

**Reads:** `track`, `startup_name`, `facilitated_mode`, `hypothesis_selected`, `icp_segment`, `lead_magnet`, `channels_selected`
**Writes:** Nothing

## Platform Notes

| Platform | Behavior |
|----------|----------|
| Claude Code | Full: reads config.json for track detection |
| Claude Desktop | Full: manual track input; full output |
| Claude Cowork | Full: same as Desktop |
