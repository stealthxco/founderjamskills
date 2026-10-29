---
name: growth-builder
description: Growth Track Part 3. Build one automation (sales lead enrichment or customer support), define your North Star metric, and create a concrete 30-day validation plan with Green/Yellow/Red decision thresholds. Reads icp_segment, lead_magnet, channels_selected. Writes channels_selected (confirmed).
---

# Growth Builder

Complete the Growth Track arc: build one automation to replace a manual process, define the single metric that tells you if growth is working, and create a 30-day validation plan with explicit decision gates. This is Growth Track Part 3.

## Overview

Three sequential sub-activities:

1. **Choose One Automation** - Select and spec either Sales Lead Enrichment or Customer Support Automation
2. **North Star Metric + Supporting Metrics** - Define the one number that matters and the 3-5 metrics that explain it
3. **30-Day Validation Plan** - Week-by-week actions with Green/Yellow/Red decision thresholds

**Time estimate:** 120 minutes

## Setup

Read `config.json` if present. Required fields: `icp_segment`, `lead_magnet`, `channels_selected`, `startup_name`, `stage`, `business_type`, `facilitated_mode`.

If any fields are missing, ask for them before proceeding. If `channels_selected` is empty, ask which channel(s) the founder selected in the previous activity.

## Process

### Sub-activity A: Choose One Automation

**Introduce the activity:**

"Automation is not about replacing human relationships -- it is about removing the manual steps that prevent you from having more of them. Pick one automation to build today. Done and deployed beats perfect and planned."

**Present two options and ask the founder to choose:**

---

**Option 1: Sales Lead Enrichment Workflow**

Best for: founders who want to qualify and prioritize inbound leads faster.

Workflow:

```
Trigger: New form submission (lead magnet download, contact form, LinkedIn connection request)
      |
      v
Enrich: Pull company size, industry, tech stack from Apollo.io or Clay
      |
      v
Score: Assign ICP match rating
      - High: 3+ of [startup's ICP criteria] match (e.g., company size, industry, title)
      - Medium: 1-2 criteria match
      - Low: 0-1 criteria match
      |
      v
Route:
  High  -> Immediate personal outreach (founder or AE, same day)
  Medium -> Trigger 7-email nurture sequence (from offer-designer)
  Low   -> Add to newsletter-only list
      |
      v
Log: Create/update CRM record with enrichment data, score, and routing outcome
```

Setup steps for the founder:
1. Set up HubSpot free CRM (or verify existing setup)
2. Create lead capture form (Typeform or HubSpot forms)
3. Build Zapier workflow: form submission -> Apollo enrichment -> HubSpot create contact -> route by score
4. Define scoring criteria based on `icp_segment`
5. Test with one submission before going live

Tools:

| Tool | Purpose | Tier |
|------|---------|------|
| Zapier | Workflow automation | Free (5 zaps) |
| HubSpot CRM | Contact management + sequences | Free |
| Apollo.io | Lead enrichment | Free (limited lookups) |
| Clay | Deep enrichment + AI scoring | Paid ($149/mo+) |

Setup complexity: **Medium** (2-4 hours first-time setup)

---

**Option 2: Customer Support Automation**

Best for: founders with existing customers who want to reduce support time and improve response consistency.

Workflow:

```
Intake: Unified inbox from email + live chat + social DMs
      |
      v
Classify: Tag by topic using AI classification or keyword rules
  - Billing / payment issue
  - Feature request / feedback
  - Bug report / technical issue
  - General question / onboarding help
      |
      v
Route:
  Billing    -> Founder notification (Slack DM or email flag, same hour)
  Feature    -> Add to product backlog log (Notion or Google Sheet)
  Bug        -> Urgent queue (Slack #bugs channel, resolve within 24h)
  General    -> Template response library (pre-written for top 10 questions)
      |
      v
Escalation: Any ticket open >24 hours triggers founder notification
```

Setup steps for the founder:
1. Set up Intercom free tier (or Zendesk free) as the unified inbox
2. Create Gmail filters to route support@ emails to the inbox
3. Build Zapier automation: new ticket -> classify by keywords -> route to correct channel
4. Write template responses for top 5-10 most common questions
5. Set up 24-hour escalation alert

Tools:

| Tool | Purpose | Tier |
|------|---------|------|
| Intercom | Unified inbox + live chat | Free (limited seats) |
| Zapier | Classification + routing | Free (5 zaps) |
| Gmail filters | Email routing | Free |
| Slack | Internal notifications | Free |

Setup complexity: **Easy** (1-2 hours first-time setup)

---

**Output: Automation Spec**

