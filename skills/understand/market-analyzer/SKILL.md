---
name: market-analyzer
description: Rapid competitive market intelligence for Founder Jam. TAM/SAM/SOM analysis, competitive landscape mapping, and channel opportunity sizing. Works in web-augmented or founder-input mode.
---

# Market Analyzer

Run rapid competitive market intelligence to inform strategic decisions. Available any time during the day -- most useful during Activity 1 (Product Track) or Part 1 (Growth Track).

## Overview

This skill operates in two modes:
- **Web-augmented mode:** Uses WebSearch for live market size data, competitor funding, pricing, and review sentiment
- **Founder-input mode:** Structures and analyzes research the founder already has

Output is framed as strategic intelligence -- not an SEO audit.

**Time estimate:** 20-40 minutes on-demand

## Process

### Step 1: Load Config

Read `config.json` if it exists. Extract:
- `startup_name`
- `problem_statement`
- `target_market`
- `facilitated_mode`

If config is missing, ask:
1. "What's your startup? (name + one-sentence problem)"
2. "Who is your target market?"
3. "What category or industry are you in?"

### Step 2: Mode Selection

Ask: "Do you want me to search for live market data, or do you have research you want to paste in?"

- **Web-augmented:** Proceed to Step 3a
- **Founder-input:** Proceed to Step 3b

### Step 3a: Web-Augmented Research

Run the following WebSearch queries (adapt category and competitor names based on startup context):

1. `[category] market size [current year] report`
2. `[category] total addressable market estimate`
3. `[top competitor] pricing`
4. `[top competitor] funding crunchbase`
5. `[category] reviews G2 Capterra`
6. `[category] reddit community discussion`

Collect findings before proceeding to analysis. If WebSearch is unavailable, switch to founder-input mode and note it.

**Optional paid tool data (ask if founder has access):**
- SEMrush: category traffic volume estimate
- Ahrefs: domain rating of top 2-3 competitors
- G2: category leader, number of reviews, average rating

Leave these fields blank if unavailable -- they do not block the analysis.

### Step 3b: Founder-Input Mode

Ask the founder to paste or describe what they know:

```
Share what you have -- it can be rough notes. I'll organize and analyze it.

1. Market size estimates (any source)
2. Competitors you know about (names, URLs, rough pricing if known)
3. Customer reviews or feedback you've seen
4. Any funding data on competitors
5. Channels where competitors seem active
```

### Step 4: TAM / SAM / SOM Analysis

Calculate or estimate each level using both methods. Always show your work.

**TAM (Total Addressable Market)**
- Top-down: industry report total x relevant segment %
- Bottom-up: estimated number of potential customers x average annual spend

**SAM (Serviceable Addressable Market)**
- TAM filtered by: geography the founder can realistically reach, segments that match ICP, go-to-market model constraints

**SOM (Serviceable Obtainable Market)**
- SAM filtered by: realistic market share in 3 years given team size, stage, and competitive intensity

**Divergence flag:** If top-down and bottom-up TAM estimates diverge by more than 3x, flag it explicitly:
> "Your top-down and bottom-up estimates diverge significantly. This usually means either the industry data is too broad, or your unit economics assumptions need revisiting. Let's dig into which one is off."

Present as a Miro-ready table:

```
## Market Size Snapshot: [startup_name]

| Level | Estimate | Methodology |
|-------|----------|-------------|
| TAM   | $[X]B    | [Top-down source] / [Bottom-up calculation] |
| SAM   | $[X]M    | Filtered by [geography/segment/GTM] |
| SOM   | $[X]M    | [X]% market share at [Y] years, based on [rationale] |

**Note:** [Any divergence flag or data confidence caveat]
```

### Step 5: Competitive Landscape Dimensions

Assess the market across four dimensions based on research:

| Dimension | Options | Assessment |
|-----------|---------|------------|
| Market maturity | Emerging / Growing / Mature / Declining | [assessment] |
| Competitive intensity | Fragmented / Competitive / Concentrated | [assessment] |
| Innovation rate | Fast-moving / Stable / Commoditized | [assessment] |
| Dominant channels | [list top 2-3 acquisition channels seen across landscape] | [assessment] |

Then generate the 2x2 competitive landscape map. Choose the axes most relevant to the founder's positioning:
- **Option A:** Price (low-high) vs. Features (broad-narrow)
- **Option B:** Market reach (niche-broad) vs. Specialization (generalist-specialist)
- **Option C:** Ask founder: "What's the axis that matters most in your category?"

Present as Miro-ready text:

```
## Competitive Landscape: [startup_name]

**Axes:** [X-axis label (left -> right)] / [Y-axis label (bottom -> top)]

**Top-right quadrant (high X, high Y):** [Competitor names]
**Top-left quadrant (low X, high Y):** [Competitor names]
**Bottom-right quadrant (high X, low Y):** [Competitor names]
**Bottom-left quadrant (low X, low Y):** [Competitor names]
**[startup_name] current position:** [quadrant or between quadrants, with rationale]
**[startup_name] target position:** [where they should aim and why]
```

### Step 6: Opportunity Summary

Generate 3-5 bullet observations on gaps and timing:

```
## Opportunity Summary

- [Observation 1: market gap or timing signal]
- [Observation 2: competitor weakness or underserved segment]
- [Observation 3: channel opportunity]
- [Observation 4: pricing white space, if applicable]
- [Observation 5: early signal or trend, if applicable]
```

### Step 7: Strategic Implications

Write one paragraph on what this market picture means for the founder's go-to-market. Be direct. Address:
- Whether the market is large enough for the founder's ambition (venture-scale vs. lifestyle -- both valid)
- Where competitors are vulnerable
- What this means for pricing ceiling
- What timing signal exists (why now, or why wait)

### Step 8: Facilitator Questions

If `facilitated_mode` is true, surface these questions as prompts for reflection after delivering the output:

- "Is the market big enough to build a venture-scale business, or should this be a lifestyle business? Both are valid."
- "Which competitor is winning -- and what does that tell you about what the market values?"
- "What does the market size tell you about your pricing ceiling?"
- "If a well-funded competitor entered your space tomorrow, where would you be most vulnerable?"

## Output Format

Deliver all four outputs in sequence as Miro-ready markdown:

1. **Market Size Snapshot** -- TAM/SAM/SOM table with methodology notes
2. **Competitive Landscape Map** -- 2x2 grid in text format
3. **Opportunity Summary** -- 3-5 bullet observations
4. **Strategic Implications** -- one direct paragraph

## Config Dependencies

**Reads:** `startup_name`, `problem_statement`, `target_market`, `facilitated_mode`
**Writes:** Nothing

## Platform Notes

| Platform | Behavior |
|----------|----------|
| Claude Code | Full: WebSearch + file output |
| Claude Desktop | Full: WebSearch available |
| Claude Cowork | Founder-input mode only; no live web search |
