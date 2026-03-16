# Growth Builder - Instructions for Claude Desktop / Cowork

## What This Skill Does

Completes the Growth Track with three connected deliverables: one automation spec you can set up today, a North Star metric with supporting metrics to track for 90 days, and a 30-day validation plan with explicit Green/Yellow/Red decision thresholds so you never have to make an emotional call about whether to pivot.

**Time:** 120 minutes | **Growth Track Part 3 of 3**

## How to Use

Copy everything below the line and paste it into a new Claude Desktop or Cowork conversation. Include your outputs from ICP Definer and Offer Designer in the context section below.

---

## Activation Prompt

```
I am working on the Growth Track at Founder Jam. Help me run the Growth Builder activity -- three sub-activities to build one automation, define my North Star metric, and create my 30-day validation plan.

My startup context:
- Startup name: [your startup name]
- Stage: [idea / pre-revenue / early-revenue]
- Business type: [B2B SaaS / Services / Marketplace / Consumer]
- ICP beachhead: [one-line description of your target customer]
- Lead magnet: [name and type of lead magnet from offer-designer]
- Primary channel(s): [1-2 channels selected in icp-definer]

Run these three sub-activities in order:

**Sub-activity A: Choose One Automation**
Present both options, then help me select and fully spec one:

Option 1 - Sales Lead Enrichment:
Trigger (form submission) -> Enrich (Apollo/Clay) -> Score (High/Medium/Low ICP match) -> Route (personal outreach / nurture / newsletter) -> Log in CRM

Option 2 - Customer Support Automation:
Intake (unified inbox) -> Classify (billing / feature / bug / general) -> Route (founder / product log / urgent queue / template) -> Escalate (24h open ticket = founder alert)

For the selected option, output a full automation spec: trigger, steps, tools (free vs. paid), setup complexity, first action to take today.

**Sub-activity B: North Star Metric + Supporting Metrics**
- Recommend the right North Star Metric based on my business type:
  - B2B SaaS: qualified demos booked per week
  - Marketplace: transactions completed per week
  - Services: discovery calls per week
  - Consumer: weekly active users (WAU)
- Help me define 3-5 supporting metrics across acquisition, activation, engagement, and revenue
- Set specific 30-day targets for each metric
- Output a metrics dashboard template I can use in a spreadsheet or Notion

**Sub-activity C: 30-Day Validation Plan**
Build a week-by-week plan:
- Week 1: Setup (channels live, automation tested, metrics baseline set)
- Week 2: Launch (first outreach batch, first lead magnet promotion)
- Week 3: Optimize (review metrics, fix weakest element)
- Week 4: Decide (apply Green/Yellow/Red framework)

Apply the 80/15/5 channel allocation rule:
- Primary channel: 80% of effort (where all the focus goes)
- Secondary channel: 15% of effort (supporting the primary)
- Experimental: 5% of effort (one small test to learn from)

If cold outreach is a channel, enforce anti-pattern rules: no corporate jargon, questions > statements, specific > generic, short > long, one CTA per email.

Then generate a Decision Framework Card with:
- Green (70%+): scale, document what worked, build repeatable system
- Yellow (40-70%): optimize one thing, hold investment, 30-day timer
- Red (<40%): pivot -- revisit ICP or offer, talk to 5 non-converters

Challenge my thinking along the way:
- "Which automation saves you the most time in 30 days?"
- "If you could only track one number for 90 days, what tells you if this is working?"
- "What is your decision rule for pivot vs. persist -- and are you willing to commit to it now?"

At the end, output all Miro-ready artifacts:
1. Automation Spec (trigger, steps, tools, setup time, first action)
2. Metrics Dashboard Template (North Star + 5 supporting metrics with targets)
3. 30-Day Calendar (week-by-week actions with checkboxes)
4. Decision Framework Card (Green/Yellow/Red thresholds for this startup)
```

## What to Expect

1. Claude will present both automation options and help you select the right fit for your stage
2. The automation spec will include every step, the exact tools to use, and your first action today
3. North Star Metric is recommended by business type -- you can adjust based on your specific situation
4. The 30-day plan is built as a checklist with specific actions, not vague intentions
5. The Decision Framework Card locks in your decision criteria before the experiment starts

## Output

- **Automation Spec** -- trigger, step-by-step workflow, tools (free vs. paid), setup complexity, first action
- **Metrics Dashboard Template** -- North Star + supporting metrics with 30-day targets (paste into Notion or a spreadsheet)
- **30-Day Calendar** -- week-by-week action plan with checkbox format
- **Decision Framework Card** -- Green/Yellow/Red thresholds specific to your startup and North Star target

## Next Skill

Growth Track is complete. Proceed to the end-of-day share-out:
- `pitch-builder.md` -- Structure your 5-minute presentation
- `validation-planner.md` -- Create your 2-day / 2-week / 2-month commitment plan
