---
name: offer-architect
description: Optimize existing offers into Grand Slam packages using Hormozi's 9-step process, Value Equation scoring, bonus stacking, guarantee language, and upsell/downsell architecture. This skill optimizes offers; offer-designer creates initial ones.
---

# Offer Architect Skill

## Overview

Take an existing offer and transform it into a named, incomparable package. Instead of selling capabilities ("we do X and Y"), sell named, outcome-specific packages with bonus stacking, performance commitments, and a natural upsell path.

**Relationship to offer-designer:** If you haven't designed your initial offer yet, start with `offer-designer`. Use `offer-architect` after you have a working offer that you want to optimize into a Grand Slam package.

Key capabilities:
- Walk through the Grand Slam Offer creation process (9 steps) for any service area
- Score packages against the Value Equation
- Design bonus stacking with stated individual values
- Generate guarantee language (4 tiers)
- Build upsell/downsell architecture
- Apply MAGIC naming for incomparability
- Create ethical scarcity language authentic to your model

## Config Dependencies

**Reads from `config.json`:**
- `startup_name` -- company name for package branding
- `icp_segment` -- target customer profile for obstacle mapping
- `business_type` -- service model for delivery vehicle selection
- `facilitated_mode` -- enables challenge prompts

**Optional config fields:**
- `service_areas` -- array of service offerings
- `team_size` -- for authentic scarcity language
- `engagement_model` -- pricing model (e.g., "fixed-fee", "retainer", "project-based")

**Writes:** Nothing (output is presented for review and manual saving)

## The Grand Slam Offer Process (Hormozi, Adapted for Services)

### Step 1: Find the Starving Crowd

Identify which customer segment has the most urgent, painful need RIGHT NOW.

| Filter | Question |
|--------|----------|
| Pain Intensity | How much is this costing them today? (dollars, time, missed opportunities) |
| Urgency | What external pressure is forcing action? (board mandate, competitor move, regulatory change) |
| Willingness to Pay | Is budget allocated or allocatable? |
| Decision Speed | Can they move in 30-60 days? |

### Step 2: Map Every Obstacle

List EVERY reason a prospect might say "no" or fail to achieve the outcome. Be exhaustive.

| Category | Obstacle | How It Shows Up |
|----------|----------|----------------|
| Knowledge | Don't know where to start | "We're overwhelmed by options" |
| Buy-in | Team resistance to change | "Our team won't adopt this" |
| Technical | Systems aren't ready | "Our tech stack can't support this" |
| Resource | No people to build/maintain | "We don't have the team" |
| Risk | Fear of failure | "What if it doesn't work?" |
| Time | Can't afford a long engagement | "We need results in weeks, not months" |
| Proof | Uncertain you can deliver | "How do we know you're different?" |
| Budget | Investment feels risky | "That's a lot of money" |
| Authority | Decision involves others | "I need to get buy-in" |

### Step 3: Create Solutions for Each Obstacle

For every obstacle in Step 2, design a solution and assign a delivery vehicle:

| Delivery | Effort Level | Examples |
|----------|-------------|---------|
| Done-for-you | Lowest client effort, highest price | You build and deliver it |
| Done-with-you | Medium effort, medium price | Workshops, embedded sprints, co-creation |
| Do-it-yourself | Highest client effort, lowest price | Templates, frameworks, playbooks, training |

### Step 4: Apply the Value Equation

Score the package:

```
Value = (Dream Outcome x Perceived Likelihood) / (Time Delay x Effort & Sacrifice)
```

| Factor | Direction | How to Maximize |
|--------|-----------|----------------|
| Dream Outcome | INCREASE | Be specific: "$X impact" not "grow your business" |
| Perceived Likelihood | INCREASE | Case studies, guarantee, credentials |
| Time Delay | DECREASE | "Working prototype in 2 weeks" not "results in 6 months" |
| Effort & Sacrifice | DECREASE | Done-for-you delivery, minimal client time commitment |

Score each factor 1-10. Composite = (DO x PL) / (TD x ES). Higher is better.

### Step 5: Trim and Stack

Remove low-value items. Keep only high-value, high-impact components. Then stack them so each component is visible and valued individually.

