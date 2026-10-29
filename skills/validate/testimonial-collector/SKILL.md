---
name: testimonial-collector
description: Generate personalized testimonial request emails, maintain a collection tracker, format testimonials for website placement, and run champion activation plans. Implements Hormozi's Proof Playbook and Isenberg's champion activation model.
---

# Testimonial Collector Skill

## Overview

Systematize the collection, formatting, and deployment of client testimonials. Most early-stage companies have happy clients but zero published testimonials. This is the highest-impact, lowest-effort marketing gap for most service businesses.

Key capabilities:
- Generate personalized testimonial request emails tied to specific engagement results
- Maintain a testimonial collection tracker (requested, received, approved, published)
- Format testimonials as website-ready cards with placement recommendations
- Run champion activation plans for your top 3-5 clients
- Map testimonials to common objections so proof appears where doubt lives
- Track a three-touchpoint cadence (end of engagement, 3-month check-in, 6-month check-in)

## Config Dependencies

**Reads from `config.json`:**
- `startup_name` -- company name for email personalization
- `icp_segment` -- target customer profile for champion scoring
- `business_type` -- service model for template selection
- `facilitated_mode` -- enables challenge prompts

**Optional config fields:**
- `crm_platform` -- CRM for integration guidance (e.g., "hubspot", "pipedrive")
- `service_areas` -- array of service offerings for objection mapping

**Writes:** Nothing (output is presented for review and manual saving)

## The Objection-to-Testimonial Pattern (Hormozi)

The strongest testimonials directly counter specific buying objections. Instead of asking "Can you say nice things about us?", ask questions designed to elicit proof against doubts.

### Mapping Objections to Questions

| Common Objection | Testimonial Question to Counter It |
|-----------------|-----------------------------------|
| "It's too expensive" | "What was the ROI or business impact you saw? Was the investment worth it?" |
| "We need to think about it" | "How quickly did you see results? What surprised you about the speed?" |
| "We're talking to other firms" | "What made [startup_name] different from others you considered?" |
| "Can we start smaller?" | "How did the initial engagement give you confidence before committing further?" |
| "We've been burned before" | "How was this different from past experiences? What did [startup_name] do that others didn't?" |

Customize these 5 objections for your specific business. The pattern works across any service model.

## Testimonial Request Framework

### Email Template: Initial Request

```
Subject: Quick favor -- would mean a lot

Hey [Client First Name],

I've been reflecting on the work we did together on [project/engagement name], and the [specific result] outcome still stands out.

Would you be open to sharing a brief testimonial about the experience? Totally informal -- a few sentences is perfect. It helps other companies in similar situations feel confident about working with us.

Here are a couple of prompts if helpful (pick whichever resonates):

- [Question 1 from objection map -- most relevant to this client's experience]
- [Question 2 from objection map]

No pressure at all. If you'd prefer, I'm happy to draft something based on what we discussed during [specific meeting or milestone], and you can just approve or edit.

Thanks, [Client First Name]. Really appreciated working with your team.

[Your Name]
```

### Email Template: Draft-for-Approval (Higher Response Rate)

When the client is likely too busy to write from scratch:

```
Subject: Drafted something -- 30 seconds to review?

Hey [Client First Name],

I know you're busy, so I drafted a quick testimonial based on the results from [engagement]. Would you mind taking a look and letting me know if it captures your experience?

---

"[Draft testimonial based on known results -- 2-3 sentences, specific, outcome-focused]"

-- [Client First Name], [Title], [Company]

---

Feel free to edit, tweak, or rewrite entirely. Just reply with your version (or a thumbs up if it works as-is).

Thanks for considering it.

[Your Name]
```

### Email Template: Follow-Up (If No Response After 7 Days)

```
Subject: Re: Quick favor -- would mean a lot

Hey [Client First Name],

Just bumping this in case it got buried. Totally understand if the timing isn't right -- no pressure.

If it's easier, I can send over a draft for you to approve instead of writing from scratch. Just say the word.

[Your Name]
```

## Three-Touchpoint Cadence

| Touchpoint | When | Purpose | Template |
|-----------|------|---------|----------|
| End of Engagement | Within 2 weeks of final deliverable | Capture while results are fresh and relationship is warmest | Initial Request or Draft-for-Approval |
| 3-Month Check-In | 90 days post-engagement | Capture longer-term impact, ask about measurable outcomes that took time to materialize | "Looking back, what's changed?" |
| 6-Month Check-In | 180 days post-engagement | Deepest impact data, opportunity to refresh or strengthen original testimonial | "Has anything changed since your original feedback? Any new results?" |

Log every attempt in your tracker regardless of response.

## Champion Activation Plan (Isenberg)

Champions are past clients who would actively recommend you without being asked. Typically 3-5 exist in any client roster.

### Identifying Champions

Score each past client on 3 criteria (1-5):

| Criterion | What It Measures |
|----------|-----------------|
| **Enthusiasm** | How positive were they during and after the engagement? Unsolicited praise? |
| **Results** | How strong were the measurable outcomes? Stronger results = more credible advocacy |
| **Network** | How connected are they to other potential clients in your ICP? Senior leaders score highest |

Champions score 12+ across all three dimensions.

### Activation Actions (Per Champion)

| Action | What to Do | Cadence |
|--------|-----------|---------|
| Early Access | Share new frameworks, tools, or resources before publishing publicly | Quarterly |
| Event Invite | Include in dinners, meetups, or community events as a guest or co-host | Quarterly |
| Referral Request | Ask specifically: "Who in your network is dealing with [specific problem]?" | After each positive touchpoint |
| Content Collaboration | Invite to co-author content, join a podcast, or speak at an event | As appropriate |
| Recognition | Feature in newsletter, social media, or website as a thought leader (with permission) | Ongoing |

