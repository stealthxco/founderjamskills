---
name: pitch-builder
description: Structure the end-of-day share-out. Picks a 7-10 minute prototype format or a 5 minute customer-and-offer format based on the founder's path and slot length, then builds talking points section by section, a timing guide, and a one-sentence pitch. Use in the Validate stage, after validation-planner.
license: CC-BY-4.0
---

# Pitch Builder

**Stage:** Validate. **Best for paths:** all paths.

Structure your end-of-day presentation in 20-30 minutes. Generates talking points -- not a script -- so your delivery stays natural and founder-authentic. Works through each section iteratively before moving to the next.

## Overview

This skill is path-aware. It picks a format from the founder's path and the length of their share-out slot.

- **Format A, prototype share-out:** 7-10 minutes, 5 sections. The default for product and positioning.
- **Format B, customer and offer share-out:** 5 minutes, 4 sections. The default for GTM and growth, sales, and ops and automation.

Ask how long the share-out slot really is. If it is shorter than the format, trim the middle sections and always keep the One Ask.

**Time estimate:** 20-30 minutes

## Process

### Step 1: Load context

Get context from a FOUNDER JAM HANDOFF block pasted in the chat (the format is defined in `founder-setup`). If you are running in Claude Code with file access, `config.json` in the working directory works too. Ask for anything that is missing, one question at a time.

Sherpa check: if the block has no `mode` field, ask once, "Is a sherpa with you today?" Default to solo. With a sherpa, add this skill's challenge prompts. Solo, skip them.

Fields needed:
- `path` -- picks the format (Format A for product and positioning, Format B for the others)
- `startup_name` -- personalizes output
- `mode` -- with-sherpa adds coach prompts
- Also read for context: `hypothesis_selected`, `icp_segment`, `lead_magnet`, `channels_selected`

If a field is missing, ask:
1. "Which path are you on, and how long is your share-out slot?"
2. "What's your startup name?"
3. "Give me a one-sentence summary of what you built or figured out today."

### Step 2: Brief Context Capture

Before building the pitch, gather what happened during the day. Ask conversationally (one question at a time, build on each answer):

**If Format A:**
1. "What were the most interesting things you learned about your competitive landscape?"
2. "What hypothesis did you end up choosing -- and what made it the winner over the others?"
3. "What did you prototype? Walk me through what it is and how it works."
4. "What surprised you most today? What would you do differently?"
5. "What specific help do you need from this cohort?"

**If Format B:**
1. "Who is your beachhead customer -- be specific. What's the JTBD statement you landed on?"
2. "What's your lead magnet and what did you build today (nurture sequence, automation, or content workflow)?"
3. "What are your concrete 30-day commitments? Give me the numbers."
4. "What specific help do you need from this room?"

### Step 3: Build Pitch Section by Section

Work through each section iteratively. After drafting each section, ask: "Does this capture it? Anything to adjust before we move on?"

---

**FORMAT A: PROTOTYPE SHARE-OUT (7-10 minutes)**

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

**FORMAT B: CUSTOMER AND OFFER SHARE-OUT (5 minutes)**

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

**Format A:**
```
## Timing Guide

0:00 - 1:30   Competitive landscape findings
1:30 - 3:00   Hypothesis selection
3:00 - 7:00   Prototype demo
7:00 - 8:00   Key learnings
8:00 - 8:30   One ask
```

**Format B:**
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

### Step 6: Sherpa questions

If `mode` is `with-sherpa`, surface these questions as final reflection prompts:

- "If you only had 60 seconds, what's the one thing you want people to remember?"
- "What's the ask that would actually move you forward this week?"
- "What did you learn that surprised you most?"

## Output Format

Deliver in sequence, paste-ready:

1. **Pitch Outline** -- section-by-section talking points
2. **Timing Guide** -- section lengths
3. **One-Sentence Pitch** -- 2-3 options for hallway conversations

## Where this runs

| Where | What happens |
|-------|--------------|
| claude.ai or Claude desktop (skill uploaded) | Full flow. Paste your handoff block at the start. Save any output you want to keep. |
| Claude Code | Full flow. Can also read and write `config.json`. |

---

Founder Jam curriculum and skills by Drew Burdick · program co-created with Innovate Charlotte · CC BY 4.0 · drewburdick.com/founderjam
