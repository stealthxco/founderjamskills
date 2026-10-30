---
name: show-rate-optimizer
description: Write confirmation sequences, pre-call value notes, and no-show recovery emails to raise discovery call show rates, using Hormozi's 89% show-rate protocol. Build stage, sales path.
license: CC-BY-4.0
---

# Show Rate Optimizer Skill

**Stage:** Build. **Best for paths:** sales.

## Overview

Every missed discovery call is lost pipeline. For a firm that needs 5-10 qualified conversations per month, moving from a typical 60% show rate to 89% nearly doubles effective pipeline without generating a single additional lead.

This skill handles everything between "call booked" and "prospect showed up." It generates the full confirmation sequence, pre-call personalization, and no-show recovery.

Key capabilities:
- Generate 3-email confirmation sequences matched with relevant case studies or proof
- Create personalized pre-call value notes for each prospect
- Produce no-show recovery sequences
- Track show rates over time and recommend adjustments

## Context

Get context from a FOUNDER JAM HANDOFF block pasted in the chat (the format is defined in `founder-setup`). If you are running in Claude Code with file access, `config.json` in the working directory works too. Ask for anything that is missing, one question at a time.

Sherpa check: if `mode` is missing or empty, ask once, "Is a sherpa with you today?" Default to solo. With a sherpa, add this skill's challenge prompts. Solo, skip them.

**Read from the handoff block:**
- `startup_name`: company name for email templates
- `icp_segment`: target customer profile for case study matching
- `business_type`: service model context

**Optional details (not in the handoff block, ask if useful):**
- `crm_platform`: CRM for integration guidance
- `scheduling_tool`: calendar booking tool (e.g., "calendly", "hubspot meetings")
- `service_areas`: array of service offerings for case study matching

**Writes:** No new handoff fields. Prints the latest handoff block at the end (see Handoff). Other output is presented for review and manual saving.

## The 89% show-rate protocol (Hormozi, adapted)

Hormozi's lead nurture playbook achieves up to 89% show rates through a data-driven sequence. This adaptation replaces consumer urgency tactics with professional, value-first communication.

### Why most show rates are low

| Cause | Fix |
|-------|-----|
| No confirmation sent | Immediate confirmation with calendar invite |
| Prospect forgets | 24-hour and 1-hour reminders |
| Prospect loses motivation | Each touchpoint adds value (case study, insight) |
| Prospect feels unprepared | Pre-call value note reduces anxiety |
| Prospect finds another option | Case studies demonstrate unique differentiation |
| No cost of missing the call | Value note makes them feel they'll miss something specific |

### The sequence: 3 emails + 1 value note

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

## Email templates

### Email 1: Immediate confirmation

Sent within minutes of the call being booked. Make the prospect feel this was a smart decision.

```
Subject: Confirmed: [Prospect First Name] <> [Your Name], [Day] at [Time]

Hey [First Name],

Looking forward to our conversation on [Day] at [Time] [Timezone].

Here's the calendar invite: [link]
Meeting link: [video call link]

To give you a sense of how we work, here's a quick look at a recent engagement with a [similar industry/company type] company:

[Case Study Summary, 3-4 sentences max]
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

### Email 2: 24-Hour reminder

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

One more example that might be relevant, [second case study or different engagement type]:

[Case Study Summary, 2-3 sentences]

See you tomorrow.

[Your Name]
```

### Email 3: 1-Hour reminder

Sent 1 hour before the call. Short, functional.

```
Subject: In 1 hour: [Time] call

Hey [First Name],

We're on in an hour. Here's the link: [meeting link]

I put together a quick note on [Company Name] that I think you'll find useful. I'll share it at the top of our call.

Talk soon,

[Your Name]
```

## Pre-call value note

This is NOT sent to the prospect. It's prepared for you to reference during the first 2 minutes of the call. It demonstrates that you did homework and care about the prospect's specific situation.