For each component in the package:
- Name it (don't call it "Deliverable 3")
- Assign a standalone value
- Explain what problem it solves

**Principle:** Breaking offerings into component parts increases perceived value more than bundling them together.

### Step 6: Name Using MAGIC Formula

| Element | Question |
|---------|----------|
| M - Magnet | Why does this exist? ("Limited quarterly capacity" / "Designed for [audience]") |
| A - Avatar | Who is it for? ("For [specific role] at [specific company type]") |
| G - Goal | What result does it produce? (Specific outcome, not capability) |
| I - Interval | What's the time frame? ("2-Week" / "6-Week" / "90-Day") |
| C - Container | What format is it? (Sprint, System, Partnership, Diagnostic, Blueprint, Accelerator, Program) |

**Examples:**
- "Growth Sprint" (Goal + Container)
- "Revenue Accelerator" (Goal + Container)
- "CX Transformation Partnership" (Goal + Container)

Choose containers that fit your service model. Good B2B containers: Sprint, System, Partnership, Diagnostic, Blueprint, Accelerator, Program.

### Step 7: Design the Guarantee

Four tiers:

| Tier | Type | Example | Best When |
|------|------|---------|-----------|
| 1 | **Performance Commitment** | "If we don't deliver measurable progress on agreed KPIs within the first 30 days, we extend at no additional cost." | Default for most packages |
| 2 | **Milestone Guarantee** | "Specific deliverables at specific dates. If we miss a milestone, we make it right before moving forward." | Defined-scope engagements |
| 3 | **Anti-Guarantee** | "We don't offer refunds. We offer results. If you need guarantees before committing, we may not be the right fit." | Premium/enterprise only |
| 4 | **Performance-Based** | "Revenue share, outcome-linked bonuses, or success fees tied to specific metrics." | Deep partnerships |

**Naming the guarantee:** Don't call it a "guarantee." Give it a name: "The Results Commitment," "The Milestone Promise," "The Extension Pledge."

### Step 8: Add Ethical Scarcity

Use scarcity that is actually true to your business:

- "We accept [X] new clients per quarter to maintain senior-level attention on every engagement."
- "The founding team is directly involved in every [package]. That limits our capacity."
- "We don't scale by adding junior staff. We scale by being selective."

**Rules:**
- Only use scarcity that is actually true
- Never manufacture urgency ("only 2 spots left!" when there are 10)
- Publicize when fully booked (this is social proof, not pressure)

### Step 9: Design Upsell/Downsell Architecture

Create a natural progression:

```
DOWNSELL (for those not ready for entry):
  [Lower-ticket diagnostic or assessment]
  |
ENTRY:
  [Primary package]
  |
UPSELL (presented at entry completion):
  [Deeper engagement -- build on initial findings]
  |
UPSELL (presented at deeper completion):
  [Full transformation partnership]
  |
CONTINUITY (for all completers):
  [Monthly advisory retainer]
```

Each transition must be natural: the previous engagement reveals the need for the next one.

## Bonus Stacking Framework

For each package, create 3-5 named bonuses with stated individual values:

```
## Bonus Stack: [Package Name]

| # | Bonus Name | What It Is | Stated Value |
|---|-----------|-----------|-------------|
| 1 | [Creative name] | [1-sentence description] | $X,000 |
| 2 | [Creative name] | [1-sentence description] | $X,000 |
| 3 | [Creative name] | [1-sentence description] | $X,000 |

**Total Stated Value:** $XX,000
**Package Price:** $XX,000
**Value Gap:** X:1 ratio
```

**Bonus rules:**
- Each bonus addresses a specific obstacle from Step 2
- High perceived value, low fulfillment cost
- Named compellingly (not "Bonus 1")
- Bonuses are real things you actually deliver (never fabricated)

## Value Stack Presentation (for Proposals)

When presenting pricing, use the infomercial stacking model:

```
"Here's what's included in the [Package Name]:

[Component 1]: [Name] -- [what it does] -- valued at $X
[Component 2]: [Name] -- [what it does] -- valued at $X
[Component 3]: [Name] -- [what it does] -- valued at $X

Plus these bonuses:
[Bonus 1]: [Name] -- valued at $X
[Bonus 2]: [Name] -- valued at $X

Total value: $XX,000

Your investment: $XX,000

That's a [X]:1 return on your investment before you even factor in the business outcomes."
```

## Package Spec Output Format

```
## Package Spec: [MAGIC Name]

### Summary
- **Target Customer:** [who this is for]
- **Service Area:** [what capability this covers]
- **Duration:** [timeframe]
- **Investment Range:** [price range]
- **Guarantee:** [type + language]
- **Scarcity:** [authentic limitation]

### Value Equation Score
- Dream Outcome: X/10
- Perceived Likelihood: X/10
- Time Delay: X/10 (lower = better)
- Effort & Sacrifice: X/10 (lower = better)
- Composite: X.X

### Components
| # | Component | Description | Stated Value |
|---|-----------|-------------|-------------|
[table]

### Bonus Stack
| # | Bonus | Description | Stated Value |
|---|-------|-------------|-------------|
[table]

### Guarantee Language
[Full guarantee text]

### Upsell Path
- From: [what downsell feeds this package]
- To: [what this package naturally upsells to]
- Continuity: [ongoing advisory option]

### Obstacles Addressed
[Map back to Step 2 obstacles]

### Proposal Value Stack
[Ready-to-paste presentation format]
```

## Workflow

1. **Select service area** -- Which part of your business needs a Grand Slam package?
2. **Walk through all 9 steps** -- Execute each step, confirming at each stage
3. **Generate package spec** -- Compile into the canonical format
4. **Validate architecture** -- Check the upsell/downsell path for gaps
5. **Review and refine** -- Iterate with founder input

## Facilitated Mode

When `facilitated_mode: true`, add these challenge prompts:

- "What's the most common reason prospects say no after hearing your price? That's Step 2, obstacle #1."
- "If you had to guarantee a specific result, what would you guarantee? Now build the package around delivering that."
- "What do you currently give away for free that you could name, value, and stack as a bonus?"
- "Name 3 things about your delivery model that naturally limit capacity. Those are your authentic scarcity levers."
- "Walk me through what happens after a client finishes their engagement. If the answer is 'nothing,' you're missing the upsell."

## Constraints

- Never fabricate pricing without founder input. Use ranges and defer for specifics
- Never use manufactured urgency or fake scarcity
- Never skip the obstacle mapping step. Packages built without understanding objections fail in sales conversations
- Never design packages that require capabilities you don't have
- Guarantee language must be deliverable. Never promise outcomes you can't control

## Works Well With

- If using `offer-designer`: design your initial offer there first, then optimize it here
- If using `testimonial-collector`: testimonials should map to specific packages for targeted proof
- If using `lead-magnet-ideator`: lead magnets should bridge to specific named packages
- If using `show-rate-optimizer`: confirmation emails can reference specific package names
- If using `landing-page-auditor`: service pages should present the package using the value stack format

## Platform Notes

| Platform | How to Use |
|----------|-----------|
| **Claude Code** | Full experience. Run as a skill with config.json in the working directory |
| **Claude Desktop** | Paste the skill content as a Project instruction. Walk through the 9 steps interactively |
| **Claude Cowork** | Add as a source document. Best for collaborative package design sessions |
