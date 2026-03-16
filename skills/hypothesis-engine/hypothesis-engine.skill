---
name: hypothesis-engine
description: Generate and select your top strategic hypothesis using the Double Diamond method. Diverges to 6-10 candidates, scores each on desirability/feasibility/viability, then converges to your top 2-3. Writes the winning hypothesis to config.json.
---

# Hypothesis Engine

Turn your competitive insights into a testable strategic hypothesis. This skill runs the Double Diamond -- first diverging to generate many candidates, then converging to the 2-3 worth validating. You leave with a hypothesis written in two formats: an outcome statement and a validation commitment.

**Track:** Product
**Workshop Segment:** Activity 2 - Hypothesis Design (11:00am-12:15pm)
**Time estimate:** 75 minutes

## Overview

1. Load context from SWOT and battle card output (or ask)
2. Diverge: generate 6-10 hypothesis candidates using thought starters
3. Evaluate: score each on desirability, feasibility, viability (1-5)
4. Converge: select top 2-3 for dual-format development
5. Write winning hypothesis to config.json

## Config

Read `config.json` if present. Extract: `startup_name`, `problem_statement`, `target_market`, `stage`, `facilitated_mode`.

If config is missing, ask conversationally:
- "What's your startup called?"
- "What problem does it solve, and for who?"
- "What stage are you at -- idea, pre-revenue, or early-revenue?"
- "Do you have findings from the battle card session? Share any key competitive insights."

## Step 1: Frame the Hypothesis Challenge

Before generating candidates, orient the founder:

"A good hypothesis is specific, time-bound, and falsifiable. We're going to use the Double Diamond -- first we'll generate more candidates than you need, then we'll score and select. Don't edit yourself in the diverge phase."

Share the two hypothesis formats:

**Format 1 -- Outcome statement:**
> "If we [change/experiment], then [target customer] will [measurable outcome] by [specific date]."

**Format 2 -- Validation commitment:**
> "We believe [ICP] will pay $[Y]/month for [specific outcome]. We will validate this by [specific experiment] within [timeframe]."

A strong hypothesis is:
- Specific (names the change, the target, the metric)
- Time-bound (has a date or timeframe)
- Falsifiable (you can prove it wrong)
- Connected to a mechanism (the "because" or "by" clause)

## Step 2: Diverge Phase

Generate 6-10 hypothesis candidates. Use the 20 thought starters below to prompt the founder. Do not generate all 20 -- pick 6-10 most relevant based on the startup context.

### 20 Hypothesis Thought Starters

Use these as starting points. Rewrite in the founder's own words using the formats above.

**1. Pricing Model**
If we switch from a one-time fee to a monthly subscription, customers will have a lower barrier to purchase and we will see a 20% increase in new customer acquisition within 90 days, because the upfront cost is the primary objection in sales calls.

**2. Customer Retention**
If we implement a personalized onboarding program within the first 30 days of signup, we will reduce churn by 15% over six months, because customers who do not reach their first value milestone within a month are significantly more likely to cancel.

**3. Value Proposition**
If we change our core value proposition to emphasize time savings over cost savings in all marketing materials, we will increase our conversion rate by 10% within 60 days, because our target customers are time-constrained professionals who value efficiency over price.

**4. Channel Effectiveness**
If we shift 50% of our marketing budget from paid ads to content marketing over the next six months, we will generate more qualified leads at a lower cost per acquisition, because our ICP researches solutions through educational content before making purchase decisions.

**5. Sales Funnel**
If we add a free trial option to our pricing page, we will increase the number of users who progress from consideration to purchase by 25% within 90 days, because customers need to experience the product's value before committing financially.

**6. Customer Acquisition**
If we launch a referral program offering existing customers a one-month discount for each new customer they refer, we will acquire 30% of new customers through referrals within six months, because our current customers have strong networks of peers with the same pain point.

**7. Brand Messaging**
If we reposition our brand as a premium solution focusing on enterprise clients rather than small businesses, we will attract higher-value contracts averaging 3x our current deal size within a year, because our product capabilities align more closely with enterprise requirements.

**8. Product-Market Fit**
If we develop a feature set specifically for [vertical] customers, we will increase adoption in that segment by 40% within six months, because this vertical has underserved needs that our current generic solution does not address well.

**9. Service Efficiency**
If we introduce AI-driven automation to handle routine customer inquiries, we will reduce average response time from 24 hours to 2 hours and decrease support costs by 30% within three months, because the majority of inbound tickets are repetitive and rule-based.

**10. User Experience**
If we simplify our onboarding process from seven steps to three, we will increase the percentage of users who complete setup and reach their first value moment by 35% within 60 days, because friction in onboarding is the primary driver of early drop-off.

**11. Partnership Impact**
If we establish a co-marketing partnership with [complementary product], we will access their customer base and generate 200 qualified leads in the first quarter, because their customers already have the pain we solve and trust that vendor's recommendations.

**12. Customer Pain Point**
If we launch a feature that directly addresses [specific pain point], we will see a 50% increase in usage among affected users and a 20% improvement in retention for that cohort within 90 days, because this pain point is the most frequently cited reason for cancellation in exit surveys.

**13. Referral Program**
If we offer customers a cash incentive of $50 for each successful referral, we will increase our referral rate from 5% to 20% of new customers within six months, because our current customers frequently mention our product to peers but lack a structured incentive to formalize referrals.

**14. Customer Loyalty**
If we introduce a tiered loyalty program rewarding long-term customers with exclusive benefits, we will improve our net promoter score by 15 points and reduce churn among customers of three years or more by 10% within a year, because high-tenure customers feel undervalued compared to new customer promotions.

