---
name: validation-planner
description: Create a structured accountability plan at the end of Founder Jam. Uses the 2 Days / 2 Weeks / 2 Months framework with funnel math and a 30-day Green/Yellow/Red decision framework.
---

# Validation Planner

Turn today's work into a concrete 30-day commitment plan before you leave. Pushes for specificity -- not "do outreach" but real numbers, real owners, real deadlines. Includes funnel math and a decision framework so you know when to persist, optimize, or pivot.

## Overview

This is the last skill of the day. Run it in the final 15 minutes.

- Works for both Product and Growth tracks
- Tailors funnel math defaults to track and stage
- Outputs a commitment card formatted for Miro

**Time estimate:** 15 minutes

## Process

### Step 1: Load Config

Read `config.json` if it exists. Extract:
- `track` -- tailors funnel math template (B2B vs B2C defaults)
- `stage` -- adjusts ambition of targets (idea vs early-revenue)
- `startup_name` -- personalizes output
- `facilitated_mode` -- adds or removes coach prompts

If config is missing, ask:
1. "What track are you on -- Product or Growth?"
2. "What stage are you at -- idea, pre-revenue, or early-revenue?"
3. "What's your startup name?"

### Step 2: Context Check

Ask one quick question: "Give me the one thing you're most committed to testing in the next 30 days."

This seeds the commitment structure. Build on it rather than starting from scratch.

### Step 3: 2 Days / 2 Weeks / 2 Months Commitments

Work through each horizon one at a time. For each, push for specificity over vagueness.

**2 Days (the 48-hour experiment)**

Ask: "What's the smallest experiment you could run in the next 48 hours that would tell you something real?"

Capture:
- Specific action (not "talk to customers" -- "send cold emails to 10 people in [specific list]")
- Expected output (what you'll have at the end)
- Success signal (what would tell you it worked)

Format:
```
**2 Days**
Action: [specific action]
Output: [what you'll have]
Success signal: [what good looks like]
```

If the answer is vague, push back: "That's still pretty broad. What exactly will you do, and who will you do it with or to?"

**2 Weeks (the first real push)**

Ask: "What will you have completed in two weeks that you don't have today?"

Capture:
- Specific milestone (a live landing page, 50 outreach emails sent, first 3 customer interviews done)
- Owner (who on the team is responsible)
- A number (volume, revenue, conversations -- something measurable)

Format:
```
**2 Weeks**
Milestone: [specific deliverable]
Owner: [person]
Number: [measurable target]
```

**2 Months (the validation gate)**

Ask: "If this is working in two months, what does that look like specifically?"

Capture:
- Validation signal (the thing that would make you confident to invest more)
- Revenue or traction target
- Decision point (what you'd do if you hit it / missed it)

Format:
```
**2 Months**
Validation signal: [specific evidence of traction]
Target: [revenue, customers, or key metric]
Decision: [what you'll do if you hit it / miss it]
```

### Step 4: Funnel Math

Build a funnel math table tailored to track and stage. The goal is to work backwards from the desired outcome.

**Funnel template (customize numbers based on stage and track):**

```
## Funnel Math: [startup_name]

| Stage | Target | Conversion Rate | Notes |
|-------|--------|-----------------|-------|
| Outreach sent | [X] | -- | Starting volume |
| Website visits | [X] | [X]% | From outreach |
| Email captures | [X] | [X]% | Typical 60-70% of visits |
| Qualified leads | [X] | [X]% | ICP match filter |
| Booked calls | [X] | [X]% | Response to outreach |
| Closed customers | [X] | [X]% | Close rate from calls |
```

**Default conversion benchmarks by track:**

B2B / Product Track (cold outreach model):
- 250 cold emails -> 50 website visits (20%) -> 36 captures (72%) -> 18 qualified (50%) -> 9 calls (50%) -> 3 customers (33%)

B2C / Growth Track (content + lead magnet model):
- 1,000 impressions -> 100 clicks (10%) -> 70 captures (70%) -> 35 qualified (50%) -> 10 replies (29%) -> 3 customers (30%)

Adjust defaults based on `stage`:
- Idea stage: use conservative numbers, note they're benchmarks not guarantees
- Early-revenue: ask founder to fill in actuals where known

After presenting the table, ask: "Do these numbers feel realistic for your situation, or should we adjust?"

### Step 5: 30-Day Decision Framework

Present the Green/Yellow/Red framework with thresholds specific to this startup:

```
## 30-Day Decision Framework: [startup_name]

**North Star Metric:** [the one number that matters most]
**Target by Day 30:** [specific number]

| Signal | Threshold | Action |
|--------|-----------|--------|
| Green | 70%+ of target | Persist -- double down on what's working, document the playbook |
| Yellow | 40-70% of target | Optimize -- find the one funnel step furthest from target and fix it |
| Red | Below 40% | Pivot -- revisit ICP or offer before investing more effort |

**If Yellow:** Run a funnel audit. Find the biggest drop-off. Fix that one thing before changing anything else.
**If Red:** Go back to founder-setup. Revisit your ICP and problem statement before the next push.
```

Ask the founder to confirm the North Star metric before finalizing. Push for one number, not a list.

### Step 6: Accountability Partner

Ask: "Who outside this room will hold you accountable to these numbers?"

Capture:
- Name (or description: "my co-founder", "my advisor", "a peer from this cohort")
- When you'll check in with them (Day 7 or Day 14 suggested)
- Format (a 15-min call, a Slack update, a shared doc)

Add to commitment card:
```
**Accountability:**
Partner: [name or description]
Check-in: [date/cadence]
Format: [how you'll share progress]
```

### Step 7: Calendar Reminders

Generate text-format calendar reminders. Founder adds these manually.

```
## Calendar Reminders to Add

1. [Today + 2 days]: "[startup_name] 48-hour experiment check-in"
2. [Today + 7 days]: "Week 1 funnel review with [accountability partner]"
3. [Today + 14 days]: "[startup_name] 2-week milestone: [milestone name]"
4. [Today + 30 days]: "[startup_name] Day 30 Green/Yellow/Red assessment"
5. [Today + 60 days]: "[startup_name] 2-month validation gate"
```

### Step 8: Facilitator Questions

If `facilitated_mode` is true, surface these questions as final prompts:

- "What's the smallest experiment you could run in 48 hours that would tell you something real?"
- "If you hit Yellow in 30 days, what's your decision rule for pivoting vs. optimizing?"
- "Who outside this room will hold you accountable to these numbers?"

## Output Format

Deliver in sequence, Miro-ready:

1. **Commitment Card** -- 2D/2W/2M with specific actions, owners, and signals
2. **Funnel Math Table** -- volume targets with conversion benchmarks
3. **Decision Framework** -- Green/Yellow/Red thresholds with action rules
4. **Calendar Reminders** -- text format, founder adds manually

## Config Dependencies

**Reads:** `track`, `stage`, `startup_name`, `facilitated_mode`
**Writes:** Nothing

## Platform Notes

| Platform | Behavior |
|----------|----------|
| Claude Code | Full: reads config.json for context |
| Claude Desktop | Full: manual context input |
| Claude Cowork | Full: same as Desktop |
