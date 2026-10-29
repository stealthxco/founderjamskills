---
name: landing-page-auditor
description: Audit a landing page across 8 dimensions using Hormozi's Value Equation and Dickerson's positioning angles, and produce prioritized fixes and A/B test variants. Validate stage, once a page exists.
license: CC-BY-4.0
---

# Landing Page Auditor Skill

**Stage:** Validate. **Best for paths:** product and positioning, GTM and growth.

## Overview

Audit any landing page, service page, or programmatic SEO page for conversion effectiveness. Instead of subjective "this looks good" reviews, score pages against proven frameworks and generate specific, prioritized fixes.

Key capabilities:
- Score pages against Hormozi's essential page elements and Value Equation
- Apply Dickerson's positioning angle templates and rejection cycle process
- Evaluate copy, social proof placement, CTA clarity, and mobile optimization
- Generate optimized headline, subhead, and CTA variants for A/B testing
- Audit programmatic SEO pages for quality and uniqueness
- Check for Isenberg's "congruence": does the page match the traffic source?

## Context

Get context from a FOUNDER JAM HANDOFF block pasted in the chat (the format is defined in `founder-setup`). If you are running in Claude Code with file access, `config.json` in the working directory works too. Ask for anything that is missing, one question at a time.

Sherpa check: if the block has no `mode` field, ask once, "Is a sherpa with you today?" Default to solo. With a sherpa, add this skill's challenge prompts. Solo, skip them.

**Read from the handoff block:**
- `startup_name`: company name for copy variants
- `icp_segment`: target customer for congruence checking
- `business_type`: service model for positioning angle selection
- `mode`: `with-sherpa` adds challenge prompts

**Optional details (not in the handoff block, ask if useful):**
- `service_areas`: array of service offerings for page-specific guidance
- `common_objections`: array of top sales objections for FAQ scoring

**Writes:** Nothing back to the handoff block. Output is presented for review and manual saving.

## The audit scorecard

Every page is scored on 8 dimensions (1-10 each, some weighted 2x).

### Dimension 1: Headline clarity (weight: 2x)

| Score | Criteria |
|-------|---------|
| 9-10 | Specific outcome + timeframe + audience |
| 7-8 | Clear value proposition but missing specificity |
| 5-6 | Describes what you do but not the outcome |
| 3-4 | Generic or vague |
| 1-2 | Missing, irrelevant, or confusing |

**Hormozi rule:** Write at a third-grade reading level. Simple sentences, small words.

### Dimension 2: Value Equation alignment (weight: 2x)

```
Value = (Dream Outcome x Perceived Likelihood) / (Time Delay x Effort & Sacrifice)
```

| Factor | What to Check on the Page |
|--------|--------------------------|
| Dream Outcome | Is the outcome specific and desirable? |
| Perceived Likelihood | Is there proof it works? (case studies, testimonials, logos) |
| Time Delay | Is speed communicated? |
| Effort & Sacrifice | Is it clear this is easy for the client? |

Score each factor 1-10.

### Dimension 3: Social proof placement

| Score | Criteria |
|-------|---------|
| 9-10 | Testimonials near CTAs, logos above the fold, specific metrics, multiple proof types |
| 7-8 | Present but not strategically placed near decision points |
| 5-6 | Logos only, no testimonials |
| 3-4 | Buried below the fold |
| 1-2 | No social proof |

**Hormozi rule:** CTA buttons should be accompanied by social proof.

**Placement by page section:**

| Section | Doubt at This Point | Best Proof Type |
|---------|--------------------|-----------------|
| Hero | "Is this company legitimate?" | Logos, credibility statement |
| Service description | "Can they do this?" | Capability-specific testimonial with metrics |
| Pricing | "Is this worth it?" | ROI testimonial |
| CTA | "Should I commit?" | Recent testimonial + guarantee language |

### Dimension 4: CTA clarity and frequency

| Score | Criteria |
|-------|---------|
| 9-10 | One consistent CTA phrase, multiple placements, low-friction action, clear next step |
| 7-8 | Consistent CTA, 2+ placements |
| 5-6 | CTA exists once, or uses generic language ("Contact us") |
| 3-4 | Multiple different CTA phrases creating confusion |
| 1-2 | No clear CTA |

**Hormozi rule:** "Stupid simple" directions. No confusion about next steps.

### Dimension 5: FAQ / objection handling

| Score | Criteria |
|-------|---------|
| 9-10 | FAQ addresses all common objections using prospect language |
| 7-8 | Covers 3-4 objections |
| 5-6 | Generic FAQ |
| 3-4 | Minimal FAQ |
| 1-2 | No FAQ |

