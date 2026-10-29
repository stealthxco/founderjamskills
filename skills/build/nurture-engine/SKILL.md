---
name: nurture-engine
description: Generate source-specific email nurture sequences for leads captured through assessments, lead magnets, contact forms, and newsletter signups. Implements Dickerson's 7-email framework with Hormozi's 3.5:1 give-to-ask ratio.
---

# Nurture Engine Skill

## Overview

Convert captured leads into qualified conversations through source-specific email nurture sequences. Different lead sources get different sequences because someone who completed an assessment has fundamentally different intent than someone who downloaded a playbook.

Key capabilities:
- Generate source-specific 7-email nurture sequences (4 source types)
- Apply Dickerson's Deliver-Connect-Value-Value-Bridge-Soft Pitch-Direct structure
- Enforce Hormozi's 3.5:1 give-to-ask ratio across every sequence
- Generate VSL (Video Sales Letter) scripts for key landing pages
- Map CRM integration points
- Produce non-closer nurture tracks for prospects who take calls but don't buy

## Config Dependencies

**Reads from `config.json`:**
- `startup_name` -- company name for email personalization
- `icp_segment` -- target customer profile for content matching
- `business_type` -- service model for CTA selection
- `facilitated_mode` -- enables challenge prompts

**Optional config fields:**
- `crm_platform` -- CRM for integration guidance (e.g., "hubspot", "activecampaign", "mailchimp")
- `newsletter_name` -- your newsletter name for subscriber sequence
- `service_areas` -- array of service offerings for content matching
- `sign_off_phrase` -- custom email sign-off

**Writes:** Nothing (output is presented for review and manual saving)

## The 7-Email Framework (Dickerson, Adapted)

Every sequence follows this structure with source-specific content:

