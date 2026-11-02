# Offer Designer - Instructions for Claude Desktop / Cowork

## What This Skill Does

Builds your lead generation engine in three connected pieces: a lead magnet matched to how your ICP actually makes decisions, the automation workflow to capture and score leads from it, and a 7-email nurture sequence to convert cold leads into warm conversations. Every output in this skill is tailored to the beachhead segment you selected in ICP Definer.

**Time:** 75 minutes | **Stage:** Build. **Best for paths:** GTM and growth

## How to Use

Copy everything below the line and paste it into a new Claude Desktop or Cowork conversation. If you ran ICP Definer first, include your ICP Card in the context section below.

---

## Activation Prompt

```
I am in the Build stage at Founder Jam, on the GTM and growth path. Help me run the Offer Designer activity, three sub-activities to build my lead magnet, automation workflow, and email nurture sequence.

My startup context:
- Startup name: [your startup name]
- Business type: [B2B SaaS / Services / Marketplace / Consumer]
- ICP beachhead segment: [paste your ICP Card or describe your beachhead customer in 2-3 sentences]
- Desired outcome from nurture sequence: [a reply / a booked call / a purchase]

Run these three sub-activities in order:

**Optional Pre-Step: Value Proposition Canvas**
If I don't have a clear value proposition yet, help me map Customer Profile (jobs, pains, gains) to Value Map (products, pain relievers, gain creators) and write a positioning statement. Skip if I already have positioning from a previous session.

**Sub-activity A: Offer + Lead Magnet Design**
- Orient me on lead magnet complexity tiers: EASY (30-60 min, do today), MEDIUM (60-90 min), HARD (2-4+ hours, post-event)
- Present lead magnet options matched to my business type
- Before building, validate against 6 requirements: solves specific problem, clear value promise, consumable in <10 min, leads to product, requires email, has CTA
- Help me select one and write the offer framing: "Get [outcome] in [timeframe] using [method]"
- Draft above-the-fold landing page copy: headline, subhead, 3 bullet outcomes, CTA

**Sub-activity B: Content Workflow Automation**
- Map a content repurposing workflow (long-form -> LinkedIn -> newsletter -> video)
- Map the lead capture pipeline (form -> confirmation -> CRM)
- Map a lead enrichment flow (form submission -> enrich -> score -> route)
- List tools for each step with free vs. paid options

**Sub-activity C: 7-Email Nurture Sequence**
Use this structure, tailored to my ICP and offer:
Use 8 subject line formulas (Question, How-to, Number, Curiosity, Urgency, Personalized, Story, Benefit) and generate:
- Email 1 (Day 0): Deliver lead magnet + set expectations + P.S. hook
- Email 2 (Day 2): Pure value, no ask
- Email 3 (Day 5): Education, how to think about the problem
- Email 4 (Day 8): Social proof, customer story with specific numbers + P.S.
- Email 5 (Day 12): Value + soft CTA (first gentle offer)
- Email 6 (Day 16): Address the most common objection + P.S.
- Email 7 (Day 21): Ongoing cadence invitation + P.S.
For each email: subject line + full fill-in email body with personalization tokens ([First Name], [Company])

Challenge my thinking along the way:
- "Would you give your email address for this lead magnet? Would your best customer?"
- "What would make someone forward this email to a colleague?"
- "Which email is most likely to get a reply, is it soon enough?"

At the end, output all Miro-ready artifacts:
1. Lead Magnet Brief (type, title, format, description)
2. Landing Page Copy (headline, subhead, bullets, CTA)
3. Automation Workflow Diagram (text-based sticky sequence)
4. 7-Email Sequence (subject lines + body for each)
5. Tools List (free vs. paid with setup complexity)

Handoff: if I paste a FOUNDER JAM HANDOFF block (key: value lines such as startup_name, mode, path, stage, problem_statement, target_market, icp_segment, hypothesis_selected, channels_selected, lead_magnet), use it as my context and ask only for what is missing. If I'm working alone, skip the challenge questions unless I ask to be pushed harder. When you finish, print the full block again in a code box with your new fields, and any field I gave you that the block was missing, filled in and every other field unchanged, so I can paste it into the next prompt. Print the block in this layout: a first line `FOUNDER JAM HANDOFF`, then `version: 2`, then one `key: value` line for each of startup_name, mode, path, stage, problem_statement, target_market, team_size, traction, business_type, icp_segment, top_pains, hypothesis_selected, channels_selected, lead_magnet, outbound_system, published_pages, in that order. Leave a value empty when it is unknown, and write channels_selected and published_pages as comma-separated lists on one line.
```

## What to Expect

1. Claude will ask which lead magnet type fits your business best and help you write the offer framing
2. You will review and refine the landing page copy before moving on
3. Sub-activity B produces a visual workflow you can paste into Miro as a sticky sequence
4. Sub-activity C builds each email one at a time, you can refine each before moving to the next
5. All outputs are formatted to paste directly into Miro or your email tool

## Output

- **Lead Magnet Brief**: type, title, format, one-paragraph description
- **Landing Page Copy**: headline, subhead, 3 bullets, CTA (ready to paste into Carrd, Squarespace, or HubSpot)
- **Automation Workflow Diagram**: text-based, Miro-ready sticky sequence
- **7-Email Sequence**: subject lines and body copy for all 7 emails
- **Tools List**: free vs. paid with setup complexity rating

Save the Lead Magnet Brief, `growth-builder` will ask for it.

## Next Skill

Next: `growth-builder.md`. Paste your updated handoff block.

---

Founder Jam curriculum and skills by Drew Burdick · program co-created with Innovate Charlotte · CC BY 4.0 · drewburdick.com/founderjam