Use your top sales objections (from the founder's sales calls or from experience).

### Dimension 6: Traffic-source congruence (Isenberg)

Does the page match what the visitor expected?

| Score | Criteria |
|-------|---------|
| 9-10 | Page directly continues the conversation from the traffic source |
| 7-8 | Relevant but doesn't directly mirror the source messaging |
| 5-6 | General page serving multiple traffic sources |
| 3-4 | Requires mental bridging from expectation to reality |
| 1-2 | Significant disconnect |

**Check for each source:** organic search (headline matches query?), social post (delivers on promise?), email (continues conversation?), referral (speaks to recommendation?).

### Dimension 7: Mobile optimization

| Score | Criteria |
|-------|---------|
| 9-10 | Fast load, readable, thumb-friendly CTAs, no horizontal scroll |
| 7-8 | Functional but not optimized |
| 5-6 | Desktop-first, technically works on mobile |
| 3-4 | Significant usability issues |
| 1-2 | Broken on mobile |

### Dimension 8: Brand voice compliance

| Score | Criteria |
|-------|---------|
| 9-10 | Matches your brand voice. Direct, confident, authentic |
| 7-8 | Mostly on-brand with minor deviations |
| 5-6 | Mixed quality |
| 3-4 | Reads like generic template copy |
| 1-2 | Off-brand or AI slop |

## Composite score

```
Score = (Headline x 2) + (Value Equation x 2) + Social Proof + CTA + FAQ + Congruence + Mobile + Voice

Max possible: 100
```

| Range | Rating | Action |
|-------|--------|--------|
| 85-100 | Strong | Minor tweaks, A/B testing |
| 70-84 | Good | 2-3 specific fixes |
| 55-69 | Needs Work | Significant revisions |
| Below 55 | Rebuild | Fundamental issues |

## Positioning angle templates (Dickerson)

When generating optimized copy variants:

### For service business pages

| Angle | Template |
|-------|---------|
| The Specialist | "We only work with [specific niche]" |
| Proprietary Methodology | "Our [named process] ensures [specific outcome]" |
| Results Track Record | "We've helped [#] companies achieve [specific outcome]" |
| Anti-Agency | "No [common frustration]. Just [what you actually deliver]." |

### For assessment / tool pages

| Angle | Template |
|-------|---------|
| Speed | "Get your [score type] in [X] minutes" |
| Simplicity | "Answer [X] questions. Get a custom roadmap." |
| No Commitment | "Free. No sales calls required." |

## Rejection cycle process (Dickerson)

After reviewing or generating page copy:

1. Generate first draft or assess current copy
2. Flag generic content: "This is too generic, make it more specific"
3. Enforce voice consistency: "This doesn't match the brand voice"
4. Test conversion readiness: "Would you actually take the CTA action from this page?"
5. Iterate until right

## A/B testing protocol (Hormozi)

### Weekly testing cadence

```
## A/B test: [Page name]
**Week of:** YYYY-MM-DD

### Element being tested
[headline / subhead / CTA text / CTA placement / social proof]

### Variant A (control)
[current version]

### Variant B (challenger)
[new version with rationale]

### Metric
[conversion rate: form submissions, bookings, assessment starts]

### Result
- Variant A: X% (n=X visitors)
- Variant B: X% (n=X visitors)
- Winner: [A/B]
- Action: [keep winner, test next element]
```

**Rules:**
- Change only ONE element per test
- Run for 7 days or 100 visitors per variant minimum
- Never assume your first version is the best

## Audit output format

```
## Page audit: [Page name/URL]
**Audited:** YYYY-MM-DD
**Composite Score:** X/100
**Rating:** [Strong / Good / Needs Work / Rebuild]

### Scorecard
| Dimension | Score | Weight | Weighted | Notes |
|-----------|-------|--------|----------|-------|
| Headline Clarity | X/10 | 2x | X | [observation] |
| Value Equation | X/10 | 2x | X | [DO, PL, TD, ES scores] |
| Social Proof | X/10 | 1x | X | [observation] |
| CTA Clarity | X/10 | 1x | X | [observation] |
| FAQ/Objections | X/10 | 1x | X | [observation] |
| Congruence | X/10 | 1x | X | [observation] |
| Mobile | X/10 | 1x | X | [observation] |
| Brand Voice | X/10 | 1x | X | [observation] |

### Priority fixes (ordered by impact)
1. **[Fix]**: Impact: [High/Med/Low]: Effort: [High/Med/Low]
   - Current: [what exists]
   - Recommended: [specific change]
   - Rationale: [why]

### Copy variants for A/B testing
**Headlines:**
- A (current): [current]
- B: [variant + rationale]
- C: [variant + rationale]

**CTAs:**
- A (current): [current]
- B: [variant]
- C: [variant]

### Congruence check
| Traffic Source | Match? | Fix Needed? |
|--------------|--------|-------------|
| Organic: [keyword] | [Y/N] | [fix] |
| Social post | [Y/N] | [fix] |
| Email | [Y/N] | [fix] |
```

## Workflow

1. **Select page**: URL, page name, or "batch" for all key pages
2. **Read the page**: Review actual content (never assume based on page name alone)
3. **Score all 8 dimensions**: Specific observations for each
4. **Generate fix list**: Prioritized by impact and effort
5. **Generate copy variants**: 3 options for top fixes
6. **Document**: Save audit for tracking improvement

## Sherpa mode

When `mode` is `with-sherpa`, add these challenge prompts:

- "Open your homepage right now. Can you tell what you do, who you help, and what result you deliver within 5 seconds? If not, that's fix #1."
- "Count your CTA variations across your site. If you have more than 2 different CTA phrases, simplify."
- "Where are your testimonials? If they're on a separate page nobody visits, they're not working."
- "Pull up your site on your phone. Would you book a call from this experience?"

## Constraints

- Never recommend changes that conflict with your brand voice or positioning
- Never recommend A/B tests with more than one variable change
- Never audit a page without reading its actual content first
- Never recommend removing social proof to "simplify." Social proof near CTAs is non-negotiable
- Never ignore mobile optimization

## Works well with

- If using `offer-architect`: package value propositions inform CTA language on service pages
- If using `testimonial-collector`: placement recommendations from the collector should match audit findings
- If using `seo-keyword-mapper`: programmatic pages should be audited before scaling
- If using `case-study-generator`: case study pages should be audited for proof placement
- If using `lead-magnet-ideator`: lead magnet landing pages need congruence auditing

## Where this runs

| Where | What happens |
|-------|--------------|
| claude.ai or Claude desktop (skill uploaded) | Full flow. Paste your handoff block at the start. Save any output you want to keep. |
| Claude Code | Full flow. Can also read and write `config.json`. |

---

Founder Jam curriculum and skills by Drew Burdick · program co-created with Innovate Charlotte · CC BY 4.0 · drewburdick.com/founderjam
