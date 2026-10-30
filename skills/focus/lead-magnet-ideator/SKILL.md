---
name: lead-magnet-ideator
description: Generate and score 5-7 lead magnet concepts using Hormozi's taxonomy, Isenberg's micro-tool model, and Dickerson's AI asset approach, then draft quick tests. Focus stage, GTM and growth path.
license: CC-BY-4.0
---

# Lead Magnet Ideator

**Stage:** Focus. **Best for paths:** GTM and growth.

Generate, score, and compare 5-7 lead magnet concepts so you can pick the strongest one to build. This is an on-demand skill, use it any time you need fresh lead magnet ideas or want to evaluate concepts before committing build time.

**Relationship to offer-designer:** The offer-designer (Build stage) helps you design and build one lead magnet. This skill is for when you need to brainstorm multiple concepts, score them against each other, and pick the best one. Use this skill first to identify your strongest concept, then use offer-designer to build it out with landing page copy, automation flow, and nurture sequence.

## Overview

Three core capabilities:

1. **Ideate**: Generate 5-7 lead magnet concepts matched to your ICP and business type
2. **Score**: Evaluate each concept on 7 dimensions using a weighted scoring framework
3. **Validate**: Draft quick-test hooks to validate concepts before investing build time

**Time estimate:** 30-45 minutes

## Setup

Get context from a FOUNDER JAM HANDOFF block pasted in the chat (the format is defined in `founder-setup`). If you are running in Claude Code with file access, `config.json` in the working directory works too. Ask for anything that is missing, one question at a time.

Sherpa check: if `mode` is missing or empty, ask once, "Is a sherpa with you today?" Default to solo. With a sherpa, add this skill's challenge prompts. Solo, skip them.

Fields needed: `startup_name`, `icp_segment`, `business_type`.

If `icp_segment` is missing, ask: "Who is your ideal customer? (Run `icp-definer` first if you haven't.)"

If `business_type` is missing, ask: "What type of business is this? B2B SaaS, Services, Marketplace, or Consumer?"

## Core frameworks

### Hormozi lead magnet taxonomy (from $100M leads)

**Three Types:**

| Type | What It Does | Best When |
|------|-------------|-----------|
| **Problem Revealing** | Reveals problems the prospect didn't know they had | The revealed problem creates urgency for your paid solution |
| **Samples and Trials** | Gives a taste of your product/service that creates a sense of loss when it ends | Your core product has a clear "aha moment" |
| **One Step of Multi-Step** | Completes one valuable step of a larger process for free | Your paid offer has multiple clear phases or steps |

**Four Delivery Methods:**

1. **Software:** Calculators, assessments, scorecards, interactive tools
2. **Information:** Frameworks, playbooks, guides, industry reports
3. **Services:** Free audit, strategy session, diagnostic review
4. **Physical Products:** Tangible items (books, charts, kits)

### MAGIC naming formula (from $100M offers)

Name your lead magnet using 3-5 of these elements:

- **M = Magnet**: Why does this exist? (free, limited-time, exclusive)
- **A = Avatar**: Who is it for? (founders, marketers, ops leaders)
- **G = Goal**: What result does it produce? (more leads, less churn, faster shipping)
- **I = Interval**: What's the time frame? (30 days, 15 minutes, one week)
- **C = Container**: What format is it? (see container list below)

**Container words by business type:**

| B2B / Services | SaaS / Product | Consumer |
|----------------|----------------|----------|
| Assessment | Calculator | Guide |
| Diagnostic | Scorecard | Checklist |
| Playbook | Benchmark | Template |
| Framework | Dashboard | Toolkit |
| Blueprint | Analyzer | Starter Kit |
| Audit | Free Trial | Community Access |

**Examples:**
- "AI Readiness Scorecard for Mid-Market Leaders" (Avatar + Goal + Container)
- "The 15-Minute Website Diagnostic" (Interval + Goal + Container)
- "SaaS Pricing Benchmark Report" (Goal + Container + Avatar implied)
- "Customer Onboarding Blueprint for B2B Teams" (Goal + Container + Avatar)

