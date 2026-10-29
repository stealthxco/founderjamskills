---
name: outbound-composer
description: Growth Track supplement (Part 3 alternative or follow-on). Turn founder-led selling into a founder-led outbound SYSTEM - prospect sourcing plan, LinkedIn + email sequences, a daily cadence, reply triage, and founder-content air cover. Manual-first, with HeyReach/Instantly as an optional scale tier. Reads icp_segment, lead_magnet, channels_selected. Writes outbound_system.
---

# Outbound Composer

Most early-stage founders already do outbound - a LinkedIn DM here, a warm intro there. What they don't have is a *system*: a repeatable list-build, message sequence, daily cadence, and triage rules that fill the calendar without depending on mood or memory. This skill builds that system in one sitting.

Use it when the founder's primary channel is direct outreach (most B2B SaaS and Services companies, and the supply side of most marketplaces). It pairs with `growth-builder` - run this instead of (or after) growth-builder's automation sub-activity when outbound IS the automation that matters.

## Overview

Three sequential sub-activities:

1. **Prospect Sourcing Plan** - Where the first 100 ICP-matched prospects come from, with copy-paste search recipes
2. **Sequences** - A 3-touch LinkedIn sequence and 4-touch email sequence, personalized from the founder's ICP and lead magnet
3. **Cadence, Triage & Air Cover** - The daily 30-minute operating block, reply-triage rules, and 2 posts/week of founder content that echoes the sequences

**Time estimate:** 60-90 minutes

## Setup

Read `config.json` if present. Required fields: `icp_segment`, `startup_name`, `business_type`, `stage`, `facilitated_mode`. Helpful fields: `lead_magnet`, `channels_selected`.

If `icp_segment` is missing, ask: "What's your beachhead customer segment? (Run `icp-definer` first if you haven't.)"

If `lead_magnet` is missing, note: "You can run outbound without a lead magnet, but reply rates roughly double when you have something to GIVE. Consider running `offer-designer` first, or we'll use a 'useful question' opener instead."

**Fit check before starting:** Outbound works when (a) the ICP is identifiable by title/role/company attributes, (b) deal value justifies 1:1 effort (rule of thumb: LTV over $500), and (c) the founder can commit 30 minutes a day for 30 days. If the business is consumer with low LTV, say so and recommend community/content channels instead - do not build an outbound system that shouldn't exist.

## Process

### Sub-activity A: Prospect Sourcing Plan

**Introduce the activity:**

"Sequences don't fail because of copy. They fail because of lists. We're going to define exactly who the first 100 prospects are and where each one comes from - before we write a single message."

**Step 1: Translate the ICP into searchable attributes**

From `icp_segment`, extract:

```
Titles/roles: [3-6 job titles, including non-obvious variants]
Company attributes: [size range, industry, geography, tech signals]
Trigger signals: [hiring for X, posted about Y, recently funded, opened new location...]
Disqualifiers: [attributes that make outreach a waste of time]
```

**Step 2: Build search recipes**

Generate copy-paste recipes for at least three of these sources, matched to the ICP:

| Source | Recipe format | Cost |
|--------|--------------|------|
| LinkedIn search | Boolean title string + filters to apply (geography, industry, company size) | Free |
| LinkedIn Sales Navigator | Full filter stack (title, headcount, geography, posted-in-90-days) | Trial/paid |
| Apollo.io | Persona filter set (titles + industry + employee range) - also yields verified emails | Free tier |
| Communities & groups | Named FB groups, Slack/Discord communities, subreddits where the ICP self-identifies | Free |
| Directories & lists | Industry associations, local business registries, conference attendee/sponsor lists, app-store/marketplace seller lists | Free |
| Their own network | Past conversations, existing customers' lookalikes, warm-intro map (who do current customers know?) | Free |

**Example recipe (B2B SaaS, compliance buyer):**
```
LinkedIn boolean: ("Chief Compliance Officer" OR "VP Compliance" OR "Head of Risk"
  OR "BSA Officer") NOT consultant NOT student
Filters: United States, Financial Services, 51-1,000 employees
Trigger overlay: engaged with posts about [regulation/topic] in last 90 days
```

**Step 3: Set up the tracking sheet**

One spreadsheet (Google Sheets is fine) with columns:

```
Name | Title | Company | Source | LinkedIn URL | Email | Personalization note |
Sequence step | Last touch date | Status (new/contacted/replied/booked/closed/not-now) | Notes
```