**15. Packaging**
If we offer a bundled package combining our product with a complementary service at a 15% discount, we will increase average deal size by 25% and reduce competitive pressure within 90 days, because bundled solutions reduce the need for customers to evaluate separate vendors.

**16. Feature Usage**
If we redesign the dashboard to make our most-used feature more prominent and accessible within one click, we will see a 40% increase in daily active usage of that feature within 30 days, because the current navigation buries it and users forget it exists.

**17. Geographical Market**
If we launch a targeted marketing campaign in [city/region], we will acquire 50 new customers in that market within six months, because the demographic and industry mix there closely mirrors our current highest-retention customer segment.

**18. Customer Support**
If we proactively reach out to customers who have not logged in for 14 days with a personalized check-in and help offer, we will re-engage 25% of at-risk users and reduce churn in that cohort by 20% within 90 days, because early inactivity is the strongest predictor of cancellation in our data.

**19. Marketing Message**
If we A/B test two versions of our homepage headline -- one focused on outcome and one focused on process -- we will identify a clear winner with at least 15% higher conversion within 30 days, because our current messaging has not been validated against user language and may not match how customers describe their own problem.

**20. Community Engagement**
If we build an online community for our users to share best practices and peer support, we will increase product engagement by 30% and improve retention by 15% over six months, because customers who connect with peers around a shared tool develop stronger product habits and feel accountable to a group.

---

For each candidate, write it in the founder's voice using one of the two formats. Aim for 6-10 distinct candidates. Label them H1 through H[n].

Output a diverge board:

```
## Diverge Board: Hypothesis Candidates

| # | Hypothesis | Category |
|---|---|---|
| H1 | [hypothesis statement] | [thought starter category] |
| H2 | [hypothesis statement] | [thought starter category] |
| ... | | |
```

If `facilitated_mode` is true, after the diverge board add: "Which hypothesis are you avoiding because it would require the most change? That's probably the most important one."

## Step 3: Evaluate Phase

Score each hypothesis candidate on three dimensions (1-5 scale):

- **Desirability (1-5):** Do customers actually want this? Is there evidence of demand?
- **Feasibility (1-5):** Can you realistically execute this given your team size, stage, and resources?
- **Viability (1-5):** Does this create a path to sustainable revenue? Does it help the business model?

Also assign a **Risk Score (1-5):** How bad is it if this hypothesis is wrong? (5 = catastrophic, 1 = low stakes)

Output an evaluation table:

```
## Hypothesis Evaluation

| # | Hypothesis | Desirability | Feasibility | Viability | Risk | Total (D+F+V) |
|---|---|---|---|---|---|---|
| H1 | [short label] | 4 | 3 | 4 | 2 | 11 |
| H2 | [short label] | 3 | 5 | 3 | 3 | 11 |
| ... | | | | | | |
```

Briefly explain scores for each hypothesis (1-2 sentences). Flag any hypothesis scoring below 8 total as unlikely to be worth pursuing.

Sense-check each candidate against the founder's reality:
- Stage (idea): prioritize desirability and feasibility over viability -- prove the need first
- Stage (pre-revenue): balance all three -- you need a path to paying customers
- Stage (early-revenue): weight viability higher -- optimize what's already working

If `facilitated_mode` is true, challenge low-risk hypotheses: "A risk score of 1 might mean this hypothesis is safe to test -- or it might mean you're not testing something that matters. What's the highest-risk hypothesis on this board?"

## Step 4: Converge Phase

Select the top 2-3 hypotheses based on total score and founder preference. For each selected hypothesis, develop the full dual format:

```
## Hypothesis Card: [H#] - [Short Name]

### Outcome Statement
If we [specific change/experiment], then [target customer] will [measurable outcome] by [specific date].

### Validation Commitment
We believe [ICP] will [specific behavior] for [specific outcome]. We will validate this by [specific experiment] within [timeframe].

### Why This One
[2-3 sentences on why this hypothesis is worth testing now, given the competitive landscape and stage]

### Fastest Way to Be Wrong
[1 sentence -- what's the fastest experiment that could disprove this?]

### Validation Experiment Brief
[One paragraph describing the specific experiment: who you'll talk to, what you'll build or test, what signal will confirm or deny the hypothesis]
```

After all selected hypotheses are developed, ask the founder to pick one primary hypothesis for the prototype session:

"You'll take one of these into the Prototype Launcher. Which hypothesis do you want to test in the next session?"

## Step 5: Write Config

If running in Claude Code, update `config.json` with the winning hypothesis:

```json
{
  "hypothesis_selected": "[winning hypothesis in outcome statement format]"
}
```

## Facilitated Mode Questions

When `facilitated_mode` is true, add these provocative questions at natural moments:

- After diverge board: "Which hypothesis are you avoiding because it would require the most change? That's probably the most important one."
- After scores: "What's the fastest you could know if this hypothesis is wrong?"
- After convergence: "Are you testing a real risk to the business, or confirming something you already believe?"
- Final challenge: "What would it take to prove this wrong in 2 weeks?"

## Output Summary

When complete:
- Diverge board: all 6-10 candidates (Miro-ready table)
- Evaluation table with scores
- Top 2-3 hypothesis cards in dual format
- Winning hypothesis written to config.json

Then say: "Take your winning hypothesis into the Prototype Launcher. Your goal is to build the fastest thing that can confirm or deny it."

## Config Dependencies

**Reads:** `startup_name`, `problem_statement`, `target_market`, `stage`, `facilitated_mode`
**Writes:** `hypothesis_selected`

## Platform Notes

| Platform | Behavior |
|----------|----------|
| Claude Code | Full: reads and writes config.json |
| Claude Desktop | Full: manual context input; outputs hypothesis cards for manual saving |
| Claude Cowork | Full: same as Desktop |