```
## Automation Spec - [startup_name]

**Type:** [Sales Lead Enrichment / Customer Support]
**Setup complexity:** [Easy / Medium / Hard]
**Estimated setup time:** [X hours]

**Trigger:** [what starts the workflow]
**Steps:**
1. [step]
2. [step]
3. [step]

**Tools required:**
- [tool] - [purpose] - [free/paid]
- [tool] - [purpose] - [free/paid]

**Success criteria:** [what "working" looks like after 30 days]
**First action to take:** [specific first step to begin setup today]
```

**Facilitated mode challenge prompts:**
- "Which automation will save you the most time in the next 30 days?"
- "What is the manual step you are doing today that this replaces?"
- "If this automation breaks, how will you know within 24 hours?"

---

### Sub-activity B: North Star Metric + Supporting Metrics

**Introduce the activity:**

"Your North Star Metric is the one number that best captures the value your product delivers. When this number grows, everything else follows. Supporting metrics explain why it is growing or not."

**Step 1: Recommend North Star Metric by business type**

Based on `business_type`:

| Business Type | North Star Metric | Why It Works |
|---------------|------------------|-------------|
| B2B SaaS | Qualified demos booked per week | Predicts pipeline and conversion |
| Marketplace | Transactions completed per week | Captures supply AND demand engagement |
| Services / Agency | Discovery calls completed per week | Ties growth to real sales activity |
| Consumer app | Weekly Active Users (WAU) | Habit formation is the retention moat |

Let the founder confirm or adjust the North Star Metric based on their specific situation.

**Step 2: Define supporting metrics (3-5 total)**

Select relevant metrics from each category:

**Acquisition (choose 1-2):**
- Unique website visitors per week
- Outreach messages sent per week
- Lead magnet downloads per week
- Ad impressions or reach (if running paid)

**Activation (choose 1):**
- Demo show rate (booked -> attended)
- Free trial conversion rate
- First value moment completion rate (first action that predicts retention)
- Onboarding completion rate

**Engagement (choose 1):**
- Email open rate (target: 30%+ for B2B)
- Email reply rate (target: 5%+ for cold outreach)
- Return visit rate within 7 days

**Revenue (choose 1):**
- Pipeline value added per week
- Close rate (qualified conversations to closed deals)
- Average deal or contract size

**Step 3: Set 30-day targets**

For each metric, ask the founder: "What would Green look like in 30 days?" Use these to populate the decision framework in Sub-activity C.

**Output: Metrics Dashboard Template**

```
## Metrics Dashboard - [startup_name]

**North Star:** [metric name]
**30-day target:** [number]
**Tracking tool:** [spreadsheet / HubSpot / Notion]

| Metric | Category | 30-Day Target | Current Baseline | Tracking |
|--------|----------|--------------|-----------------|---------|
| [North Star] | North Star | [target] | [baseline] | [tool] |
| [metric 1] | Acquisition | [target] | [baseline] | [tool] |
| [metric 2] | Activation | [target] | [baseline] | [tool] |
| [metric 3] | Engagement | [target] | [baseline] | [tool] |
| [metric 4] | Revenue | [target] | [baseline] | [tool] |

**Review cadence:** Weekly check-in every [day of week]
**Who reviews:** [founder name / accountability partner]
```

**Facilitated mode challenge prompts:**
- "If you could only track one number for 90 days, what would tell you if this is working?"
- "What does 'activated' mean for your specific product -- not sign-ups, the moment they get value?"
- "Who outside this room will review these metrics with you in 30 days?"

---

### Sub-activity C: 30-Day Validation Plan

**Introduce the activity:**

"Thirty days. Specific weekly commitments. And a decision rule before you start so that you know exactly when to persist, optimize, or pivot -- without having to make an emotional judgment call mid-experiment."

**Step 1: Build the week-by-week plan**

**Week 1 -- Setup (Days 1-7)**
Goal: Everything is live, nothing is manual.
- [ ] Channels activated (profiles, pages, templates ready)
- [ ] Lead magnet live at a real URL
- [ ] Automation tested with one real submission
- [ ] Metrics dashboard created and baseline recorded
- [ ] First content piece drafted or scheduled

**Week 2 -- Launch (Days 8-14)**
Goal: First real outreach or publish.
- [ ] First outreach batch sent (minimum: 50 personalized messages, or 1 piece of content published)
- [ ] Lead magnet promoted on primary channel
- [ ] First lead captured and routed through automation
- [ ] Weekly metrics check: are acquisition numbers moving?

**Week 3 -- Optimize (Days 15-21)**
Goal: Fix the weakest element before scaling.
- [ ] Review all metrics against targets
- [ ] Identify the single metric furthest from target
- [ ] Run one focused adjustment (message, audience, offer, or channel)
- [ ] Keep outreach or publishing cadence consistent

**Week 4 -- Decide (Days 22-30)**
Goal: Green/Yellow/Red assessment with a commitment to the next 60 days.
- [ ] Final metrics review against all targets
- [ ] Apply decision framework (below)
- [ ] Write 60-day commitment based on outcome
- [ ] Share plan with accountability partner