The "Personalization note" column is mandatory - one specific observation per prospect (a post they wrote, a company event, a shared connection). If the founder can't find one in 60 seconds, the prospect goes to a lower-priority batch.

**A note on "scraping":** this skill outputs search recipes and list-building guidance, not scraping scripts. Bulk-scraping LinkedIn violates its terms and risks the founder's account - the exact account they need for outreach. Apollo/exports and manual list-building get to 100 prospects in 2-3 hours without that risk.

**Facilitated mode challenge prompts:**
- "Name three real people, right now, who match this ICP. If you can't, the ICP is too abstract to prospect against."
- "Which source gives you prospects with a trigger signal, not just a matching title?"
- "What disqualifies a prospect? If nothing does, your list will be 40% waste."

**Output: Sourcing Plan**

```
## Prospect Sourcing Plan - [startup_name]

Target: 100 prospects in [X] days
Titles: [...]
Company filter: [...]
Trigger signals: [...]
Disqualifiers: [...]

Source 1: [source] - [recipe] - expected yield: [N]
Source 2: [source] - [recipe] - expected yield: [N]
Source 3: [source] - [recipe] - expected yield: [N]

Tracking sheet: [link/location]
```

---

### Sub-activity B: Sequences

**Introduce the activity:**

"Now the messages. Two rules: every touch either gives something or asks a genuinely useful question - never 'just checking in.' And every first touch has one personalized line that could not have been sent to anyone else."

**Ask first:** "What's the ONE outcome a sequence should drive - a booked call, a reply, or a pilot signup?" This sets the CTA throughout.

**LinkedIn sequence (3 touches over ~10 days):**

**Touch 1 - Connection request (Day 0)** - under 300 characters, no pitch:
```
Hi [First Name] - [one-line personalized observation: their post, company news,
shared community]. I work with [ICP descriptor] on [problem space] and try to
connect with people thinking about this. No pitch - just relevant.
```

**Touch 2 - Value DM (Day 2-3, after accept):**
```
Thanks for connecting, [First Name]. Quick one - [one-sentence insight or
question tied to their situation].

[If lead_magnet exists:] I put together [lead magnet title] on exactly this -
happy to send it over if useful. No strings.

[If no lead magnet:] Curious how you're handling [specific pain] at [Company]
today - most [ICP descriptor] I talk to are doing [common workaround].
```

**Touch 3 - Direct ask (Day 8-10):**
```
[First Name] - I'll be direct so I don't clutter your inbox. We help
[ICP descriptor] [specific outcome] ([one proof point]). Worth a 15-minute
look at whether it fits [Company]? If not, no worries - happy to just share
what's working for others in [their industry].
```

**Email sequence (4 touches over ~14 days):**

Generate all four with subject lines, using the founder's ICP, offer, and proof points. Structure:

- **Email 1 (Day 0):** Personalized observation -> one-sentence problem statement -> give (lead magnet or insight) -> soft CTA ("worth a look?"). Under 90 words.
- **Email 2 (Day 3):** New angle on the pain + one proof point (customer result, stat). CTA: 15-minute call. Under 80 words.
- **Email 3 (Day 8):** The "useful even if you never buy" email - share a checklist, benchmark, or teardown insight. CTA: reply.
- **Email 4 (Day 14):** Breakup with door open - "closing the loop; if [pain] becomes a priority, here's where to find me" + link to lead magnet/newsletter.

Deliverability guardrails to state: warm domains only (no brand-new domain blasting day one), under 30 cold emails/day per inbox to start, plain text, one link max per email, always a working unsubscribe/opt-out line for cold email (CAN-SPAM).

**Personalization rules (state these explicitly):**
1. First line of every first touch is unique to the prospect (that Personalization-note column).
2. Merge-field-only "personalization" ([First Name] at [Company]) does not count.
3. 10 highly personalized messages beat 50 generic ones on replies AND on account safety.

**Facilitated mode challenge prompts:**
- "Read Touch 1 out loud. Would YOU accept this connection request from a stranger?"
- "Where's the give? If every touch asks and none gives, rewrite."
- "What does the prospect learn from Email 3 even if they never buy? If nothing, it's not a value email."

**Output: Sequence Pack** - full copy for all 7 touches with day offsets, subject lines, and the chosen CTA.

---

### Sub-activity C: Cadence, Triage & Air Cover

**The daily 30-minute block (be prescriptive):**

