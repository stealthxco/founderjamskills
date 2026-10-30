# Market Analyzer - Instructions for Claude Desktop / Cowork

## What This Skill Does

Runs rapid competitive market intelligence when you need it. Estimates your TAM/SAM/SOM, maps the competitive landscape on a 2x2 grid, and identifies market gaps and channel opportunities. Available any time during the day, most useful in the Understand stage, before you commit to a path.

**Time:** 20-40 minutes on-demand

## How to Use

Copy everything below the line and paste it into a new Claude Desktop or Cowork conversation.

---

## Activation Prompt

```
I'm at Founder Jam working on my startup. I need rapid competitive market intelligence, TAM/SAM/SOM analysis, competitive landscape mapping, and channel opportunity sizing.

Here's my startup context:
- Startup name: [your startup name]
- Problem I'm solving: [one sentence]
- Target market: [who you're building for]
- Category / industry: [what space you're in]

Run the market analysis in founder-input mode, I'll paste in what I know and you organize and analyze it.

[OR: Run in web-augmented mode if WebSearch is available, search for live market size data, competitor funding, and pricing.]

After collecting my input or running searches:

1. Build a TAM/SAM/SOM table showing both top-down and bottom-up estimates with methodology notes. Flag it if they diverge more than 3x.

2. Assess the competitive landscape across four dimensions: market maturity (emerging/growing/mature/declining), competitive intensity (fragmented/competitive/concentrated), innovation rate (fast-moving/stable/commoditized), and dominant acquisition channels.

3. Map competitors on a 2x2 grid. Let's use [price vs. features / market reach vs. specialization] as the axes, or suggest what makes most sense for my category.

4. Give me 3-5 bullet observations on market gaps and timing.

5. Write one direct paragraph on what this means for my go-to-market.

Push back on my assumptions:
- "Is the market big enough to build a venture-scale business, or should this be a lifestyle business? Both are valid."
- "Which competitor is winning, and what does that tell you about what the market values?"
- "What does the market size tell you about my pricing ceiling?"
- "If a well-funded competitor entered my space tomorrow, where would I be most vulnerable?"

Handoff: if I paste a FOUNDER JAM HANDOFF block (key: value lines such as startup_name, mode, path, stage, problem_statement, target_market, icp_segment, hypothesis_selected, channels_selected, lead_magnet), use it as my context and ask only for what is missing. If I'm working alone, skip the challenge questions unless I ask to be pushed harder. When you finish, print the full block again in a code box with your new fields, and any field I gave you that the block was missing, filled in and every other field unchanged, so I can paste it into the next prompt.
```

## What to Expect

1. Claude will ask you to share your research (in founder-input mode) or run searches on your behalf (in web-augmented mode)
2. You'll get both top-down and bottom-up market size estimates, flag any major divergence
3. The competitive landscape will be mapped on a 2x2 grid in text format you can paste into Miro
4. 3-5 observations on gaps and timing
5. A direct paragraph on strategic implications

## Output

All outputs are Miro-ready markdown:
- Market size snapshot (TAM/SAM/SOM table)
- Competitive landscape map (2x2 grid in text format)
- Opportunity summary (3-5 bullets)
- Strategic implications paragraph

## Next Skill

Use the market analysis to inform the next stage:
- Product and positioning, ops and automation: `battle-card-builder.md` (deeper competitive intelligence), then `hypothesis-engine.md`
- GTM and growth, sales: `icp-definer.md` (channel and segment selection)
- End of day: `pitch-builder.md`

---

Founder Jam curriculum and skills by Drew Burdick · program co-created with Innovate Charlotte · CC BY 4.0 · drewburdick.com/founderjam
