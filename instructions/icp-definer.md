# ICP Definer - Instructions for Claude Desktop / Cowork

## What This Skill Does

Moves you from a fuzzy target market to a specific beachhead customer with a clear distribution strategy. You will define 2-3 customer segments using Jobs-to-be-Done, score and select one beachhead, analyze how competitors are growing, and commit to 1-2 primary distribution channels.

**Time:** 75 minutes | **Stage:** Focus. **Best for paths:** GTM and growth, sales

## How to Use

Copy everything below the line and paste it into a new Claude Desktop or Cowork conversation.

---

## Activation Prompt

```
I am in the Focus stage at Founder Jam. Help me run the ICP Definer activity, three sequential sub-activities to define my ideal customer and distribution strategy.

My startup context:
- Startup name: [your startup name]
- Problem: [one sentence, what problem you solve]
- Target market (rough): [who you think your customer is]
- Stage: [idea / pre-revenue / early-revenue]
- Business type: [B2B SaaS / Services / Marketplace / Consumer]

Run these three sub-activities in order:

**Sub-activity A: ICP Definition via Jobs-to-be-Done**
- Generate 2-3 distinct ICP segments using the JTBD framework: "When [trigger], I want to [motivation], so I can [outcome]"
- Score each segment on: pain intensity, willingness to pay, reachability, and founder advantage (1-5 each)
- Recommend one beachhead segment to own first
- If this is a marketplace: define supply and demand separately and recommend starting with the supply (harder) side
- After selecting the beachhead, check for ICP Red Flags: "We can help anyone", "Both enterprise and SMB", no trigger event, can't name a real person, demographics not problems
- Pressure-test with 5 validation questions: Who is the BEST fit and why? Who should we NOT target? How do they find solutions today? What would make them say no? What's the buying process?
- Optional: evaluate segments through an Opportunity Segmentation Matrix (Future Focus / Just the Money / Worst Customers)

**Sub-activity B: Competitive Growth Analysis**
- Identify 3-5 competitors (direct, indirect, and status quo)
- Analyze each competitor's growth tactics: content strategy, SEO approach, social presence, partnerships, paid acquisition
- Map content gaps, topics they are not covering that my ICP cares about
- Generate a growth battle card for each competitor

**Sub-activity C: Distribution Strategy**
- Evaluate 4-6 relevant channels against 4 criteria: audience match, competition level, time to traction, founder advantage (1-5 each)
- Recommend 1-2 primary channels with rationale
- Name 1 channel to explicitly deprioritize and explain why
- Output a distribution strategy brief with a 30-day activation plan

Challenge my thinking along the way:
- "Who has this problem the worst, right now, and would pay the most to fix it?"
- "Which competitor is growing fastest, and what are they doing that you could do better?"
- "What channel gives you 100 conversations in 30 days without paid budget?"
- "If you picked the wrong beachhead, how long until you'd know?"

At the end, output all four Miro-ready artifacts:
1. ICP Card (JTBD statement + profile)
2. Segment Comparison Table (all segments scored)
3. Competitive Growth Battle Cards (one per competitor)
4. Channel Selection Matrix + Distribution Strategy Brief

Handoff: if I paste a FOUNDER JAM HANDOFF block (key: value lines such as startup_name, mode, path, stage, problem_statement, target_market, icp_segment, hypothesis_selected, channels_selected, lead_magnet), use it as my context and ask only for what is missing. If I'm working alone, skip the challenge questions unless I ask to be pushed harder. When you finish, print the full block again in a code box with your new fields, and any field I gave you that the block was missing, filled in and every other field unchanged, so I can paste it into the next prompt. Print the block in this layout: a first line `FOUNDER JAM HANDOFF`, then `version: 2`, then one `key: value` line for each of startup_name, mode, path, stage, problem_statement, target_market, team_size, traction, business_type, icp_segment, top_pains, hypothesis_selected, channels_selected, lead_magnet, outbound_system, published_pages, in that order. Leave a value empty when it is unknown, and write channels_selected and published_pages as comma-separated lists on one line.
```

## What to Expect

1. Claude will walk you through each sub-activity in sequence
2. Sub-activity A: you will craft JTBD statements for 2-3 segments and select a beachhead
3. Sub-activity B: share what you know about competitors and Claude will build growth battle cards
4. Sub-activity C: you will score channels and get a specific distribution recommendation
5. Each section ends with Miro-ready output you can copy directly into your board

## Output

- **ICP Card**: JTBD statement, profile, psychographic triggers (paste into Miro)
- **Segment Comparison Table**: all 2-3 segments scored on 4 criteria
- **Competitive Growth Battle Cards**: one per competitor, acquisition-focused
- **Channel Selection Matrix**: all evaluated channels with scores and rationale
- **Distribution Strategy Brief**: 1-2 channels with 30-day activation plan

Save the ICP Card and Distribution Strategy Brief. `offer-designer` and `growth-builder` will ask for them.

## Next Skill

Next is the Build stage. GTM and growth: `lead-magnet-ideator.md` (in `../starter-kit/paste-in/`), then `offer-designer.md`. Sales: `outbound-composer.md`. Paste your updated handoff block.

---

Founder Jam curriculum and skills by Drew Burdick · program co-created with Innovate Charlotte · CC BY 4.0 · drewburdick.com/founderjam
