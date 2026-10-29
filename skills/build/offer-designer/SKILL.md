---
name: offer-designer
description: Growth Track Part 2. Design a lead magnet matched to your business type, map content workflow automation, and write a 7-email nurture sequence. Reads icp_segment from config. Writes lead_magnet.
---

# Offer Designer

Build your lead generation engine: a lead magnet your ICP will actually download, the automation workflow to capture and score leads, and a 7-email nurture sequence to convert them. This is Growth Track Part 2.

## Overview

Three sequential sub-activities:

1. **Offer + Lead Magnet Design** - Match lead magnet type to business type, write the offer framing, draft above-the-fold landing page copy
2. **Content Workflow Automation** - Map repurposing flow, lead capture pipeline, and lead enrichment workflow
3. **7-Email Nurture Sequence** - Build a day-by-day email sequence from lead magnet delivery to ongoing cadence

**Time estimate:** 75 minutes

## Setup

Read `config.json` if present. Required fields: `icp_segment`, `startup_name`, `business_type`, `facilitated_mode`.

If `icp_segment` is missing, ask: "What's your beachhead customer segment? (Run `icp-definer` first if you haven't.)"

If `business_type` is missing, ask: "What type of business is this? B2B SaaS, Services, Marketplace, or Consumer?"

## Process

### Optional Pre-Step: Value Proposition Canvas

If the founder has not yet articulated a clear value proposition, offer this as an optional pre-step before lead magnet selection. Skip if the founder already has a strong positioning statement from a previous session.

Use the Value Proposition Canvas (Alexander Osterwalder) to map customer needs to product value:

**Customer Profile:**
- Customer Jobs: What functional, social, and emotional jobs is the customer trying to accomplish?
- Customer Pains: What frustrates them about their current situation? (Rate severity 1-5)
- Customer Gains: What would make their life better? (Rate importance 1-5)

**Value Map:**
- Products & Services: What do you offer?
- Pain Relievers: How does your product address each pain?
- Gain Creators: How does your product create each gain?

The goal is fit: pain relievers match pains, gain creators match gains. If there are gaps, the lead magnet should address the most critical unmet pain.

Output a brief positioning statement if the founder needs one:
> "For [target customer] who [situation/need], [company] is a [category] that [key benefit]. Unlike [competitors/alternatives], we [key differentiator]."

---

### Sub-activity A: Offer + Lead Magnet Design

**Introduce the activity:**

"A lead magnet is a free resource that attracts your ICP and captures a contact. It should solve a real problem in the first five minutes. Let's design one matched to how your buyers actually make decisions."

**Step 1: Select lead magnet type by business type**

Present options based on `business_type`:

**B2B SaaS:**
- ROI Calculator -- "Input your current [cost/time], see your payback period with [startup_name]"
- Industry Benchmark Report -- "How does your [key metric] compare to peers in [industry]?"
- Implementation Checklist -- Step-by-step guide to [core outcome]

**Services / Agency:**
- Client Case Study -- Before/after with specific numbers, specific situation, specific timeline
- Template Library -- The actual templates your team uses (strategy deck, proposal, onboarding doc)
- Free Audit -- Scoped 20-minute review of a specific deliverable (landing page, sales deck, workflow)

**Marketplace:**
- Seller Success Guide -- "How our top 10 [supply-side participants] got their first 10 [transactions]"
- Buyer Decision Framework -- Step-by-step guide for buyers to evaluate options in this category

**Consumer:**
- Comparison Guide -- Side-by-side breakdown of top alternatives including yours
- "Before You Buy" Checklist -- What to look for and ask before making a decision
- Community Access -- Free entry to a Slack group, Discord, or private newsletter for this ICP

**Lead Magnet Complexity Tiers:**

Before selecting, orient the founder on realistic build times for the workshop day:

| Tier | Description | Build Time | Best For |
|------|-------------|-----------|---------|
| **EASY** | PDF, checklist, simple guide | 30-60 min | Everyone -- START HERE during the workshop |
| **MEDIUM** | Interactive quiz, simple calculator | 60-90 min | Companies with a clear ROI story |
| **HARD** | Custom tool, interactive app | 2-4+ hours | Post-event project, not for workshop day |

Recommend starting with an EASY tier lead magnet during the workshop. Medium and Hard tiers are post-event projects -- the founder should build and deploy an EASY version today and upgrade later once they have data.