| # | Day | Type | Purpose | Give:Ask |
|---|-----|------|---------|----------|
| 1 | 0 | DELIVER | Deliver the promised value immediately | Give |
| 2 | 2 | CONNECT | Build personal connection (founder's story, why the company exists) | Give |
| 3 | 5 | VALUE | Teach something useful (framework, insight, diagnostic) | Give |
| 4 | 8 | VALUE | Social proof (case study with specific metrics) | Give |
| 5 | 12 | BRIDGE | Connect delivered value to your services | Give (with context) |
| 6 | 16 | SOFT PITCH | Low-pressure CTA | Soft Ask |
| 7 | 21 | DIRECT | Clear call-to-action | Direct Ask |

**Ratio check:** 4 pure gives + 1 bridge + 1 soft ask + 1 direct ask = well within 3.5:1 give-to-ask.

After Email 7: move to regular newsletter cadence for long-term nurture.

## Source-Specific Sequences

### Source 1: Assessment Completers

Prospects who completed one of your assessment tools. Highest intent. They have a scored result and know their gaps.

| # | Day | Subject Line | Content Focus |
|---|-----|-------------|--------------|
| 1 | 0 | "Your assessment results + what they mean" | Deliver detailed interpretation of their score. Reference their specific level. Tease the top 2 opportunities their results reveal. |
| 2 | 2 | "Why I built these assessments" | Founder's story: why you take an assessment-first approach. |
| 3 | 5 | "The framework behind your score" | Teach the scoring framework. Explain what companies at their level typically need next. Actionable insight they can use without hiring anyone. |
| 4 | 8 | "How a [industry] company moved from Level [X] to [Y]" | Case study matching their profile. Specific metrics: timeline, outcome, approach. |
| 5 | 12 | "What companies at your level typically do next" | Bridge: "Based on your results, companies at Level [X] typically benefit from [specific engagement type]." |
| 6 | 16 | "Want to walk through your results together?" | Soft pitch: "I'd be happy to spend 20 minutes reviewing your results. No pitch, just analysis." |
| 7 | 21 | "Last thought on your assessment" | Direct: "If [challenge revealed by assessment] is still a priority, let's talk. Book 20 minutes: [link]." |

### Source 2: Lead Magnet Downloaders

Prospects who downloaded a playbook, framework, or guide. Medium-high intent.

| # | Day | Subject Line | Content Focus |
|---|-----|-------------|--------------|
| 1 | 0 | "Your [resource title] is ready" | Deliver the resource. Highlight the single most actionable section. |
| 2 | 2 | "The story behind [resource topic]" | Founder's experience with this topic. A specific situation that inspired the resource. |
| 3 | 5 | "Most people get stuck on step [X]" | Teach the hardest part of implementing the resource. Give a specific workaround. |
| 4 | 8 | "What happened when [company type] actually implemented this" | Case study showing results from applying the methodology with your help. |
| 5 | 12 | "The difference between DIY and guided" | Bridge: "The resource gives you the framework. Companies that move fastest usually have someone to pressure-test their approach." |
| 6 | 16 | "Quick question about [resource topic]" | Soft pitch: "How's the implementation going? If you're running into roadblocks, reply to this email." |
| 7 | 21 | "Ready to move faster on [topic]?" | Direct: "If [topic] is still a priority, our [package name] is designed to take you from framework to action. Book a call: [link]." |

### Source 3: General Contact Form

Mixed intent. Need more context to qualify.

| # | Day | Subject Line | Content Focus |
|---|-----|-------------|--------------|
| 1 | 0 | "Thanks for reaching out, [First Name]" | Acknowledge their message. Share one relevant resource based on what they mentioned. |
| 2 | 2 | "How [startup_name] works (the short version)" | 60-second pitch: what you do, how you do it, who you do it for. Link to your process page. |
| 3 | 5 | "The most common question we get" | Address the #1 question prospects ask. Answer directly with specifics. |
| 4 | 8 | "A recent project that might be relevant" | Best-matching case study based on what they mentioned. |
| 5 | 12 | "Three ways companies typically start with us" | Bridge: outline your engagement tiers with clear "this is for you if.." guidance. |
| 6 | 16 | "Still exploring options?" | Soft pitch: "If you're evaluating partners, here's what I'd recommend asking every firm: [3 questions]." |
| 7 | 21 | "Let me know how I can help" | Direct: "If [their stated need] is still on your radar, I'd love to learn more. Book 20 minutes: [link]." |

### Source 4: Newsletter Subscribers

Lowest commercial intent. Longest nurture cycle.

| # | Day | Subject Line | Content Focus |
|---|-----|-------------|--------------|
| 1 | 0 | "Welcome to [newsletter_name]" | What to expect. Link to the 3 most popular past issues. Brief intro. |
| 2 | 7 | "The one thing I wish I knew earlier about [topic]" | Personal story. Vulnerability. Something that resonates with your audience. |
| 3 | 14 | "A framework I keep coming back to" | Teach a specific framework. Immediately useful regardless of whether they hire you. |
| 4 | 21 | (Skip -- they'll receive regular newsletter) | -- |
| 5 | 28 | "What we've been building lately" | Bridge: share a recent outcome or new tool. Not a pitch, just "here's what we've been up to." |
| 6 | 60 | "Quick question for you" | Soft pitch: "What's the biggest challenge you're facing with [your domain]? Reply -- I genuinely want to know." |
| 7 | 90 | "If you ever need a hand" | Direct: "If you're ever working through [relevant challenge], we're here. Book a conversation: [link]." |

**Note:** Newsletter subscribers get a much slower cadence (90 days vs. 21 days) because the regular newsletter already provides ongoing value.

## Non-Closer Nurture Track

For prospects who completed a discovery call but didn't convert.

**Cadence:** Monthly for 6 months, then quarterly.

| # | Timing | Content |
|---|--------|---------|
| 1 | 2 weeks post-call | New case study relevant to their situation. No pitch. "Thought you'd find this interesting." |
| 2 | 6 weeks post-call | New framework, tool, or resource. "We just released this -- figured it might be useful." |
| 3 | 3 months post-call | Check-in: "How's [their initiative] going? If you're still working through it, happy to reconnect." |
| 4 | 4.5 months post-call | Event invite. Community-first, not sales-first. |
| 5 | 6 months post-call | Direct re-engagement: "We've had availability open up. If [challenge] is still a priority, let's revisit." |

After 6 months: quarterly touchpoints and newsletter only.

## VSL Video Script Framework (Hormozi)

Structure for any video sales letter or "How We Work" video:

```
## VSL Script: [Page Name]
### Duration Target: 2-3 minutes

### 1. PROMISE (15 seconds)
"We help [specific audience] achieve [specific outcome] in [specific timeframe]."

### 2. PAIN (30 seconds)
"Most [audience] struggle with [pain 1], [pain 2], and [pain 3]."
[Specific, visceral, recognizable pain points.]

### 3. PROOF (45 seconds)
"Here's what happened when [company type] came to us with the same problem:"
[Case study with specific metrics. Before/after. Timeline.]

### 4. PLAN (45 seconds)
"Here's exactly how we do it:"
Step 1: [specific first action]
Step 2: [next phase]
Step 3: [outcome]

### 5. CTA (15 seconds)
"Book a free 20-minute strategy call. No pitch -- just a conversation about what's possible."
```

## Email Copy Rules

All nurture emails should follow professional, direct writing:

- No emojis in body text
- No corporate buzzwords ("leverage," "synergy," "utilize," "innovative")
- Use contractions naturally (didn't, can't, won't, I'm, you're)
- Short paragraphs (2-3 sentences max)
- Conversational, honest, direct tone
- Subject lines under 50 characters when possible
- Include a P.S. in Emails 4 and 6 (teaser for next email or secondary CTA)
- No email exceeds 200 words (short = higher read rate)

## CRM Integration Guidance

| Integration | Purpose |
|------------|---------|
| Workflow triggers by lead source tag | Route to correct sequence automatically |
| Contact properties: nurture_sequence, nurture_step | Track where each lead is |
| Deal creation trigger | Auto-create deal when lead books a call from any nurture email |
| Assessment data sync | Pull assessment scores for Source 1 personalization |

Adapt these to your specific CRM platform.

## Workflow

1. **Select source type** -- assessment, lead-magnet, contact, newsletter, non-closer, or all
2. **Review available content** -- What case studies, frameworks, and resources can you reference?
3. **Generate sequence** -- Write all 7 emails for the selected source type
4. **Validate give-to-ask ratio** -- Must be at least 3.5:1 across the full sequence
5. **Review copy** -- Check against email copy rules
6. **Map CRM triggers** -- Document automation points for your CRM

## Facilitated Mode

When `facilitated_mode: true`, add these challenge prompts:

- "Where do most of your leads come from right now? Start with that source's sequence first."
- "What's the single most valuable thing you could teach a new lead in 5 minutes? That's Email 3."
- "What case study would make a skeptic say 'okay, these people are legit'? That's Email 4."
- "What happens to leads who don't buy after a call? If the answer is 'nothing,' you need the non-closer track."

## Constraints

- Never send more than 7 emails in the initial sequence. After that, newsletter only
- Never make the first email an ask. Email 1 is ALWAYS pure value delivery
- Never fabricate case studies, client names, or metrics
- Never use the same case study in multiple emails within one sequence
- Never use pressure language ("you're missing out," "don't fall behind," "your competitors are already..")
- Every email must stand alone (doesn't require reading previous emails)

## Works Well With

- If using `offer-architect`: package names and value propositions feed Email 5 (Bridge) and Email 7 (Direct)
- If using `show-rate-optimizer`: leads who book calls from nurture emails enter the show-rate sequence
- If using `testimonial-collector`: testimonial snippets can be embedded in Email 4 (social proof)
- If using `case-study-generator`: case study content feeds Email 4 across all sequences
- If using `content-calendar-planner`: nurture emails that reference published content need dependency tracking

## Platform Notes

| Platform | How to Use |
|----------|-----------|
| **Claude Code** | Full experience. Run as a skill with config.json in the working directory |
| **Claude Desktop** | Paste the skill content as a Project instruction. Specify the source type to generate |
| **Claude Cowork** | Add as a source document. Best when you paste your existing case studies and resources for reference |