```
## Pre-call value note: [Company name]
### Prepared: YYYY-MM-DD

**Prospect:** [Name], [Title]
**Company:** [Company Name]
**Source:** [How they found you, referral, assessment, content, cold]

**3 Observations About Their Business:**
1. [Observation from their website, LinkedIn, recent news, or public data]
2. [Observation about their industry or competitive position]
3. [Observation about a specific opportunity or challenge they likely face]

**Opening Line (Proof-Promise-Plan):**
"[First Name], before we dive in, I spent some time on [Company]'s [website/product/recent announcement] and noticed [observation]. Companies in your position often [insight]. I'd love to hear if that resonates, and if so, I can share how we've helped [similar company type] address exactly that."

**Most Relevant Case Study to Reference:**
[Title]: [1-sentence summary with specific result]

**Qualification Pre-Signals (from available data):**
- Budget: [any signals, company size, funding, stated budget]
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

## No-show recovery sequence

When a prospect doesn't show up, they haven't rejected you. They got busy. The recovery sequence is low-pressure and gives them an easy path to reschedule.

### Recovery email 1: Same day (30 minutes after missed call)

```
Subject: Missed you today, easy to reschedule

Hey [First Name],

Looks like we missed each other for our [Time] call. No worries at all, these things happen.

If you'd like to reschedule, here are a few times that work:
- [Option 1]
- [Option 2]
- [Option 3]

Or grab a time here: [scheduling link]

Either way, I'm still interested in the conversation when the timing works for you.

[Your Name]
```

### Recovery email 2: 48 hours later

```
Subject: Re: Missed you today, easy to reschedule

Hey [First Name],

Just bumping this in case it got buried. Happy to find a time that works better.

In the meantime, here's something that might be useful: [link to a relevant blog post, assessment tool, or resource that matches what they originally reached out about].

[Your Name]
```

### Recovery email 3: 7 days later (final)

```
Subject: Still interested?

Hey [First Name],

I know things get busy. If [the challenge they originally mentioned] is still on your radar, I'm here whenever the timing is right.

No need to reply if priorities have shifted. I'll just keep sending useful stuff through [your newsletter or content channel].

[Your Name]
```

After 3 recovery attempts with no response: move to newsletter-only nurture. Do not send additional recovery emails.

## Show-rate tracking

Maintain a tracker with this structure:

```
## Show rate tracker
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

1. **Receive call details**: Prospect name, title, company, call date/time, source, and context
2. **Research the prospect**: Gather intelligence for the pre-call value note from public sources
3. **Match case studies**: Select 2 proof points (best match for Email 1, second angle for Email 2)
4. **Generate the sequence**: Produce all 3 emails + pre-call value note
5. **Track**: Update the show-rate tracker with every call entry

## Sherpa mode

When `mode` is `with-sherpa`, add these challenge prompts:

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

## Works well with

- If using `testimonial-collector`: case studies referenced in confirmation emails should include testimonial snippets when available
- If using `lead-magnet-ideator`: prospects who came through a lead magnet get a confirmation that references the specific asset they engaged with
- If using `offer-architect`: named packages can be referenced in the agenda section of Email 2
- If using `nurture-engine`: no-show prospects who exhaust recovery can enter a longer nurture sequence

## Handoff

When you finish, print the full FOUNDER JAM HANDOFF block (format: `founder-setup`) in a code fence. This skill adds no field of its own. Fill in any FOUNDER JAM HANDOFF fields you collected during this session (never add keys the format does not define), and keep every other field as you received it. Tell the founder to copy the block and paste it into the next skill. If you are running in Claude Code with file access and a Founder Jam `config.json` (one with `startup_name` and `path` keys) already exists in the working directory, update the fields you collected and leave every other key as it is. Never create `config.json` in another project or overwrite a file that is not a Founder Jam config.

## Where this runs

| Where | What happens |
|-------|--------------|
| claude.ai or Claude desktop (skill uploaded) | Full flow. Paste your handoff block at the start. Save any output you want to keep. |
| Claude Code | Full flow. Can also read and write `config.json`. |

---

Founder Jam curriculum and skills by Drew Burdick · program co-created with Innovate Charlotte · CC BY 4.0 · drewburdick.com/founderjam
