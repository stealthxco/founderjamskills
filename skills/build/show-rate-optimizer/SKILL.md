---
name: show-rate-optimizer
description: Generate confirmation sequences, pre-call value notes, and no-show recovery emails to maximize discovery call show rates. Implements Hormozi's 89% show-rate protocol adapted for B2B service businesses.
---

# Show Rate Optimizer Skill

## Overview

Every missed discovery call is lost pipeline. For a firm that needs 5-10 qualified conversations per month, moving from a typical 60% show rate to 89% nearly doubles effective pipeline without generating a single additional lead.

This skill handles everything between "call booked" and "prospect showed up." It generates the full confirmation sequence, pre-call personalization, and no-show recovery.

Key capabilities:
- Generate 3-email confirmation sequences matched with relevant case studies or proof
- Create personalized pre-call value notes for each prospect
- Produce no-show recovery sequences
- Track show rates over time and recommend adjustments

## Config Dependencies

**Reads from `config.json`:**
- `startup_name` -- company name for email templates
- `icp_segment` -- target customer profile for case study matching
- `business_type` -- service model context

**Optional config fields:**
- `crm_platform` -- CRM for integration guidance
- `scheduling_tool` -- calendar booking tool (e.g., "calendly", "hubspot meetings")
- `service_areas` -- array of service offerings for case study matching

**Writes:** Nothing (output is presented for review and manual saving)

## The 89% Show-Rate Protocol (Hormozi, Adapted)

Hormozi's lead nurture playbook achieves up to 89% show rates through a data-driven sequence. This adaptation replaces consumer urgency tactics with professional, value-first communication.

### Why Most Show Rates Are Low

| Cause | Fix |
|-------|-----|
| No confirmation sent | Immediate confirmation with calendar invite |
| Prospect forgets | 24-hour and 1-hour reminders |
| Prospect loses motivation | Each touchpoint adds value (case study, insight) |
| Prospect feels unprepared | Pre-call value note reduces anxiety |
| Prospect finds another option | Case studies demonstrate unique differentiation |
| No cost of missing the call | Value note makes them feel they'll miss something specific |

### The Sequence: 3 Emails + 1 Value Note

```
[Call Booked]
     |
     v
[Email 1: Immediate Confirmation]
     |  Delivers: calendar invite + most relevant case study or proof point
     |
     v
[Email 2: 24-Hour Reminder] (sent 24 hours before the call)
     |  Delivers: second proof point + "here's what we'll cover"
     |
     v
[Email 3: 1-Hour Reminder] (sent 1 hour before the call)
     |  Delivers: meeting link + personalized value note teaser
     |
     v
[Call Happens] --> Run your discovery call framework
     |
     or
     |
[No-Show] --> Recovery Sequence
```

## Email Templates

### Email 1: Immediate Confirmation

Sent within minutes of the call being booked. Make the prospect feel this was a smart decision.

```
Subject: Confirmed: [Prospect First Name] <> [Your Name], [Day] at [Time]

Hey [First Name],

Looking forward to our conversation on [Day] at [Time] [Timezone].

Here's the calendar invite: [link]
Meeting link: [video call link]

To give you a sense of how we work, here's a quick look at a recent engagement with a [similar industry/company type] company:

[Case Study Summary -- 3-4 sentences max]
- Situation: [what they faced]
- What we did: [engagement type and approach]
- Result: [specific measurable outcome]

If anything comes to mind before our call, feel free to reply to this email.

Talk soon,

[Your Name]
```

**Case Study Matching Rules:**

Select the most relevant proof point based on (in priority order):
1. Same industry vertical
2. Same company size range
3. Same primary challenge
4. Same engagement type

If no close match exists, use the most impressive general outcome.

### Email 2: 24-Hour Reminder

Sent exactly 24 hours before the scheduled call. Adds a second proof point and sets the agenda.

```
Subject: Tomorrow: Our call at [Time]

Hey [First Name],

Quick reminder about our call tomorrow at [Time] [Timezone].

Here's what I'd like to cover:

1. Your current [relevant area] situation and what prompted the conversation
2. Where the biggest friction points are
3. Whether there's a fit for us to help (and what that would look like)

No prep needed on your end. I've done some research on [Company Name] and have a few observations I think you'll find interesting.

One more example that might be relevant -- [second case study or different engagement type]:

[Case Study Summary -- 2-3 sentences]

See you tomorrow.

[Your Name]
```

### Email 3: 1-Hour Reminder

Sent 1 hour before the call. Short, functional.

```
Subject: In 1 hour: [Time] call

Hey [First Name],

We're on in an hour. Here's the link: [meeting link]

I put together a quick note on [Company Name] that I think you'll find useful -- I'll share it at the top of our call.

Talk soon,

[Your Name]
```

## Pre-Call Value Note

This is NOT sent to the prospect. It's prepared for you to reference during the first 2 minutes of the call. It demonstrates that you did homework and care about the prospect's specific situation.