**Lead Magnet Requirements Checklist:**

Before the founder begins building, validate the lead magnet concept against these six criteria. All six must be true:

- [ ] **Solves a specific problem** (not generic "tips" or "best practices")
- [ ] **Has a clear value promise** visible in the title
- [ ] **Can be consumed in under 10 minutes** (quick to value)
- [ ] **Leads naturally to the product or service** (logical next step)
- [ ] **Requires email to access** (gated -- the whole point is lead capture)
- [ ] **Has a clear CTA at the end** (drives the next action)

If a lead magnet fails any of these, revise before building. A checklist that checks all six boxes will outperform a polished guide that misses two.

**Step 2: Write the offer framing**

The offer framing is a single sentence using this structure:

> "Get [specific outcome] in [specific timeframe] using [specific method]."

**Examples by type:**
- ROI Calculator: "See exactly how much [startup_name] will save you in 15 minutes using our payback calculator."
- Case Study: "See how [generic company type] went from [pain state] to [outcome] in [timeframe]."
- Benchmark Report: "Find out how your [metric] stacks up against 200 [industry] companies in one click."

**Step 3: Write above-the-fold landing page copy**

Generate the four elements that appear before the scroll:

```
**Headline:** [Direct benefit statement addressing the ICP's #1 pain]

**Subhead:** [Expand on the headline -- who this is for, what they will walk away with]

**3 Bullet Outcomes:**
- [Specific thing they will learn or get -- use numbers where possible]
- [Second specific outcome]
- [Third specific outcome]

**CTA Copy:** [Action verb] + [what they get] (e.g., "Download the Calculator" / "Get the Benchmark Report")
```

**Facilitated mode challenge prompts:**
- "Would you give your email address for this lead magnet? Would your best customer?"
- "Is this lead magnet solving a real problem in 5 minutes, or is it just educational?"
- "What is the specific outcome someone can achieve using only what's in this lead magnet?"

**Output: Lead Magnet Brief**

```
## Lead Magnet Brief - [startup_name]

**Type:** [selected type]
**Working Title:** [draft title]
**Format:** [PDF / calculator / template / guide]
**One-paragraph description:** [what it is, who it's for, what they'll get]

**Offer Framing:**
Get [outcome] in [timeframe] using [method].

**Landing Page Copy:**
Headline: [headline]
Subhead: [subhead]
Outcomes:
- [bullet 1]
- [bullet 2]
- [bullet 3]
CTA: [CTA copy]
```

---

### Sub-activity B: Content Workflow Automation

**Introduce the activity:**

"Before we build the email sequence, let's map the plumbing -- how content creates leads and how leads get captured, scored, and routed. Even a simple version of this system saves hours every week."

**Repurposing workflow:**

Map how one piece of content becomes many. Present this as a sticky sequence for Miro:

```
Long-form foundation (blog post, podcast, or recorded talk)
  -> LinkedIn post: key insight + one example + link to full piece
  -> Twitter/X thread: numbered breakdown of main points (optional)
  -> Newsletter section: personal angle, deeper context, what it means for ICP
  -> Short video script: 30-60 second take on the single most counterintuitive idea
```

**Lead capture pipeline:**

From first touch to CRM in four steps:

```
Step 1: Form submission (Typeform, HubSpot form, or simple HTML)
Step 2: Immediate email confirmation + lead magnet delivery (automated)
Step 3: CRM entry with source tag (HubSpot free, Airtable, or Google Sheet at earliest stage)
Step 4: Nurture sequence triggered (see Sub-activity C)
```

**Lead enrichment flow:**

```
Form submission received
  -> Enrichment: pull company size, industry, LinkedIn URL (Apollo free tier or Clearbit)
  -> Score lead on ICP criteria: high / medium / low match
  -> Route:
     High match -> immediate personal outreach from founder (same day)
     Medium match -> automated nurture sequence (Sub-activity C)
     Low match -> newsletter-only list
  -> Log in CRM with enrichment data and score
```

**Tools mapped:**

