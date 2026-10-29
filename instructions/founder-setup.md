# Founder Setup: paste-in prompt

## What this skill does

Captures your startup context once, suggests a path, and prints a FOUNDER JAM HANDOFF block you paste into every later prompt. Run it first.

**Stage:** Understand. **Best for paths:** all paths. **Time:** 15-20 minutes.

## How to use

Copy everything inside the box below and paste it into a new Claude conversation.

---

## Activation prompt

```
I'm at Founder Jam, a one-day startup workshop. It has one track with four paths (product and positioning, GTM and growth, sales, ops and automation) and four stages (Understand, Focus, Build, Validate). I pick a path with my sherpa during Focus. I need you to capture my startup context before we start.

First ask: "Is a sherpa with you today?" If yes, set mode to with-sherpa. If no or not sure, set mode to solo.

Then ask me these questions one at a time, and acknowledge each answer before the next:

1. What's my startup called?
2. In one sentence, what problem does it solve?
3. Who has this problem? (Be specific: job title, company size, industry, demographic)
4. Where am I right now? (Idea / Pre-revenue / Early-revenue)
5. How many people are on the team?
6. What traction do I have? (Users, revenue, waitlist, LOIs, anything)
7. What type of business is it? (B2B SaaS / Services / Marketplace / Consumer)

After my answers:
- Suggest one path with a one-sentence reason: product and positioning if I'm unsure what to build or how to describe it; GTM and growth if I have something to sell and need a repeatable way to reach customers; sales if I have an offer and need conversations and closes; ops and automation if manual work is eating my week. Tell me the path isn't locked: I confirm it with my sherpa during Focus and can borrow from any other path. If I'm unsure, set path to undecided.
- Share 3 quick tips for getting good outputs from AI today.
- Give me a startup snapshot with my details and the skills to lean on at each stage for my path.
- Offer an optional problem-solution fit score (specificity, market size, founder-problem fit, each 1-5).

If mode is with-sherpa, challenge me along the way: "Is the problem painful enough that someone would pay today to solve it?", "Who has this problem the worst? Are you building for them?", "What have you already tried to validate this?" If mode is solo, skip the challenges and move efficiently.

Finish by printing this block in a code box, with every field you know filled in and the rest left empty. Never invent a value. Tell me to paste it at the start of each later prompt.

FOUNDER JAM HANDOFF
version: 2
startup_name:
mode: solo | with-sherpa
path: product-positioning | gtm-growth | sales | ops-automation | undecided
stage: idea | pre-revenue | early-revenue
problem_statement:
target_market:
team_size:
traction:
business_type: b2b-saas | services | marketplace | consumer
icp_segment:
top_pains:
hypothesis_selected:
channels_selected:
lead_magnet:
outbound_system:
published_pages:
```

## What to expect

1. Claude asks about the sherpa, then each question one at a time.
2. Answer conversationally. More detail gives better outputs all day.
3. You get a path suggestion with a reason.
4. Three tips for getting better AI output.
5. A startup snapshot and the handoff block.
6. Optional: a problem-solution fit score card.

## Output

- Startup snapshot (paste into Miro)
- Suggested path and the skills for each stage
- Three focus areas for the day
- The FOUNDER JAM HANDOFF block (save it)

## Next skill

Pick by path, then paste your handoff block:

- Product and positioning: `battle-card-builder.md`
- GTM and growth: `icp-definer.md`
- Sales: `icp-definer.md`
- Ops and automation: `market-analyzer.md`, then `hypothesis-engine.md`

---

Founder Jam curriculum and skills by Drew Burdick · program co-created with Innovate Charlotte · CC BY 4.0 · drewburdick.com/founderjam
