---
name: case-study-generator
description: "Turn results into a case study package: website case study, companion blog post, LinkedIn posts, and newsletter section, using Dickerson's referral flywheel. Validate stage, once real results exist."
license: CC-BY-4.0
---

# Case Study Generator Skill

**Stage:** Validate. **Best for paths:** sales, GTM and growth.

## Overview

Turn client engagement results into a multi-format proof package. One set of results becomes a website case study, a companion blog post, a LinkedIn post, and a newsletter section. Each format serves a different purpose in the pipeline.

Most service businesses have completed engagements but never converted the results into marketing assets. This skill makes that systematic and repeatable.

Key capabilities:
- Generate website case study pages
- Write companion blog posts using the "How We [result] for a [industry] Company in [timeframe]" format
- Create LinkedIn post derivatives using Hook-Retain-Reward
- Produce newsletter sections
- Map each case study to relevant service pages and CTAs for proof placement

## Context

Get context from a FOUNDER JAM HANDOFF block pasted in the chat (the format is defined in `founder-setup`). If you are running in Claude Code with file access, `config.json` in the working directory works too. Ask for anything that is missing, one question at a time.

Sherpa check: if `mode` is missing or empty, ask once, "Is a sherpa with you today?" Default to solo. With a sherpa, add this skill's challenge prompts. Solo, skip them.

**Read from the handoff block:**
- `startup_name`: company name for case study branding
- `icp_segment`: target customer profile for proof placement
- `business_type`: service model context
- `mode`: `with-sherpa` adds challenge prompts

**Optional details (not in the handoff block, ask if useful):**
- `service_areas`: array of service offerings for mapping
- `newsletter_name`: for newsletter section formatting
- `sign_off_phrase`: for LinkedIn post sign-off

**Writes:** Nothing back to the handoff block. Output is presented for review and manual saving.

## The referral flywheel (Dickerson)

```
DELIVER outstanding results
        |
        v
DOCUMENT as case study (this skill)
        |
        v
PUBLISH as content (blog, LinkedIn, newsletter)
        |
        v
BUILD reputation and trust
        |
        v
GENERATE referrals
        |
        v
DELIVER more results (repeat)
```

Every case study should accelerate this flywheel. A case study that sits on a website page but never becomes content is a wasted asset.

## Story arc framework

Every case study follows the same narrative structure regardless of output format:

### 1. SITUATION (the before)

What was the client dealing with before your engagement?

- Company context (industry, size, stage, anonymized)
- The triggering event (what made them seek help)
- What they'd tried before (and why it didn't work)
- The cost of the status quo (time, money, missed opportunities)

### 2. CHALLENGE (the tension)

What made this problem hard to solve?

- Specific obstacles (technical, organizational, strategic)
- What was at stake (consequences of continued inaction)
- Why previous approaches failed

### 3. APPROACH (what you did)

Focus on methodology, not deliverables.

- Engagement type and duration
- Key phases or milestones
- What made your approach different
- Specific frameworks or methodologies applied

### 4. RESULTS (the after)

Measurable outcomes. Numbers, not adjectives.

- Primary metric: the headline number (time saved, revenue impact, efficiency gain)
- Secondary metrics: 2-3 supporting numbers
- Timeline: how quickly results materialized
- Qualitative outcomes: team capability, confidence, process improvement

### 5. IMPACT (the so-what)

What does this mean going forward?

- Long-term implications
- What changed structurally (not just the immediate deliverable)
- What's possible now that wasn't before

## Output formats

### Format 1: Website case study

```
## Website case study: [Anonymized title]

**Industry:** [Use general terms: "B2B SaaS," "professional services," "healthcare"]
**Engagement Type:** [Workshop / Sprint / PoC / Full Build]
**Duration:** [X weeks]

### The challenge
[2-3 paragraphs: Situation + Challenge from the story arc]

### Our approach
[2-3 paragraphs: Approach from the story arc. Focus on methodology.]

### The results
- [Primary metric with specific number]
- [Secondary metric]
- [Secondary metric]
- [Timeline to results]

### The impact
[1-2 paragraphs: long-term implications]

**Service Area:** [which capability this maps to]
**Tags:** [relevant service/industry tags]
```

### Format 2: Companion blog post

The "How We..." format. Primary SEO and content asset.

**Title format:** "How We [Achieved Specific Result] for a [Industry] Company in [Timeframe]"

**Examples:**
- "How We Built a Working AI Prototype for a B2B SaaS Company in 12 Days"
- "How We Reduced Customer Churn by 34% for a Professional Services Firm in 6 Weeks"

**Structure (Hook-Retain-Reward):**

```
## Blog post: [Title]

### HOOK (first 2-3 sentences)
[Pain-point, speed, or surprise hook that earns the click]

Example: "Most mid-market companies waste 6 months on pilots that never ship.
We built a working prototype in 12 days. Here's exactly how."

### RETAIN: The setup (situation + challenge)
[Tell the story. Drop the reader into the client's situation. Make them feel the tension.
Use narrative structure, not bullet points. 3-4 paragraphs.]

### RETAIN: What we did (approach)
[Walk through the approach. Be specific enough that someone could learn from it
but high-level enough that it's accessible. Break into 3-5 sections with subheadings.]

### REWARD: What happened (results + impact)
[Lead with the headline number. Support with secondary metrics.
Include the timeline. End with what's possible now.
The reader should think: "I learned something specific and I trust these people."]

### CTA
[Link to relevant assessment, case study page, or "Book a strategy call"]
```