```
## Pre-Call Value Note: [Company Name]
### Prepared: YYYY-MM-DD

**Prospect:** [Name], [Title]
**Company:** [Company Name]
**Source:** [How they found you -- referral, assessment, content, cold]

**3 Observations About Their Business:**
1. [Observation from their website, LinkedIn, recent news, or public data]
2. [Observation about their industry or competitive position]
3. [Observation about a specific opportunity or challenge they likely face]

**Opening Line (Proof-Promise-Plan):**
"[First Name], before we dive in, I spent some time on [Company]'s [website/product/recent announcement] and noticed [observation]. Companies in your position often [insight]. I'd love to hear if that resonates, and if so, I can share how we've helped [similar company type] address exactly that."

**Most Relevant Case Study to Reference:**
[Title] -- [1-sentence summary with specific result]

**Qualification Pre-Signals (from available data):**
- Budget: [any signals -- company size, funding, stated budget]
- Authority: [is this person a decision maker?]
- Need: [what triggered the call?]
- Timing: [any urgency signals?]
- Situation: [what have they tried before?]
```

**Research sources for the value note:**
- Company website
- LinkedIn profile of the prospect
- Any previous interactions or communications
- Assessment or lead magnet data (if they completed one)
- CRM data (if available)

## No-Show Recovery Sequence

When a prospect doesn't show up, they haven't rejected you. They got busy. The recovery sequence is low-pressure and gives them an easy path to reschedule.

### Recovery Email 1: Same Day (30 Minutes After Missed Call)

```
Subject: Missed you today -- easy to reschedule

Hey [First Name],

Looks like we missed each other for our [Time] call. No worries at all -- these things happen.

If you'd like to reschedule, here are a few times that work:
- [Option 1]
- [Option 2]
- [Option 3]

Or grab a time here: [scheduling link]

Either way, I'm still interested in the conversation when the timing works for you.

[Your Name]
```

### Recovery Email 2: 48 Hours Later

```
Subject: Re: Missed you today -- easy to reschedule

Hey [First Name],

Just bumping this in case it got buried. Happy to find a time that works better.

In the meantime, here's something that might be useful: [link to a relevant blog post, assessment tool, or resource that matches what they originally reached out about].

[Your Name]
```

### Recovery Email 3: 7 Days Later (Final)

```
Subject: Still interested?

Hey [First Name],

I know things get busy. If [the challenge they originally mentioned] is still on your radar, I'm here whenever the timing is right.

No need to reply if priorities have shifted -- I'll just keep sending useful stuff through [your newsletter or content channel].

[Your Name]
```

After 3 recovery attempts with no response: move to newsletter-only nurture. Do not send additional recovery emails.

## Show-Rate Tracking

Maintain a tracker with this structure:

```
## Show Rate Tracker
**Last updated:** YYYY-MM-DD

### Calls
| Date | Prospect | Company | Source | Confirmed? | Showed? | Notes |
|------|----------|---------|--------|-----------|---------|-------|
| YYYY-MM-DD | [Name] | [Company] | [Referral/Assessment/Content/Cold] | Y/N | Y/N/Rescheduled | [context] |

### Metrics
- Total calls booked: X
- Shows: X
- No-shows: X
- Rescheduled: X
- Show rate: X%
- Target: 89%

### Trend (by month)
| Month | Booked | Shows | Rate |
|-------|--------|-------|------|
| [Month] | X | X | X% |

### Insights
- Best show-rate day/time: [pattern if visible]
- Most common no-show source: [pattern if visible]
- Sequence adjustment recommendations: [based on data]
```

## Workflow

1. **Receive call details** -- Prospect name, title, company, call date/time, source, and context
2. **Research the prospect** -- Gather intelligence for the pre-call value note from public sources
3. **Match case studies** -- Select 2 proof points (best match for Email 1, second angle for Email 2)
4. **Generate the sequence** -- Produce all 3 emails + pre-call value note
5. **Track** -- Update the show-rate tracker with every call entry

## Facilitated Mode

When `facilitated_mode: true`, add these challenge prompts:

- "What's your current show rate? If you don't know, that's the first problem to solve."
- "What happens between someone booking a call and the call happening? If the answer is 'nothing,' you're leaving pipeline on the table."
- "Do you have 2-3 strong case studies or proof points you can reference? If not, start with testimonial-collector."
- "What research do you typically do before a discovery call? The pre-call value note should take 10 minutes max."

## Constraints

- Never send more than 3 recovery emails for a no-show. After that, move to nurture
- Never fabricate case study results or client names
- Never use pressure tactics in reminders ("your competitors are moving faster" is not acceptable)
- Never skip the pre-call value note. The 2 minutes of personalized opening make or break the call
- Never send the pre-call value note to the prospect. It's internal prep only
- If no case studies match the prospect's situation, use the most impressive general outcome rather than forcing a weak match

## Works Well With

- If using `testimonial-collector`: case studies referenced in confirmation emails should include testimonial snippets when available
- If using `lead-magnet-ideator`: prospects who came through a lead magnet get a confirmation that references the specific asset they engaged with
- If using `offer-architect`: named packages can be referenced in the agenda section of Email 2
- If using `nurture-engine`: no-show prospects who exhaust recovery can enter a longer nurture sequence

## Platform Notes

| Platform | How to Use |
|----------|-----------|
| **Claude Code** | Full experience. Run as a skill with config.json in the working directory |
| **Claude Desktop** | Paste the skill content as a Project instruction. Provide prospect details in conversation |
| **Claude Cowork** | Add as a source document. Provide call details and company info for personalization |
