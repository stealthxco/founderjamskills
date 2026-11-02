# Battle Card Builder - Instructions for Claude Desktop / Cowork

## What This Skill Does

Maps your competitive landscape before you build anything else. It runs you through an honest SWOT self-assessment, then identifies your real competitors across four categories (direct, indirect, status quo, and future entrants), researches each one, and generates a structured battle card per competitor.

**Time:** 75 minutes
**Stage:** Understand. **Best for paths:** all paths, especially product and positioning.

## How to Use

Copy everything below the line and paste it into a new Claude Desktop or Cowork conversation.

---

## Activation Prompt

```
I'm at Founder Jam, in the Understand stage, working on my competitive landscape. Help me run through the Battle Card Builder.

My startup context:
- Startup name: [your startup name]
- Problem it solves: [one sentence]
- Target customer: [job title, company size, industry, or demographic, be specific]

Run me through these steps:

1. SWOT self-assessment, ask me about my strengths, weaknesses, opportunities, and threats. Output a 2x2 Miro-ready table.

2. Competitor identification, help me find 3-5 competitors across four categories: direct (same solution, same customer), indirect (different approach, same job-to-be-done), status quo (the current workaround, spreadsheets, doing nothing, manual process), and future entrants (big players who could enter). If I say I have no competitors, push back: "If no one else is trying to solve this, either you found a $1B opportunity everyone missed, or there's no market. Let's figure out which."

3. Battle card per competitor, for each competitor, fill in: name and URL, positioning statement, ideal customer profile, pricing model, onboarding experience, switching costs (high/medium/low with rationale), key integrations, top 3 strengths, top 3 weaknesses, notable case studies, and "how we win" against them.

4. Competitive summary table, rank all competitors by threat level (high/medium/low) with their primary strength and our advantage.

5. "How We Win" one-liners, one sentence for each competitor including status quo.

Challenge me throughout:
- "What job is the customer hiring today without you?"
- "Which competitor are you most scared of? Why?"
- "Where are switching costs highest, and is that a moat or a trap?"
- "What's your unfair advantage the big players can't copy in 18 months?"
- "If you lost to a competitor today, which one would it be, and what would they have done right?"

Handoff: if I paste a FOUNDER JAM HANDOFF block (key: value lines such as startup_name, mode, path, stage, problem_statement, target_market, icp_segment, hypothesis_selected, channels_selected, lead_magnet), use it as my context and ask only for what is missing. If I'm working alone, skip the challenge questions unless I ask to be pushed harder. When you finish, print the full block again in a code box with your new fields, and any field I gave you that the block was missing, filled in and every other field unchanged, so I can paste it into the next prompt. Print the block in this layout: a first line `FOUNDER JAM HANDOFF`, then `version: 2`, then one `key: value` line for each of startup_name, mode, path, stage, problem_statement, target_market, team_size, traction, business_type, icp_segment, top_pains, hypothesis_selected, channels_selected, lead_magnet, outbound_system, published_pages, in that order. Leave a value empty when it is unknown, and write channels_selected and published_pages as comma-separated lists on one line.
```

## What to Expect

1. Claude will ask about your SWOT, answer honestly, especially weaknesses
2. You'll identify competitors together, share any you've encountered in sales calls
3. For each competitor, Claude will fill in the battle card fields (bring competitor URLs if you have them)
4. You'll get a ranked summary table and "How We Win" one-liners
5. All output is formatted to paste directly into Miro

## Output Format

- SWOT matrix (2x2 table, Miro-ready)
- One battle card per competitor (Miro card format)
- Competitive summary table ranked by threat level
- "How We Win" one-liners for each competitor

## Tips for Better Output

- Share competitor URLs if you know them, Claude can analyze the positioning more accurately
- The status quo competitor (doing nothing, using spreadsheets) is often the hardest to beat, don't skip it
- If you're stuck on weaknesses in your SWOT, ask: "What would a well-funded competitor exploit about us?"

## Next Skill

Next is the Focus stage. Pick by path:

- Product and positioning, ops and automation: `hypothesis-engine.md`
- GTM and growth, sales: `icp-definer.md`

Your competitive findings feed into both. Paste your handoff block and bring your battle card output.

---

Founder Jam curriculum and skills by Drew Burdick · program co-created with Innovate Charlotte · CC BY 4.0 · drewburdick.com/founderjam
