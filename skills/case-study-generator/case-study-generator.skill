---
name: case-study-generator
description: Generate multi-format case study packages from engagement results. Outputs website case studies, companion blog posts, LinkedIn derivatives, and newsletter sections. Implements Dickerson's referral flywheel and Hormozi's Hook-Retain-Reward framework.
---

# Case Study Generator Skill

## Overview

Turn client engagement results into a multi-format proof package. One set of results becomes a website case study, a companion blog post, a LinkedIn post, and a newsletter section. Each format serves a different purpose in the pipeline.

Most service businesses have completed engagements but never converted the results into marketing assets. This skill makes that systematic and repeatable.

Key capabilities:
- Generate website case study pages
- Write companion blog posts using the "How We [result] for a [industry] Company in [timeframe]" format
- Create LinkedIn post derivatives using Hook-Retain-Reward
- Produce newsletter sections
- Map each case study to relevant service pages and CTAs for proof placement

## Config Dependencies

**Reads from `config.json`:**
- `startup_name` -- company name for case study branding
- `icp_segment` -- target customer profile for proof placement
- `business_type` -- service model context
- `facilitated_mode` -- enables challenge prompts

**Optional config fields:**
- `service_areas` -- array of service offerings for mapping
- `newsletter_name` -- for newsletter section formatting
- `sign_off_phrase` -- for LinkedIn post sign-off

**Writes:** Nothing (output is presented for review and manual saving)

## The Referral Flywheel (Dickerson)

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

## Story Arc Framework

Every case study follows the same narrative structure regardless of output format:

### 1. SITUATION (The Before)

What was the client dealing with before your engagement?

- Company context (industry, size, stage -- anonymized)
- The triggering event (what made them seek help)
- What they'd tried before (and why it didn't work)
- The cost of the status quo (time, money, missed opportunities)

### 2. CHALLENGE (The Tension)

What made this problem hard to solve?

- Specific obstacles (technical, organizational, strategic)
- What was at stake (consequences of continued inaction)
- Why previous approaches failed

### 3. APPROACH (What You Did)

Focus on methodology, not deliverables.

- Engagement type and duration
- Key phases or milestones
- What made your approach different
- Specific frameworks or methodologies applied

### 4. RESULTS (The After)

Measurable outcomes. Numbers, not adjectives.

- Primary metric: the headline number (time saved, revenue impact, efficiency gain)
- Secondary metrics: 2-3 supporting numbers
- Timeline: how quickly results materialized
- Qualitative outcomes: team capability, confidence, process improvement

### 5. IMPACT (The So-What)

What does this mean going forward?

- Long-term implications
- What changed structurally (not just the immediate deliverable)
- What's possible now that wasn't before

## Output Formats

### Format 1: Website Case Study

```
## Website Case Study: [Anonymized Title]

**Industry:** [Use general terms: "B2B SaaS," "professional services," "healthcare"]
**Engagement Type:** [Workshop / Sprint / PoC / Full Build]
**Duration:** [X weeks]

### The Challenge
[2-3 paragraphs: Situation + Challenge from the story arc]

### Our Approach
[2-3 paragraphs: Approach from the story arc. Focus on methodology.]

### The Results
- [Primary metric with specific number]
- [Secondary metric]
- [Secondary metric]
- [Timeline to results]

### The Impact
[1-2 paragraphs: long-term implications]

**Service Area:** [which capability this maps to]
**Tags:** [relevant service/industry tags]
```

### Format 2: Companion Blog Post

The "How We..." format. Primary SEO and content asset.

**Title format:** "How We [Achieved Specific Result] for a [Industry] Company in [Timeframe]"

**Examples:**
- "How We Built a Working AI Prototype for a B2B SaaS Company in 12 Days"
- "How We Reduced Customer Churn by 34% for a Professional Services Firm in 6 Weeks"

**Structure (Hook-Retain-Reward):**

