# Outbound Composer - Instructions for Claude Desktop / Cowork

## What This Skill Does

Turns founder-led selling into a founder-led outbound system: a prospect sourcing plan with copy-paste search recipes, a 3-touch LinkedIn + 4-touch email sequence pack personalized to your ICP, a daily 30-minute cadence with reply-triage rules, and 2 posts/week of founder content that echoes your sequences. Manual-first by design - automation (HeyReach/Instantly) is presented as a tier you graduate into after the copy earns replies.

**Time:** 60-90 minutes | **Growth Track supplement (run after Offer Designer; alternative or follow-on to Growth Builder's automation sub-activity)**

## When To Use It

Your primary channel is direct outreach - true for most B2B SaaS, services firms, and the supply side of marketplaces. Skip it if you're low-LTV consumer; ask for community/content strategies instead.

## How to Use

Copy everything below the line into a new Claude conversation. Fill in your context from ICP Definer and Offer Designer.

---

## Activation Prompt

```
I am working on the Growth Track at Founder Jam. Help me run the Outbound Composer
activity - three sub-activities to build my founder-led outbound system.

My startup context:
- Startup name: [name]
- Stage: [idea / pre-revenue / early-revenue]
- Business type: [B2B SaaS / Services / Marketplace / Consumer]
- ICP beachhead: [one-line description from icp-definer]
- Lead magnet: [name/type from offer-designer, or "none yet"]
- Outcome I want from outreach: [booked call / reply / pilot signup]
- My LinkedIn account: [rough connection count + how active I am]

First, run a fit check: confirm outbound is the right primary channel for my
business type and LTV. If it isn't, tell me directly and suggest what to run instead.

Then run three sub-activities in order:

**Sub-activity A: Prospect Sourcing Plan**
- Translate my ICP into searchable attributes (titles, company filters, trigger
  signals, disqualifiers)
- Give me copy-paste search recipes for at least 3 sources (LinkedIn boolean +
  filters, Apollo persona filters, communities/directories where my ICP
  self-identifies)
- Set up my tracking sheet columns, including a mandatory per-prospect
  personalization note
- Target: my first 100 prospects. No scraping scripts - search recipes and
  list-building only.

**Sub-activity B: Sequences**
- Write my 3-touch LinkedIn sequence (connection request under 300 chars with a
  personalized first line; value DM offering my lead magnet; direct ask) with
  day offsets
- Write my 4-touch email sequence (personalized give -> proof point -> useful-even-
  if-they-never-buy value email -> breakup with door open) with subject lines,
  under 90 words each, one link max
- Enforce: every touch gives something or asks a useful question; merge-field-only
  personalization doesn't count
- State deliverability guardrails (warm domain, volume ramp, opt-out line)

**Sub-activity C: Cadence, Triage & Air Cover**
- Prescribe my daily 30-minute block (replies first, then 10 new touches, then
  follow-ups, then logging)
- Give me reply-triage rules for: interested / objection / not-now / referral / no
- Draft 4 LinkedIn post skeletons (2 weeks of air cover) that echo my sequence themes
- Present the tooling ladder: Tier 1 manual ($0, where I START), Tier 2
  Instantly/Smartlead for email volume or HeyReach for LinkedIn (only after copy
  is proven AND my account is established), Tier 3 enrichment/scoring
- End with my one-page Outbound OS: weekly target, daily block time, decision
  thresholds for week 4 (green/yellow/red)

Challenge me hard: make me name three real people who match my ICP, read my
connection request out loud, and commit to a calendar slot for the daily block.
```
