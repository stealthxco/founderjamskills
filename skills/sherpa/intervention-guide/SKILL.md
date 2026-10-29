---
name: intervention-guide
description: Real-time facilitator support. Describe the current situation at your table and get specific intervention strategies, pacing checks, and redirect techniques. Covers both Product and Growth tracks.
---

# Intervention Guide

Real-time support for facilitators during a Founder Jam event. Describe what's happening at your table and get specific words to say, pacing status, and a redirect strategy -- fast.

## Overview

This skill is designed to be invoked mid-session. It takes a situational description and returns:
1. Pacing status (are they on track?)
2. Specific intervention language
3. What NOT to say
4. A 5-minute redirect strategy
5. 2-3 provocative questions to try

**When to run:** Any time your table is stuck, drifting, or running long.

## Process

### Step 1: Situation Intake

Ask the facilitator one question:

"What's happening at your table right now? Describe the situation, which activity they're on, and what's not working."

Accept freeform input. Do not ask follow-up questions before providing an initial assessment -- speed matters.

Parse the response for:
- Current activity (see Activity List below)
- Failure mode (see Failure Modes below)
- Approximate time into the session
- Track (Product or Growth, if discernible)

### Step 2: Activity Identification

Map the described situation to the current activity:

**Product Track:**
- `battle-card-builder` -- SWOT analysis, competitor research, battle card creation
- `hypothesis-engine` -- hypothesis generation, diverge/converge, "If/then/by" framing
- `prototype-launcher` -- prototype type selection, build phase, internal review

**Growth Track:**
- `icp-definer` -- ICP definition, JTBD mapping, segment selection
- `offer-designer` -- lead magnet selection, content workflow, email sequence
- `growth-builder` -- automation build, North Star metrics, 30-day plan

**Shared:**
- `validation-planner` -- commitment writing, pitch prep
- `general` -- unclear or early in session

### Step 3: Pacing Check

Based on the current time and activity, tell the facilitator where the startup should be. Reference `templates/session-pacing-guide.md` for block breakdowns.

Format:

```
PACING: They should be at [X] by now. They are [ahead / on track / behind] by approximately [N] minutes.

[If behind]: To recover, [specific cut or compress recommendation from pacing guide].
```

### Step 4: Intervention Recommendation

Based on the failure mode identified, provide:

**What to say:** Specific words or questions the facilitator can use right now. Not generic advice -- actual language.

**What NOT to say:** Common facilitator mistakes for this exact situation.

**Redirect strategy:** How to get them back on track in 5 minutes or less. Include a specific action, not just a principle.

#### Failure Mode Library

| Failure Mode | What to Say | What NOT to Say | Redirect |
|-------------|-------------|-----------------|----------|
| "We have no competitors" | "Tell me what your customer does today when they have this problem, without you. That's your first competitor." | "Everyone has competitors" (too generic) | Ask them to name the status quo workaround. Put it in the battle card as Competitor 1. |
| Team is debating instead of building | "Let's write that debate down as a hypothesis instead of solving it right now." | "You're overthinking this" | Physically hand them a sticky note. Ask them to write one hypothesis using the If/Then/By format. |
| Founder is building a product instead of a prototype | "What's the fastest version of this that could teach you whether the idea works?" | "That's out of scope" | Name a specific prototype type (sales story, landing page, click-through mock) that fits their hypothesis. |
| Team is stuck on a single option | "What would you do if this option didn't exist?" | "There must be another option" | Run a 3-minute "kill the darling" exercise. Remove the stuck option and force two alternatives. |
| Founder resists narrowing ICP | "For today, we're going to pick one. You can expand later. Which segment has the most pain right now?" | "You need to niche down" (too prescriptive) | Frame it as a 30-day experiment, not a permanent decision. |
| Team energy is low | "Let's take 5 and come back -- the best output comes in the last stretch." | Don't push through low energy | 5-minute break. Non-negotiable. |
| Founder is venting / off-topic | "That's real. Let's put that in the risk column and come back to it. What's the one thing you can control today?" | "Let's stay on task" | Park the issue visibly (sticky note on a "parking lot" frame). Return to current activity. |
| Technical issues (N8N, API) | "Let's map the workflow on the Miro board first, then we'll wire it up." | "It should work" / debugging live | Whiteboard the logic. Document the workflow as a diagram. Build from the diagram after. |
| Founder resists automation | "What happens when you can't do this manually for a week? What breaks?" | "Automation is essential" | Reframe as scalability insurance, not replacement. Ask about their current time cost per week. |
| Hypothesis is too vague | "Can you add a specific number and a deadline to that?" | "Good start, but..." | Hand them the If/Then/By template. Ask them to fill in the blank numbers out loud. |
| No existing customer data | "Let's build from what competitors' customers say publicly -- reviews, Reddit, LinkedIn comments." | "You need data first" | Pull one competitor review together. Extract pain language directly from customer voice. |

### Step 5: Facilitated Mode Questions

Suggest 2-3 provocative questions from the question bank below that match the current situation. These are designed to unlock momentum, not to create more debate.

**Battle Card / Competitive:**
- "What job is the customer hiring today without you?"
- "Where are switching costs the highest?"
- "What's your unfair advantage the big players can't copy soon?"
- "What content are they NOT creating that their audience needs?"
- "Where are their blind spots in distribution?"

**Hypothesis / ICP:**
- "Is this testable in 30 days with the resources you have?"
- "Who has this problem the worst?"
- "What would prove this hypothesis wrong?"
- "What's the trigger event that makes them look for a solution?"
- "Which hypothesis unlocks the most if it works?"

**Prototype / Build:**
- "What's the cheapest version of this that teaches you something real?"
- "Can you test this today with real data?"
- "What breaks if you don't touch it for a week?"
- "How will you know if this is working?"

**30-Day Plan / Validation:**
- "What's realistic given your current time constraints?"
- "What would make you kill this experiment?"
- "Who's accountable for each action?"
- "What's the one number that proves growth?"

**General Unsticking:**
- "What decision are you trying to avoid making?"
- "If you had to ship something tomorrow, what would it be?"
- "What are you most afraid to test?"

## Config

**Reads:** Nothing.
**Writes:** Nothing.
**References:** `content/intervention-patterns.md` (this repo), facilitator question bank above.

## Platform Notes

| Platform | Behavior |
|----------|----------|
| Claude Code | Fastest response -- run in terminal, paste situation, get immediate output |
| Claude Desktop | Conversational mode works well; keep session open during event |
| Claude Cowork | Same as Desktop |