```
## Blog Post: [Title]

### HOOK (First 2-3 sentences)
[Pain-point, speed, or surprise hook that earns the click]

Example: "Most mid-market companies waste 6 months on pilots that never ship.
We built a working prototype in 12 days. Here's exactly how."

### RETAIN: The Setup (Situation + Challenge)
[Tell the story. Drop the reader into the client's situation. Make them feel the tension.
Use narrative structure, not bullet points. 3-4 paragraphs.]

### RETAIN: What We Did (Approach)
[Walk through the approach. Be specific enough that someone could learn from it
but high-level enough that it's accessible. Break into 3-5 sections with subheadings.]

### REWARD: What Happened (Results + Impact)
[Lead with the headline number. Support with secondary metrics.
Include the timeline. End with what's possible now.
The reader should think: "I learned something specific and I trust these people."]

### CTA
[Link to relevant assessment, case study page, or "Book a strategy call"]
```

**Word count:** 800-1,500 words
**SEO:** Include target keyword naturally 3-5 times.
**Anonymization:** Use industry categories, not client names (unless you have explicit permission).

### Format 3: LinkedIn Post

```
## LinkedIn Post: [Topic Slug]

[Hook -- first line must earn the "see more" click]

[Story arc compressed to 150-300 words]

[Specific, actionable takeaway]

[Your sign-off]

---

[CTA: Link to full blog post or case study]
```

**Format options:**
- **Story > Insight** (preferred for case studies): Brief story + "here's what I learned" + takeaway
- **Hot Take:** Bold claim supported by the case study result
- **Listicle:** "X things we learned from [engagement]" -- numbered tactical insights

**Rules:**
- Max 1,300 characters
- No hashtags
- Strong point of view

### Format 4: Newsletter Section

A self-contained section for your newsletter:

```
## Newsletter Section: [Section Title]

[150-300 words. Narrative voice. Ties to a broader theme.]

[Specific insight from the engagement that the reader can apply.]

[One actionable takeaway.]
```

## Proof Placement Mapping

For each case study, recommend where it should appear on your website:

```
## Proof Placement: [Case Study Title]

### Primary Placement
- **Page:** [specific page]
- **Location:** [near which CTA or section]
- **Reason:** [why this proof matches this location]

### Secondary Placements
- [Page]: [location] -- [reason]

### Objection Countered
- This case study addresses: "[specific objection]"

### Service Area Match
- Primary: [capability]
- Secondary: [capability]

### Customer Segment Match
- [Which ICP segment this resonates with and why]
```

## Data Collection

Before generating a case study, you need engagement data. If structured data isn't available, use this form:

```
## Case Study Data: [Client/Engagement Name]

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
13. **Permission to publish?** [Y/N -- never publish without confirmation]
```

## Workflow

1. **Receive input** -- Client name, engagement identifier, or "batch" for all missing companion content
2. **Collect data** -- Gather engagement results. Run data collection form if needed
3. **Build the story arc** -- Extract all 5 elements. Present for confirmation before generating outputs
4. **Generate all formats** -- Produce all 4 output formats from the confirmed story arc
5. **Generate proof placement map** -- Map to website pages, objections, service areas
6. **Review** -- Apply quality checklist before delivering

## Facilitated Mode

When `facilitated_mode: true`, add these challenge prompts:

- "How many completed engagements do you have? How many have companion blog posts? The gap is your backlog."
- "What's the single most impressive metric from any client engagement? That's your first case study."
- "Can you tell the story of one client engagement in 60 seconds? If not, the story arc isn't clear enough yet."
- "Who are your 3 most referenceable clients? Start with them."

## Quality Checklist

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

## Works Well With

- If using `testimonial-collector`: pair testimonials with case studies for combined proof
- If using `content-calendar-planner`: case study blog posts should be scheduled in the content calendar
- If using `seo-keyword-mapper`: blog post keywords should come from the keyword map
- If using `nurture-engine`: case studies feed Email 4 (social proof) across all nurture sequences
- If using `landing-page-auditor`: case study pages should be audited for conversion effectiveness

## Platform Notes

| Platform | How to Use |
|----------|-----------|
| **Claude Code** | Full experience. Run as a skill with config.json in the working directory |
| **Claude Desktop** | Paste the skill content as a Project instruction. Provide engagement data in conversation |
| **Claude Cowork** | Add as a source document. Paste the completed data collection form for best results |