```
Minutes 0-10:  Reply handling first. Answer every reply before any new outreach.
Minutes 10-20: 10 new Touch 1s (LinkedIn) or 10 new Email 1s - with personalization notes.
Minutes 20-25: Advance due follow-ups (Touch 2/3, Emails 2-4) per the tracking sheet.
Minutes 25-30: Log everything. Update statuses. Note reply themes.
```

Weekly output at this pace: ~50 new prospects contacted, ~150 total touches. At typical cold benchmarks (15-30% LinkedIn accept, 3-8% positive reply), that's 2-5 real conversations per week - from 2.5 hours of founder time.

**Reply triage rules:**

| Reply type | Rule |
|-----------|------|
| Interested | Book the call in the SAME reply (2 time options + link). Never "what works for you?" ping-pong. |
| Question/objection | Answer it directly + one proof point + soft re-ask. |
| Not now | Ask permission for one follow-up in 60/90 days, log the date, add to newsletter/nurture. |
| Referral ("talk to X") | Thank + ask for the intro explicitly + connect with X same day. |
| No / unsubscribe | Mark closed. Never re-add. Thank them if replied. |

**Founder-content air cover (2 posts/week):**

Outbound and content compound: prospects who receive a DM check the founder's profile. Two posts/week, each echoing a sequence theme, turn that profile check into warm-up. Generate 4 post skeletons (2 weeks) from the sequence copy:

- Post type 1: The pain observation (Email 2's angle, expanded to 150 words, no pitch)
- Post type 2: The teardown/insight (Email 3's give, as a numbered list)
- Post type 3: Proof point story (customer result, told as narrative)
- Post type 4: Contrarian take on the category's default approach

**The tooling ladder** - present as a progression, not a menu:

| Tier | When | Stack | Cost |
|------|------|-------|------|
| **1 - Manual (START HERE)** | First 30 days, always | LinkedIn + your inbox + the tracking sheet | $0 |
| **2 - Email infrastructure** | Cold email at over 30/day | Instantly or Smartlead: secondary domain, 2-3 warmed inboxes, sequence automation | ~$30-100/mo |
| **2 - LinkedIn automation** | Proven copy + established account | HeyReach: import list (CSV: firstName, lastName, company, linkedinUrl, personalization), recreate the 3-touch sequence, throttle to platform-safe limits | ~$79/mo/seat |
| **3 - Enrichment/scoring** | Volume makes triage the bottleneck | Apollo/Clay enrichment -> ICP score -> route (mirrors growth-builder's enrichment spec) | varies |

**State the safety rule plainly:** do not automate LinkedIn outreach from a new or small (under ~500 connections) account, and never automate before the copy has earned replies manually. Automation multiplies whatever you feed it - including bans and silence. The 30-day plan below is Tier 1 on purpose.

**Facilitated mode challenge prompts:**
- "When exactly is your 30-minute block? If it isn't on the calendar, it doesn't exist."
- "What reply rate over the first 100 touches makes you keep this copy vs. rewrite it?" (Anchor: under 3% positive = rewrite the ICP or the give, not just the words.)

**Output: Outbound Operating System (one page)**

```
## Outbound OS - [startup_name]

North-star: [booked calls or replies] per week, target [N]
Daily block: [time] - 10 new touches + follow-ups + triage
List: 100 prospects from [sources], tracked in [sheet]
Sequences: LinkedIn 3-touch + Email 4-touch (v1 copy attached)
Air cover: 2 posts/week echoing sequence themes
Tier: 1 (manual) for 30 days; graduate to [Instantly/HeyReach] if
      positive-reply rate holds above [X]% at 100+ touches
Week 4 review: keep / rewrite / rethink-channel based on
      [green: N+ calls | yellow: replies but no calls | red: under 3% positive]
```

## Write Config

After completing all three sub-activities, update `config.json`:

```json
{
  "outbound_system": "[channel mix] - [N]/day cadence - CTA: [outcome] - Tier 1 until [date/threshold]"
}
```

## Config Dependencies

**Reads:** `icp_segment`, `startup_name`, `business_type`, `stage`, `facilitated_mode`, `lead_magnet` (optional), `channels_selected` (optional)
**Writes:** `outbound_system`

## Platform Notes

| Platform | Behavior |
|----------|----------|
| Claude Code | Full flow: reads/writes config.json; can also draft the tracking-sheet CSV to a file |
| Claude Desktop | Full flow with manual context input; founder copies outputs to their own sheet |
| Claude Cowork | Full flow; sequence pack renders well for live editing with a facilitator |
