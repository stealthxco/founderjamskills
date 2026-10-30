# Growth Builder - Instructions for Claude Desktop / Cowork

## What This Skill Does

Builds three connected deliverables: one automation spec you can set up today, a North Star metric with supporting metrics to track for 90 days, and a 30-day validation plan with explicit Green/Yellow/Red decision thresholds so you never have to make an emotional call about whether to pivot.

**Time:** 120 minutes | **Stage:** Build. **Best for paths:** GTM and growth, ops and automation

## How to Use

Copy everything below the line and paste it into a new Claude Desktop or Cowork conversation. Include your outputs from ICP Definer and Offer Designer in the context section below (on the ops and automation path with an internal process, your hypothesis-engine output is enough).

---

## Activation Prompt

```
I am in the Build stage at Founder Jam. Help me run the Growth Builder activity, three sub-activities to build one automation, define my North Star metric, and create my 30-day validation plan.

My startup context:
- Startup name: [your startup name]
- Stage: [idea / pre-revenue / early-revenue]
- Business type: [B2B SaaS / Services / Marketplace / Consumer]
- ICP beachhead: [one-line description of your target customer]
- Lead magnet: [name and type of lead magnet from offer-designer, or "none" if I'm on the ops and automation path automating an internal process]
- Primary channel(s): [1-2 channels selected in icp-definer, or "none" if I'm on the ops and automation path automating an internal process]
- If I'm automating an internal process: [which manual process, and who it serves]

If I'm on the ops and automation path and my process is internal or for support (no lead magnet, no acquisition channels), don't ask me for a lead magnet or channels, and leave out channel, outreach, and lead magnet steps from every deliverable.

Run these three sub-activities in order:

**Sub-activity A: Choose One Automation**
Present both options, then help me select and fully spec one:

Option 1 - Sales Lead Enrichment:
Trigger (form submission) -> Enrich (Apollo/Clay) -> Score (High/Medium/Low ICP match) -> Route (personal outreach / nurture / newsletter) -> Log in CRM

Option 2 - Customer Support Automation:
Intake (unified inbox) -> Classify (billing / feature / bug / general) -> Route (founder / product log / urgent queue / template) -> Escalate (24h open ticket = founder alert)

If my process is internal, Option 2 or a custom internal workflow fits best.

For the selected option, output a full automation spec: trigger, steps, tools (free vs. paid), setup complexity, first action to take today.

**Sub-activity B: North Star Metric + Supporting Metrics**
- Recommend the right North Star Metric based on my business type:
  - B2B SaaS: qualified demos booked per week
  - Marketplace: transactions completed per week
  - Services: discovery calls per week
  - Consumer: weekly active users (WAU)
  - Internal process: tasks completed through the automation per week
- Help me define 3-5 supporting metrics across acquisition, activation, engagement, and revenue (for an internal process: adoption, time saved per task, and error or rework rate)
- Set specific 30-day targets for each metric
- Output a metrics dashboard template I can use in a spreadsheet or Notion

**Sub-activity C: 30-Day Validation Plan**
Build a week-by-week plan:
- Week 1: Setup (channels live, automation tested, metrics baseline set)
- Week 2: Launch (first outreach batch, first lead magnet promotion)
- Week 3: Optimize (review metrics, fix weakest element)
- Week 4: Decide (apply Green/Yellow/Red framework)

For an internal process, skip channels, outreach, and lead magnet promotion. Week 1 is the automation tested and the baseline set. Week 2 is the first real users running it, with the first tasks completed through it. Week 3 is one focused fix to a workflow step. Week 4 is the decision.

Apply the 80/15/5 channel allocation rule (skip this for an internal process):
- Primary channel: 80% of effort (where all the focus goes)
- Secondary channel: 15% of effort (supporting the primary)
- Experimental: 5% of effort (one small test to learn from)

If cold outreach is a channel, enforce anti-pattern rules: no corporate jargon, questions > statements, specific > generic, short > long, one CTA per email.

Then generate a Decision Framework Card with:
- Green (70%+): scale, document what worked, build repeatable system
- Yellow (40% to under 70%): optimize one thing, hold investment, 30-day timer
- Red (<40%): pivot, revisit ICP or offer, talk to 5 non-converters (for an internal process: re-scope the process, fix the step where people stop using it, or pick a different process, and talk to 5 people who tried it and stopped)

Challenge my thinking along the way:
- "Which automation saves you the most time in 30 days?"
- "If you could only track one number for 90 days, what tells you if this is working?"
- "What is your decision rule for pivot vs. persist, and are you willing to commit to it now?"

At the end, output all Miro-ready artifacts:
1. Automation Spec (trigger, steps, tools, setup time, first action)
2. Metrics Dashboard Template (North Star + 5 supporting metrics with targets)
3. 30-Day Calendar (week-by-week actions with checkboxes)
4. Decision Framework Card (Green/Yellow/Red thresholds for this startup)

Handoff: if I paste a FOUNDER JAM HANDOFF block (key: value lines such as startup_name, mode, path, stage, problem_statement, target_market, icp_segment, hypothesis_selected, channels_selected, lead_magnet), use it as my context and ask only for what is missing. If I'm working alone, skip the challenge questions unless I ask to be pushed harder. When you finish, print the full block again in a code box with your new fields filled in and every other field unchanged, so I can paste it into the next prompt.
```

## What to Expect

1. Claude will present both automation options and help you select the right fit for your stage
2. The automation spec will include every step, the exact tools to use, and your first action today
3. North Star Metric is recommended by business type, you can adjust based on your specific situation
4. The 30-day plan is built as a checklist with specific actions, not vague intentions
5. The Decision Framework Card locks in your decision criteria before the experiment starts

## Output

- **Automation Spec**: trigger, step-by-step workflow, tools (free vs. paid), setup complexity, first action
- **Metrics Dashboard Template**: North Star + supporting metrics with 30-day targets (paste into Notion or a spreadsheet)
- **30-Day Calendar**: week-by-week action plan with checkbox format
- **Decision Framework Card**: Green/Yellow/Red thresholds specific to your startup and North Star target

## Next Skill

Next is the Validate stage:
- `validation-planner.md`: create your 2-day, 2-week, and 2-month commitment plan
- `pitch-builder.md`: structure your share-out

---

Founder Jam curriculum and skills by Drew Burdick · program co-created with Innovate Charlotte · CC BY 4.0 · drewburdick.com/founderjam