| Tool | Purpose | Tier |
|------|---------|------|
| HubSpot CRM | Contact management, deal tracking, email sequences | Free |
| Zapier | Workflow automation (form -> CRM -> notifications) | Free (limited zaps) |
| Google Sheets | Simple CRM alternative at earliest stage | Free |
| Typeform | Lead capture forms with conditional logic | Free (limited) |
| Apollo.io | Lead enrichment (company + contact data) | Free (limited lookups) |
| Clay | Deep enrichment + AI scoring | Paid ($149/mo+) |
| ActiveCampaign | Email automation + advanced segmentation | Paid ($29/mo+) |

**Output: Automation Workflow Diagram (text-based, Miro-ready)**

```
## [startup_name] Lead Flow

[Content Published]
      |
      v
[Lead Magnet Landing Page]
      |
      v
[Form Submission]
      |
      +--> [Email Confirmation + Magnet Delivered] (Zapier + HubSpot)
      |
      +--> [CRM Entry Created] (HubSpot free)
      |
      +--> [Enrichment: Apollo lookup] (optional)
      |
      v
[ICP Score: High / Medium / Low]
      |
      +--[High]--> Founder personal outreach (same day)
      |
      +--[Medium]--> 7-email nurture sequence (see below)
      |
      +--[Low]--> Newsletter-only list
```

---

### Sub-activity C: 7-Email Nurture Sequence

**Introduce the activity:**

"The nurture sequence converts leads who are not ready to buy today into conversations next month. Seven emails, 21 days. The goal is one specific action at the end -- a reply, a booking, or a purchase."

**Ask first:** "What is the one outcome you want from this sequence -- a reply, a booking, or a purchase?"

This determines the CTA for Email 5 and Email 7.

**Subject Line Formulas:**

Use these patterns when generating subject lines for the sequence:

| Formula | Example |
|---------|---------|
| Question | "Is [problem] costing you [pain]?" |
| How-to | "How [Company] achieved [result]" |
| Number | "3 ways to [achieve outcome] without [pain]" |
| Curiosity | "The [topic] mistake everyone makes" |
| Urgency | "Quick question about [company]'s [area]" |
| Personalized | "For [First Name] from [Company]" |
| Story | "How I learned [lesson] the hard way" |
| Benefit | "Achieve [result] in [timeframe]" |

Best practices: keep under 50 characters when possible, use first name sparingly (not every email), avoid spam triggers (FREE, ACT NOW, !!!), match subject to content.

**Generate the full 7-email sequence:**

For each email, produce a subject line and a full fill-in email body using the templates below. All copy should be written for the `icp_segment` persona identified in `icp-definer`. Include personalization tokens ([First Name], [Company]) and P.S. hooks where indicated.

**Email 1 -- Day 0 (Immediate after form submission)**
- Purpose: Deliver the lead magnet, set expectations for the sequence
- Subject: "Here's your [lead magnet title], [First Name]"
- Template:

```
Hey [First Name],

Thanks for downloading [Lead Magnet Title]!

Here's your copy: [Link]

Quick tip: [Specific insight from the lead magnet that teases the most valuable part -- write one sentence that makes them want to open it immediately].

Over the next few weeks I'll send you [X] short emails about [topic] -- practical, no fluff. If you want to [take the next step], I'm happy to [specific offer].

[Your Name]
[Company]

P.S. In my next email, I'll share [teaser for Email 2 -- make it specific and curiosity-driven].
```

**Email 2 -- Day 2**
- Purpose: Pure value -- one insight with no ask
- Subject: Use Curiosity or Number formula
- Template:

```
Hey [First Name],

Most [target audience] struggle with [topic] because they [common mistake].

Here's what I've learned working with [X number of] customers:

[Key insight #1 -- specific and actionable]

[Key insight #2 -- counterintuitive or surprising]

[Key insight #3 -- immediately applicable]

The fix? [Simple framework or one-sentence approach].

Reply if this resonates -- I read every email.

[Your Name]
```

**Email 3 -- Day 5**
- Purpose: Education -- how to think about the problem
- Subject: "Why most [ICP descriptor] get [core challenge] wrong"
- Template:

```
Hey [First Name],

Let me reframe something about [core problem]:

[Share the mental model or industry context that changes how they think about it. 2-3 sentences that connect back to what the lead magnet started.]

[Explain why the conventional approach fails -- be specific, not generic.]

[Introduce your alternative framing in 1-2 sentences.]

Tomorrow I'll share how one [customer type] applied this and what happened.

[Your Name]
```