### Three-Way Introduction Template (Hormozi)

Instead of "Do you know anyone who..?", use this higher-conversion approach:

```
Subject: Introduction -- [Champion Name] suggested we connect

Hey [Referral First Name],

[Champion Name] mentioned you're working through [specific problem or initiative]. We recently helped [Champion's company] with something similar -- [one-sentence result].

[Champion Name] thought it might be worth a quick conversation. No pitch, just a 20-minute call to see if there's a fit.

Would [day] or [day] work for a brief chat?

[Your Name]

CC: [Champion Name]
```

## Testimonial Formatting

### Website Card Format

```
**Quote:**
"[Testimonial text -- 2-4 sentences, specific outcomes, genuine voice]"

**Attribution:**
[Full Name], [Title], [Company Name]

**Placement Recommendation:**
- Primary: [specific page and location on your website]
- Secondary: [additional placement]
- Reason: [why this testimonial works here -- matches the objection or pain point on that page]

**Tags:**
- Objection countered: [which objection this addresses]
- Service area: [which capability this validates]
- ICP: [which customer segment this resonates with]
```

### Placement Strategy

Map testimonials to website pages based on what doubt exists at each decision point:

| Page / Section | Doubt at This Point | Best Testimonial Type |
|---------------|--------------------|-----------------------|
| Homepage hero | "Is this company legitimate?" | Broad credibility, recognizable company |
| Service pages | "Can they actually do this?" | Specific capability validation with metrics |
| Case study pages | "Will this work for MY situation?" | Similar industry or similar challenge |
| Contact / pricing page | "Is this worth the investment?" | ROI-focused, cost-of-inaction framing |
| Assessment / tool pages | "Should I trust this tool?" | "The assessment revealed insights we didn't expect" |

## Testimonial Collection Tracker

Maintain a tracker with this structure:

```
## Testimonial Collection Tracker
**Last updated:** YYYY-MM-DD

### Pipeline
| Client | Champion | Touchpoint | Date Requested | Status | Response | Published |
|--------|----------|------------|---------------|--------|----------|-----------|
| [Name] | [Name, Title] | End of Engagement | YYYY-MM-DD | Requested / Received / Approved / Published / No Response | [summary] | [Y/N + location] |

### Summary
- Total clients contacted: X
- Testimonials received: X
- Testimonials published: X
- Response rate: X%
- Next touchpoints due: [list]

### Objection Coverage
| Objection | Testimonials Available | Gap? |
|-----------|----------------------|------|
| Too expensive | X | [Y/N] |
| Need to think about it | X | [Y/N] |
| Talking to other firms | X | [Y/N] |
| Can we start smaller | X | [Y/N] |
| Burned before | X | [Y/N] |

### Champion Roster
| Champion | Company | Score | Last Activation | Next Action |
|----------|---------|-------|----------------|-------------|
| [Name] | [Co] | X/15 | YYYY-MM-DD | [action] |
```

## Data Collection Pre-Step

Before generating a testimonial request, you need engagement results. If structured data isn't available, use this form:

```
## Results Inventory: [Client Name]

1. **Engagement type:** [Workshop / Sprint / PoC / Full Build / Strategy]
2. **Duration:** [start date - end date]
3. **Primary deliverables:** [what was delivered]
4. **Measurable outcomes:** [specific metrics, time saved, revenue impact]
5. **Client champion:** [name and title of primary contact]
6. **Relationship temperature:** [Hot / Warm / Cool]
7. **Best channel:** [Email / LinkedIn DM / Text / Phone]
```

## Workflow

1. **Identify targets** -- List all past/current clients. Check which have testimonials, which are due for a touchpoint
2. **Collect results data** -- For each target, gather engagement results. Run data collection pre-step if needed
3. **Generate requests** -- Select the most relevant objection-to-testimonial questions. Choose template based on relationship temperature
4. **Track everything** -- Log every request in the tracker with date and status
5. **Format received testimonials** -- Clean up text, generate website card format with placement recommendations
6. **Activate champions** -- Score all clients, identify top 3-5, generate activation plans

## Facilitated Mode

When `facilitated_mode: true`, add these challenge prompts:

- "Who are your 3 happiest clients right now? What specific results did they get?"
- "Which of the 5 common objections do you hear most in sales conversations?"
- "If you could only get testimonials from 3 clients, which 3 would make the biggest impact on your pipeline?"
- "What's stopping you from asking for testimonials today? Is it awkwardness, process, or something else?"

## Constraints

- Never fabricate testimonial text. Draft-for-approval templates must be based on documented results
- Never pressure clients for testimonials. One request + one follow-up is the limit per touchpoint
- Never publish testimonials without explicit written approval from the client
- Never send testimonial requests to clients who had negative experiences or unresolved issues
- Always save copies of requests sent for tracking
- If engagement data is incomplete, run the data collection pre-step rather than guessing

## Works Well With

- If using `offer-designer` or `offer-architect`: testimonials should map to specific package value propositions
- If using `lead-magnet-ideator`: assessment tool testimonials feed the lead magnet portfolio
- If using `case-study-generator`: pair testimonials with case studies for combined proof
- If using `landing-page-auditor`: testimonial placement recommendations inform the audit's social proof scoring

## Platform Notes

| Platform | How to Use |
|----------|-----------|
| **Claude Code** | Full experience. Run as a skill with config.json in the working directory |
| **Claude Desktop** | Paste the skill content as a Project instruction. Provide client details in conversation |
| **Claude Cowork** | Add as a source document. Works best when you paste the results inventory form with completed data |