### Isenberg's Hyper-Congruent model

Instead of one generic lead magnet for everything, create lead magnets tailored to specific content pieces. Each lead magnet feels like the natural next step from a specific post, video, or article.

**Key principle:** Micro-tools beat PDFs. An interactive calculator, quiz, or lightweight app outperforms a static download because it delivers value in real time.

**Validation cascade:** Before building a lead magnet, test the concept as a lightweight social post. If the post resonates, expand to a full lead magnet. If not, iterate before investing build time.

### Dickerson's AI-powered asset creation

Use AI to handle approximately 80% of lead magnet creation. The founder adds the remaining 20%: unique insights, proprietary data, real examples, and industry credibility.

**Types to rotate:** Niche communities, private databases, AI-powered industry reports, calculators, ebooks, spreadsheet-to-web apps.

**Principle:** Value over vanity. A simple calculator that solves a real problem outperforms a polished PDF that sits in a downloads folder.

## Process

### Step 1: Set context

Confirm from the handoff block or ask:
- Startup name
- ICP segment (from icp-definer)
- Business type (B2B SaaS, Services, Marketplace, Consumer)
- Core offer (what do you sell?)
- Top 1-2 customer pain points

### Step 2: Generate 5-7 concepts

Produce concepts that mix types and delivery methods. Rules:
- Mix Hormozi types (don't generate all Problem Revealing)
- Mix delivery methods (don't generate all Information)
- At least 1 interactive/software concept (micro-tool, calculator, quiz)
- At least 1 information concept (guide, report, playbook)
- Apply MAGIC naming to each concept

For each concept, output:

```
### Concept [N]: [MAGIC name]

**Type:** [Problem Revealing / Sample & Trial / One Step of Multi-Step]
**Delivery Method:** [Software / Information / Services / Physical]

**Value Proposition (one sentence):**
[What the prospect gets and why they'd feel foolish not downloading it]

**What It Reveals/Completes:**
[The specific problem it reveals or the single step it completes]

**Bridge to Paid Offer:**
[How completing this lead magnet naturally leads the prospect toward your core product/service]

**Build Estimate:**
- Tier: [EASY / MEDIUM / HARD]
- Hours: [estimate]
- Tools: [what you'd use to build it]
```

### Step 3: Score each concept

Apply the 7-dimension scoring framework (see below). Present as a comparison table:

```
| Concept | Value Eq | Bridge | ICP Fit | Congruence | Build Speed | Dist Fit | Reuse | Composite |
|---------|----------|--------|---------|------------|-------------|----------|-------|-----------|
| [Name]  | X        | X      | X       | X          | X           | X        | X     | X.X       |
```

Rank by composite score. Flag any concept scoring below 3.0 with a recommendation to rework or kill.

### Step 4: Validation hooks

For the top 2-3 concepts:

1. Draft a one-sentence social media post that tests the concept's core idea (under 280 characters)
2. Draft a 2-3 sentence pitch you could share in conversation

**Validation principle:** Post the hook on LinkedIn, X, or wherever your ICP gathers. If it gets strong engagement, build the lead magnet. If not, iterate on the concept before investing build time.

### Step 5: Recommend next step

Based on scoring:
- **Top concept scores 4.0+:** "Build this now. Use `offer-designer` to create landing page copy, automation flow, and nurture sequence."
- **Top concept scores 3.0-3.9:** "Strong concept but needs refinement. Test the validation hook first, then build."
- **Top concept below 3.0:** "None of these concepts are strong enough yet. Let's reframe the problem or adjust the ICP."

## 7-Dimension scoring framework

Score each concept 1-5 on each dimension.

| # | Dimension | What It Measures | Weight |
|---|-----------|-----------------|--------|
| 1 | **Value Equation** | (Dream Outcome x Perceived Likelihood) / (Time Delay x Effort). High value = high outcome, feels achievable, fast, effortless. | High |
| 2 | **Bridge Strength** | How naturally does completing the lead magnet reveal the need for your paid product/service? | High |
| 3 | **ICP Fit** | How clearly does this target your specific ICP's pain point? (Generic = 1, laser-targeted = 5) | High |
| 4 | **Congruence** | How well does this match content you already produce or topics your ICP already associates with you? | Medium |
| 5 | **Build Speed** | How fast can you ship a functional version? (5 = under 4 hours, 4 = 4-8, 3 = 8-16, 2 = 16-40, 1 = 40+) | Medium |
| 6 | **Distribution Fit** | Can you promote this through channels you already use? | Medium |
| 7 | **Reuse Potential** | Can results generate content, case studies, or data loops? | Low |

### Composite score calculation

```
Composite = (V * 3 + B * 3 + I * 3 + C * 2 + S * 2 + D * 2 + R * 1) / 16
```

**Score Interpretation:**
- **4.0+** = Build immediately. Strong concept with clear ROI.
- **3.0-3.9** = Worth building. May need refinement on weaker dimensions.
- **2.0-2.9** = Needs rework. One or more critical dimensions are weak.
- **Below 2.0** = Kill it. Doesn't fit the model.

## Sherpa-mode challenge prompts

Use these when `mode` is `with-sherpa`:

- "Would you give your email address for this? Would your best customer?"
- "Which of these 7 concepts would your ICP forward to a colleague?"
- "Is this lead magnet solving a real problem in 5 minutes, or is it just educational?"
- "If you could only build ONE of these this week, which one would move the needle most?"
- "What's the simplest version of the top concept you could ship in 4 hours?"
- "Does the bridge to your paid offer feel natural, or does it feel forced?"

## Output format

```
## Lead magnet ideation - [startup_name]
### Date: YYYY-MM-DD

### Context
- ICP: [beachhead from the handoff block]
- Business Type: [from the handoff block]
- Core Offer: [what they sell]

### Concepts generated: [N]
[Full concept cards from Step 2]

### Scoring comparison
[Table from Step 3]

### Top recommendation
**Build:** [top concept name]
**Why:** [1-2 sentence rationale based on scoring]
**Next Step:** [offer-designer / validate first / rethink]

### Validation hooks
[Hooks from Step 4 for top 2-3 concepts]
```

## Handoff

When you finish, print the full FOUNDER JAM HANDOFF block (format: `founder-setup`) in a code fence with these fields filled in:

- `lead_magnet`: [top concept type] - [working title], once the founder confirms the pick

Keep every other field as you received it, and tell the founder to copy the block and paste it into the next skill. If you are running in Claude Code with file access and a Founder Jam `config.json` (one with `startup_name` and `path` keys) already exists in the working directory, update the same fields there and leave every other key as it is. Never create `config.json` in another project or overwrite a file that is not a Founder Jam config. Tell the founder that `offer-designer` will use this concept instead of starting selection again.

## Constraints

- Never fabricate statistics, customer stories, or case study results. Use placeholders or general terms.
- Never generate only one concept. The point of this skill is comparison and selection. Minimum 5.
- Never skip the scoring step. Gut feel is not good enough. Score everything.
- Never recommend building before validating. The validation cascade exists for a reason.
- If the ICP is too broad to generate specific concepts, push the founder to narrow it before proceeding.
- The MAGIC naming formula should produce clear names, not clever ones. Clarity beats cleverness.
- Build estimates should be honest. If a concept requires 40+ hours, say so. Don't pretend everything is EASY tier.

## Where this runs

| Where | What happens |
|-------|--------------|
| claude.ai or Claude desktop (skill uploaded) | Full flow. Paste your handoff block at the start. Save any output you want to keep. |
| Claude Code | Full flow. Can also read and write `config.json`. |

---

Founder Jam curriculum and skills by Drew Burdick · program co-created with Innovate Charlotte · CC BY 4.0 · drewburdick.com/founderjam