**Email 4 -- Day 8**
- Purpose: Social proof -- customer story with specifics
- Subject: "How [generic company/person type] went from [pain state] to [outcome]"
- Template:

```
Hey [First Name],

Quick story for you:

[Customer Name/Type] came to us with [specific problem]. They had tried [alternatives] but [why those didn't work].

After working with us:
- [Result 1 -- specific number or outcome]
- [Result 2 -- specific number or outcome]
- [Result 3 -- specific number or outcome]

Here's what made the difference: [Key insight about why it worked].

Want similar results? [Soft CTA -- reply or link]

[Your Name]

P.S. [Personal note or additional proof point]
```

**Email 5 -- Day 12**
- Purpose: Value + soft CTA (first gentle offer)
- Subject: "[Resource title] -- thought you'd want this"
- Template:

```
Hey [First Name],

I put together [resource/framework/guide] that I think you'll find useful:

[Describe the resource in 1-2 sentences -- what it is and why it matters to them]

[Link or inline content]

If you're working through [specific problem], I'd be happy to [specific offer -- 20-minute call / quick review / free demo].

No pressure -- but if [pain point] is costing you [specific cost], it's worth a conversation.

[Calendly Link or "Just reply to this email"]

[Your Name]
```

**Email 6 -- Day 16**
- Purpose: Address the most common objection
- Subject: "The most common reason [ICP] don't [take desired action]"
- Template:

```
Hey [First Name],

I'll be direct: the #1 reason [target audience] don't [take desired action] is [name the objection directly].

I get it. [Empathize -- 1-2 sentences showing you understand why this objection is real.]

But here's what I've seen: [Counter-argument or reframe with a specific example or data point.]

If that's what's been holding you back, [specific next step -- reply, book a call, try a free version].

[Your Name]

P.S. [Address a secondary objection or add urgency]
```

**Email 7 -- Day 21**
- Purpose: Ongoing cadence invitation
- Subject: "Still thinking about [core pain/topic]?"
- Template:

```
Hey [First Name],

A few weeks ago you downloaded [Lead Magnet Title] because [remind them of their pain/goal].

Is [solving this problem] still a priority?

If yes, here are two ways I can help:

1. [Quick option -- reply to this email, join community, etc.]
2. [Deeper option -- book a call, start a trial, etc.]

If now isn't the right time, no worries -- I'll keep sending [weekly/monthly] insights on [topic]. You can always reply when the timing is right.

[Your Name]

P.S. [Hook -- something valuable coming soon or a final compelling reason to act]
```

- After this email: move to monthly newsletter cadence for long-term nurture.

**Facilitated mode challenge prompts:**
- "What would make someone forward this email to a colleague?"
- "Which email in the sequence is most likely to get a reply? Is it soon enough?"
- "What is the one outcome you want from this sequence -- a reply, a booking, or a purchase?"

**Output: 7-Email Sequence**

```
## 7-Email Nurture Sequence - [startup_name]

### Email 1 - Day 0
Subject: [subject line]
Body:
[3-5 sentences]
CTA: [action]

### Email 2 - Day 2
Subject: [subject line]
Body:
[3-5 sentences]

### Email 3 - Day 5
Subject: [subject line]
Body:
[3-5 sentences]

### Email 4 - Day 8
Subject: [subject line]
Body:
[3-5 sentences]

### Email 5 - Day 12
Subject: [subject line]
Body:
[3-5 sentences]
CTA: [booking link or reply instruction]

### Email 6 - Day 16
Subject: [subject line]
Body:
[3-5 sentences]

### Email 7 - Day 21
Subject: [subject line]
Body:
[3-5 sentences]
CTA: [final offer or community invitation]
```

## Write Config

After completing all three sub-activities, update `config.json`:

```json
{
  "lead_magnet": "[selected type] - [working title]"
}
```

## Config Dependencies

**Reads:** `icp_segment`, `startup_name`, `business_type`, `facilitated_mode`
**Writes:** `lead_magnet`

## Platform Notes

| Platform | Behavior |
|----------|----------|
| Claude Code | Full flow: reads config.json, writes lead_magnet |
| Claude Desktop | Full flow: manual ICP input if config missing |
| Claude Cowork | Full flow: rich text output works well for email sequence review |