**Word count:** 800-1,500 words
**SEO:** Include target keyword naturally 3-5 times.
**Anonymization:** Use industry categories, not client names (unless you have explicit permission).

### Format 3: LinkedIn post

```
## LinkedIn post: [Topic slug]

[Hook, first line must earn the "see more" click]

[Story arc compressed to 150-300 words]

[Specific, actionable takeaway]

[Your sign-off]

---

[CTA: Link to full blog post or case study]
```

**Format options:**
- **Story > Insight** (preferred for case studies): Brief story + "here's what I learned" + takeaway
- **Hot Take:** Bold claim supported by the case study result
- **Listicle:** "X things we learned from [engagement]": numbered tactical insights

**Rules:**
- Max 1,300 characters
- No hashtags
- Strong point of view

### Format 4: Newsletter section

A self-contained section for your newsletter:

```
## Newsletter section: [Section title]

[150-300 words. Narrative voice. Ties to a broader theme.]

[Specific insight from the engagement that the reader can apply.]

[One actionable takeaway.]
```

## Proof placement mapping

For each case study, recommend where it should appear on your website:

```
## Proof placement: [Case study title]

### Primary placement
- **Page:** [specific page]
- **Location:** [near which CTA or section]
- **Reason:** [why this proof matches this location]

### Secondary placements
- [Page]: [location]: [reason]

### Objection countered
- This case study addresses: "[specific objection]"

### Service area match
- Primary: [capability]
- Secondary: [capability]

### Customer segment match
- [Which ICP segment this resonates with and why]
```

## Data collection

Before generating a case study, you need engagement data. If structured data isn't available, use this form:

```
## Case study data: [Client/engagement name]

1. **Client industry:** [anonymized category]
2. **Company size:** [employees or revenue range]
3. **Engagement type:** [Workshop / Sprint / PoC / Full Build]
4. **Duration:** [start to end]
5. **Primary challenge:** [what problem were they trying to solve?]
6. **What they'd tried before:** [previous attempts]
7. **Your approach:** [what did the team do? key phases?]
8. **Primary metric:** [the headline result with a specific number]
9. **Secondary metrics:** [2-3 supporting numbers]
10. **Timeline to first result:** [how quickly did things move?]
11. **Long-term impact:** [what changed structurally?]
12. **Quote available?** [Y/N]
13. **Permission to publish?** [Y/N, never publish without confirmation]
```

## Workflow

1. **Receive input**: Client name, engagement identifier, or "batch" for all missing companion content
2. **Collect data**: Gather engagement results. Run data collection form if needed
3. **Build the story arc**: Extract all 5 elements. Present for confirmation before generating outputs
4. **Generate all formats**: Produce all 4 output formats from the confirmed story arc
5. **Generate proof placement map**: Map to website pages, objections, service areas
6. **Review**: Apply quality checklist before delivering

## Sherpa mode

When `mode` is `with-sherpa`, add these challenge prompts:

- "How many completed engagements do you have? How many have companion blog posts? The gap is your backlog."
- "What's the single most impressive metric from any client engagement? That's your first case study."
- "Can you tell the story of one client engagement in 60 seconds? If not, the story arc isn't clear enough yet."
- "Who are your 3 most referenceable clients? Start with them."

## Quality checklist

Before delivering:

- [ ] Story arc has all 5 elements (Situation, Challenge, Approach, Results, Impact)
- [ ] Primary metric is specific and measurable (not "improved significantly")
- [ ] Blog post follows Hook-Retain-Reward structure
- [ ] Blog post title uses "How We [result] for a [industry] Company in [timeframe]" format
- [ ] Blog post is 800-1,500 words
- [ ] LinkedIn post is under 1,300 characters
- [ ] All output uses anonymized client details (unless permission granted)
- [ ] Proof placement map identifies specific pages and locations
- [ ] CTA in blog post references a specific package or assessment
- [ ] No fabricated metrics or results
- [ ] Permission to publish confirmed (or flagged as pending)

## Constraints

- Never use specific client names without explicit permission. Default to anonymized industry categories
- Never fabricate or embellish results. Use exact numbers from engagement data
- Never publish without founder approval on the story arc and final output
- Never skip the results section. A case study without specific metrics is a testimonial, not a case study
- Never reuse the same hook across multiple blog posts
- If engagement data is incomplete, run the data collection form rather than guessing

## Works well with

- If using `testimonial-collector`: pair testimonials with case studies for combined proof
- If using `content-calendar-planner`: case study blog posts should be scheduled in the content calendar
- If using `seo-keyword-mapper`: blog post keywords should come from the keyword map
- If using `nurture-engine`: case studies feed Email 4 (social proof) across all nurture sequences
- If using `landing-page-auditor`: case study pages should be audited for conversion effectiveness

## Where this runs

| Where | What happens |
|-------|--------------|
| claude.ai or Claude desktop (skill uploaded) | Full flow. Paste your handoff block at the start. Save any output you want to keep. |
| Claude Code | Full flow. Can also read and write `config.json`. |

---

Founder Jam curriculum and skills by Drew Burdick · program co-created with Innovate Charlotte · CC BY 4.0 · drewburdick.com/founderjam
