# Pitch Builder: paste-in prompt

## What this skill does

Structures your end-of-day share-out in 20-30 minutes. It generates talking points, not a script, so your delivery stays natural. It works through one section at a time and picks a format from your path and the length of your slot.

**Stage:** Validate. **Best for paths:** all paths. **Time:** 20-30 minutes.

## How to use

Copy everything inside the box below into a new Claude conversation. If you have a FOUNDER JAM HANDOFF block, paste it where the prompt says. Run this after `validation-planner.md`.

---

## Activation prompt

```
I'm at Founder Jam and I need to prepare my end-of-day share-out.

My FOUNDER JAM HANDOFF block (paste it here, or write "none"):
[paste your block]

Ask me which path I'm on and how long my share-out slot really is. Then pick a format:

Format A, prototype share-out (7-10 minutes), the default for product and positioning:
1. Competitive landscape findings (90 seconds)
2. Hypothesis selection and rationale (90 seconds)
3. Prototype demo walkthrough (3-4 minutes)
4. Key learnings (60 seconds)
5. One specific ask (30 seconds)

Format B, customer and offer share-out (5 minutes), the default for GTM and growth, sales, and ops and automation:
1. Customer and offer (60 seconds). Path-specific offer: lead magnet (GTM and growth), the offer and outbound system (sales), or the manual process and who it serves (ops and automation)
2. What I built today (90 seconds). Nurture sequence, automation, or content workflow (GTM and growth); outbound sequence, call script, or follow-up flow (sales); internal workflow or support automation (ops and automation)
3. My 2-day, 2-week, and 2-month commitments with numbers (90 seconds)
4. One specific ask (60 seconds)

If my slot is shorter than the format, trim the middle sections and always keep the one ask.

Here's what I did today:
- What I learned about my market and competitors: [findings]
- Hypothesis or beachhead customer I chose, and what I rejected: [answer]
- What I built (prototype, lead magnet, sequence, automation): [what it is and how it works. On the ops and automation path: which manual process I automated, what it does now, tools, time saved. A lead magnet is optional.]
- Key surprises: [what I didn't expect]
- My 2-2-2 commitments: [specific actions and numbers]
- Specific ask from the cohort: [what help I actually need]

Build my pitch section by section. Work on one section at a time and check with me before moving on. Generate talking points, not a word-for-word script.

After the full outline, give me:
- A timing guide
- 2-3 versions of a one-sentence pitch for hallway conversations

Push me to be specific:
- "If you only had 60 seconds, what's the one thing you want people to remember?"
- "What's the ask that would actually move you forward this week?"
- "What did you learn that surprised you most?"

When you finish, print an updated FOUNDER JAM HANDOFF block in a code box, with any field I gave you that the block was missing filled in and every other field unchanged. If I wrote "none", build the block from what I told you. Print the block in this layout: a first line `FOUNDER JAM HANDOFF`, then `version: 2`, then one `key: value` line for each of startup_name, mode, path, stage, problem_statement, target_market, team_size, traction, business_type, icp_segment, top_pains, hypothesis_selected, channels_selected, lead_magnet, outbound_system, published_pages, in that order. Leave a value empty when it is unknown, and write channels_selected and published_pages as comma-separated lists on one line.
```

## What to expect

1. Claude asks your path and slot length, then picks a format.
2. It builds each section one at a time and checks with you before moving on.
3. You refine each section. Don't rush this.
4. Talking points, not scripts. Your delivery is better in your own words.

## Output

Miro-ready markdown:

- Pitch outline (section-by-section talking points)
- Timing guide (section lengths)
- One-sentence pitch options (2-3 variations)

## Next skill

If you skipped it, run `validation-planner.md` before the share-out to turn today's work into your 2-day, 2-week, and 2-month commitments.

---

Founder Jam curriculum and skills by Drew Burdick · program co-created with Innovate Charlotte · CC BY 4.0 · drewburdick.com/founderjam