**Step 2: Green / Yellow / Red decision framework**

Based on North Star Metric performance at the end of Week 4:

**Green -- 70% or more of target achieved**
Decision: Persist and scale.
- Document exactly what worked (message, audience, timing, channel)
- Double the effort or budget in this direction
- Build a repeatable system around what is working
- Set 60-day target at 2x the 30-day result

**Yellow -- 40-70% of target achieved**
Decision: Optimize before scaling.
- Identify the single metric furthest from target -- that is the constraint
- Run one focused A/B test on the weakest element
- Hold current investment level while iterating
- Set a 30-day timer for the next decision point
- Do NOT add new channels or new offers yet

**Red -- Under 40% of target achieved**
Decision: Pivot the approach.
- Do not scale a broken channel or broken offer
- Return to diagnosis: Was the ICP right? Was the message right? Was the channel right?
- Talk to 5 people who saw the offer but did not convert -- listen for the real objection
- Pick a different channel or fundamentally reframe the offer before investing more

**80/15/5 Channel Allocation Rule:**

When the founder confirms channels for the 30-day plan, apply this allocation framework:

- **Primary channel (80% of effort):** The one channel that scored highest and has the fastest path to signal. This is where nearly all time, energy, and budget goes for the first 30 days.
- **Secondary channel (15% of effort):** A supporting channel that reinforces the primary -- often content or nurture that feeds the primary channel's pipeline.
- **Experimental (5% of effort):** One small test of a channel or tactic outside the plan. Low investment, just enough to learn whether it merits future attention.

The mistake early-stage founders make is spreading effort across 4-5 channels and getting no signal from any of them. The 80/15/5 rule forces focus.

**Cold Outreach Anti-Pattern Rules:**

If the founder's primary or secondary channel involves outbound email, LinkedIn outreach, or cold messages, enforce these rules for all generated outreach copy:

- No "I hope this email finds you well" -- start with something specific to the recipient
- No corporate jargon -- write like a person, not a press release
- Questions > Statements -- ask, don't tell
- Specific > Generic -- name the industry, the role, the problem
- Short > Long -- under 75 words for cold email, under 100 words for follow-ups
- One CTA per email -- never give two choices

Each cold message should feel like a 1:1 message, not a blast. If it could be sent to 1,000 people without changing a word, it is not personalized enough.

**Step 3: Confirm channels_selected**

Based on the 30-day plan, confirm which channels the founder is committing to. Apply the 80/15/5 framework to make the allocation explicit. Update config.

**Output: 30-Day Calendar + Decision Framework Card**

```
## 30-Day Validation Plan - [startup_name]

**North Star:** [metric]
**Target:** [number]
**Primary channel:** [channel]
**Lead magnet:** [title]

### Week 1 -- Setup
- [ ] [specific action 1]
- [ ] [specific action 2]
- [ ] [specific action 3]

### Week 2 -- Launch
- [ ] [specific action 1]
- [ ] [specific action 2]
- [ ] [specific action 3]

### Week 3 -- Optimize
- [ ] [specific action 1]
- [ ] [specific action 2]

### Week 4 -- Decide
- [ ] Final metrics review
- [ ] Apply Green / Yellow / Red framework
- [ ] Write 60-day commitment

---

## Decision Framework Card

**My North Star target for 30 days:** [number]

| Outcome | Threshold | Decision | First Action |
|---------|-----------|----------|-------------|
| Green | 70%+ of target | Scale: double effort | Document what worked |
| Yellow | 40-70% of target | Optimize: fix weakest metric | Run one A/B test |
| Red | <40% of target | Pivot: revisit ICP or offer | Talk to 5 non-converters |

**Decision date:** [date 30 days from today]
**Who reviews with me:** [accountability partner name]
```

**Facilitated mode challenge prompts:**
- "What's your decision rule for knowing when to pivot vs. persist -- and are you willing to commit to it now?"
- "What could break this plan in Week 1, and how will you catch it early?"
- "Who outside this room will hold you to these numbers in 30 days?"

## Write Config

After completing all three sub-activities, update `config.json`:

```json
{
  "channels_selected": ["[confirmed primary channel 1]", "[confirmed primary channel 2]"]
}
```

## Config Dependencies

**Reads:** `icp_segment`, `lead_magnet`, `channels_selected`, `startup_name`, `stage`, `business_type`, `facilitated_mode`
**Writes:** `channels_selected` (confirmed)

## Platform Notes

| Platform | Behavior |
|----------|----------|
| Claude Code | Full flow: reads full config, writes confirmed channels_selected |
| Claude Desktop | Full flow: manual context input for missing config fields |
| Claude Cowork | Full flow: recommended for non-technical founders -- rich text output works well |
