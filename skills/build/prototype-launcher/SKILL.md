---
name: prototype-launcher
description: Build a rapid prototype based on your winning hypothesis. Selects the right prototype type from 8 categories, generates the actual artifact (Lovable prompt, Carrd copy, campaign brief, etc.), and creates a test plan. Keeps founders from over-engineering.
---

# Prototype Launcher

Build the fastest thing that can confirm or deny your hypothesis. This skill selects the right prototype type, generates the actual artifact, and keeps you focused on learning -- not building a product.

**Track:** Product
**Workshop Segment:** Activity 3 - Rapid Prototyping (1:00-3:00pm)
**Time estimate:** 120 minutes

## The Three Mantras

These apply at every step. If you find yourself second-guessing, return here.

> "Right problem > shiny solution"
> "Done > perfect"
> "Be ready to throw it away"

A prototype is not meant to last. It is meant to answer one question: does this hypothesis hold? Build the minimum version that can give you a real signal.

## Config

Read `config.json` if present. Extract: `hypothesis_selected`, `startup_name`, `stage`, `target_market`, `facilitated_mode`.

If `hypothesis_selected` is empty or config is missing, ask:
- "What's your winning hypothesis from the hypothesis engine session?"
- "What's your startup and who is your target customer?"
- "What stage are you at -- idea, pre-revenue, or early-revenue?"

## Step 1: Prototype Brief

Before selecting a type, establish the brief:

```
## Prototype Brief

**Startup:** [startup_name]
**Hypothesis Being Tested:** [hypothesis_selected]
**Target Customer:** [target_market]
**Stage:** [stage]

**The Question This Prototype Must Answer:**
[Distill the hypothesis into one testable question -- e.g., "Will [ICP] pay $X/month for [outcome]?"]

**Success Signal:**
[What observable behavior or response would confirm the hypothesis?]

**Failure Signal:**
[What would tell you the hypothesis is wrong?]

**Deadline:**
[When will you have a result? Default to 2 weeks.]
```

If `facilitated_mode` is true, add before proceeding: "What's the riskiest assumption in your hypothesis? Can you design the prototype to test that first -- before anything else?"

## Step 2: Select Prototype Type

Present the 8 supported types and ask the founder to choose. Recommend based on hypothesis type and stage.

```
Which prototype type fits your hypothesis?

1. Software / App -- Build a working UI or demo
2. Landing Page -- Test messaging and demand before building
3. Marketing Campaign -- Test a channel and creative before spending
4. Subscription Model -- Test pricing and packaging before building billing
5. Workflow / Process -- Map and run the process manually first
6. Brand Identity -- Test name, positioning, and visual direction
7. Sales Script -- Build and rehearse the discovery call framework
8. Onboarding Flow -- Design the step-by-step first-use experience
```

**Recommendation logic:**
- Idea stage + untested demand -> Landing Page or Marketing Campaign first
- Pre-revenue + technical product -> Software/App or Onboarding Flow
- Pre-revenue + service/consulting -> Sales Script or Workflow
- Early-revenue + growth lever -> Marketing Campaign, Subscription Model, or Brand Identity
- Any stage + "I don't know if they'd pay" -> Landing Page with pricing shown

If `facilitated_mode` is true, after selection add: "Before you build -- what assumption does this prototype NOT test? Name it. That might be the one that kills you later."

## Step 3: Thought Starters

Before generating the artifact, share the relevant thought starters to ground the founder's thinking.

### 14 Prototype Thought Starters

Use these as starting points. Pick the one that matches what you are testing.

**1. Service Experience**
Map the customer journey and act it out manually. What does the customer feel at each touchpoint? Walk through the experience step by step -- even if it is entirely human-powered -- to find where it breaks.

**2. Marketing Campaigns**
Write the actual ad, email, or post before you build anything. If the copy cannot clearly explain the value, the product will not sell itself. Test messaging with a landing page or a LinkedIn post before spending money on the full campaign.

**3. Subscription Models**
Design the pricing tiers, what is included at each level, and the upgrade trigger. Build a Stripe checkout page or a simple pricing page and test whether people click "subscribe" before you build the recurring delivery system.

**4. Workflows and Processes**
Map the process end-to-end before automating it. Document each step, who owns it, and where handoffs break. Run it manually once with a real customer or internal user before investing in tooling.

**5. Brand Identity**
Create a minimum viable brand: name, one-sentence positioning, and a visual direction. Test it with five target customers before commissioning full design work. Does the name land? Does the positioning resonate? Find out fast.

**6. Customer Support System**
Script the most common customer questions and your ideal answers. Run support manually via chat or email for two weeks. Only then decide what to automate, what to templatize, and what requires human judgment.

**7. Sales Scripts or Demos**
Write and rehearse a 10-minute sales conversation before you have a polished deck. Run five calls. See what questions you cannot answer, what objections you cannot handle, and where prospects' eyes light up. The script is your prototype.

**8. Physical Retail Pop-Ups**
Before signing a lease, run a pop-up at a market, event, or shared space. Test the product, the pricing, the display, and the sales conversation with real foot traffic. One weekend of data beats months of planning.

**9. Community Engagement Strategies**
Launch a small group -- Slack, WhatsApp, or a simple newsletter -- before building a full community platform. See if people show up, participate, and invite others. Engagement in a small group predicts community viability.

**10. Onboarding Experiences**
Run your onboarding manually with five new users before automating it. Walk them through setup yourself, narrate what the product does, and watch where they get confused. The confusion points are your product debt before you have even written the help docs.

**11. Workshops or Educational Content**
Teach the core material live to a small group before building a course platform. Record it. Sell seats manually. See if learners get results. Only then invest in video production, LMS, and evergreen content infrastructure.

**12. Partnership Models**
Have the conversation and write a one-page term sheet before drafting a contract. Can you agree on who owns the customer, how revenue splits, and what each party is committing to? The one-pager is your prototype -- it surfaces misalignment fast.

**13. Loyalty Programs**
Offer the loyalty benefit manually to your top 20 customers before building a points system. Call them. Tell them they are in your founders' circle and describe the perk. Measure whether it changes behavior or deepens the relationship before you write a line of code.

**14. Customer Feedback Loops**
Run three customer interviews before building a survey. Build a simple survey before building a feedback portal. Send the survey via email before integrating it into your product. Each step is a faster, cheaper version of the next.

---

Highlight the 2-3 most relevant thought starters for the selected prototype type before generating the artifact.

## Step 4: Generate Artifact

Based on the selected prototype type, generate the specific artifact.

---

### Type 1: Software / App

Generate a Lovable.dev prompt the founder can paste directly.

```
## Lovable.dev Prompt

Paste this into lovable.dev to generate your working prototype:

---
Build a [web app / mobile app] for [target_market] that solves [problem_statement].

**Core user story:** As a [target_market], I want to [primary action] so that I can [desired outcome].

**Core screens (build only these):**
1. [Screen 1] -- [what it shows and does]
2. [Screen 2] -- [what it shows and does]
3. [Screen 3] -- [what it shows and does]

**Sample data to include:**
- [example item 1]
- [example item 2]
- [example item 3]

**Key interaction:**
When a user [does X], the app should [do Y].

**Do not build:** [list 3-5 things explicitly out of scope for this prototype]

**Tone:** [Simple / Professional / Friendly] -- this is for [target_market], not engineers.
---
```

---

### Type 2: Landing Page

Generate Carrd.co copy the founder can build in under an hour.

```
## Landing Page Copy (Carrd.co)

**Headline:**
[Strong outcome-focused headline -- what the customer gets, not what you built]

**Subhead:**
[One sentence that names the problem and hints at the mechanism]

**Three Value Props:**
- [Specific outcome 1 -- quantified if possible]
- [Specific outcome 2]
- [Specific outcome 3]

**Call to Action Button:**
[Action verb + outcome -- e.g., "Get Early Access" / "See How It Works" / "Calculate My ROI"]

**Social Proof Placeholder:**
"Join [X] [target_market] who are already [outcome]." (Update this once you have real numbers)

**Email Capture:**
Ask only for: First name + Email. No phone. No company. Reduce friction.

**Below the Fold (optional):**
- How it works: 3 steps maximum
- One testimonial or quote (if you have one)
- FAQ: 3 most common objections answered

**Carrd.co Setup Note:** Use a simple one-page template. Launch in <60 minutes. Do not spend time on design -- the copy is the test.
```

---

### Type 3: Marketing Campaign

Generate a campaign brief for one channel.

```
## Campaign Brief

**Hypothesis Being Tested:** [hypothesis_selected]
**Channel:** [LinkedIn / Meta / Email / Content]
**Audience:** [target_market -- as specific as possible]
**Budget:** [$0-50 organic / $50-500 paid -- which applies?]

**Hook:**
[The single most compelling reason your ICP should stop scrolling -- name the pain or the promise]

**Ad / Post Copy:**
[3-5 sentences: hook, problem, solution, proof, CTA]

**Creative Direction:**
[Describe what the image or video should show -- even if it's a screenshot or a stock photo for now]

**Call to Action:**
[Exactly what you want them to do: click, comment, DM, sign up]

**Landing Destination:**
[Where does the click go? URL or description of what they'll see]

**Success Metric:**
[One number: click-through rate, signups, replies, comments -- pick one]

**Test Duration:** 7 days
**Budget Cap:** $[X] or 0 if organic

**What You'll Learn:**
If this campaign gets [X result], the hypothesis holds. If it gets fewer, [describe what that tells you].
```

---

### Type 4: Subscription Model

Generate pricing page copy and tier structure.

```
## Pricing Page Copy

**Positioning Line:**
[One sentence above the tiers: what this pricing buys them, not what it costs]

**Tiers:**

| | [Tier 1 Name] | [Tier 2 Name] | [Tier 3 Name] |
|---|---|---|---|
| **Price** | $[X]/mo | $[Y]/mo | $[Z]/mo |
| **For** | [who this is for] | [who this is for] | [who this is for] |
| **Core feature** | Yes | Yes | Yes |
| [Feature 2] | No | Yes | Yes |
| [Feature 3] | No | No | Yes |
| **Support** | [level] | [level] | [level] |
| **CTA** | [button text] | [button text] | [button text] |

**Upgrade Trigger:**
[What behavior or limit causes someone to upgrade from Tier 1 to Tier 2?]

**Most Popular Badge:**
[Which tier? Usually the middle one. Why would the ICP choose it?]

**FAQ to include:**
- Can I cancel anytime? [Answer]
- What happens when I hit the limit? [Answer]
- Do you offer annual billing? [Answer]

**Test This Before Building Billing:**
Use a Stripe payment link or a Carrd page with pricing. See if anyone clicks "Get Started" before integrating any billing infrastructure.
```

---

### Type 5: Workflow / Process

Generate a service blueprint.

```
## Service Blueprint

**Process Name:** [What this workflow accomplishes]
**Trigger:** [What starts it -- customer request, signup, payment, etc.]
**Outcome:** [What the customer experiences when it's done well]

| Step | Customer Action | Frontstage (visible to customer) | Backstage (invisible to customer) | Support Processes | Failure Point? |
|---|---|---|---|---|---|
| 1 | [what customer does] | [what they see/experience] | [what team does] | [tools/systems] | [Y/N -- describe if Y] |
| 2 | | | | | |
| 3 | | | | | |
| 4 | | | | | |
| 5 | | | | | |

**Manual First Commitment:**
Run this workflow manually for [X] customers before building any automation. Document what breaks and what takes longest. That's your build priority list.

**Automation Candidates (after manual validation):**
- [Step X] -- can be automated with [tool]
- [Step Y] -- requires human judgment, do not automate yet

**First Run Notes:**
[Space for founder to fill in after running it manually once]
```

---

### Type 6: Brand Identity

Generate a brand brief for rapid testing.

```
## Brand Brief

**Startup:** [startup_name]
**Positioning Statement:**
For [target_market] who [problem], [startup_name] is the [category] that [key differentiator]. Unlike [primary competitor], we [unique approach].

**Brand Personality (pick 3):**
[ ] Direct  [ ] Warm  [ ] Expert  [ ] Playful  [ ] Bold  [ ] Calm  [ ] Innovative  [ ] Reliable

**Tone of Voice:**
[2-3 sentences on how the brand sounds -- formal/casual, technical/accessible, confident/humble]

**Visual Direction:**
- Color palette direction: [e.g., "clean whites and deep blues -- professional, not corporate"]
- Typography direction: [e.g., "geometric sans-serif -- modern and readable"]
- Imagery direction: [e.g., "real people working, not stock photos of smiling executives"]

**Midjourney / Canva Prompt for Logo Concept:**
"[Brand name] logo, [style description], [color direction], minimal, professional, vector style, white background"

**Tagline Options (test all three -- pick after customer feedback):**
1. [tagline -- outcome-focused]
2. [tagline -- problem-focused]
3. [tagline -- identity-focused]

**5-Person Test:**
Show these three taglines to five target customers this week. Ask: "Which of these makes you want to learn more?" The answer is your tagline.
```

---

### Type 7: Sales Script

Generate a discovery call framework.

```
## Discovery Call Framework

**Call Goal:** Understand if the prospect has the pain, confirm they'd pay, and advance to next step
**Time:** 30 minutes
**Format:** Video call or phone

---

**Opening (2 min):**
"Thanks for making time. I want to make sure this is useful for you -- so I'm going to ask you some questions first before I tell you anything about [startup_name]. Sound okay?"

[Let them agree. Never pitch first.]

---

**Diagnostic Questions (15 min):**

1. "[Open context] Tell me about how you currently handle [problem area]. Walk me through what that looks like."
   -> Listen for: workarounds, frustration, time spent, money spent

2. "[Pain amplification] What's the biggest headache with the way you do it today?"
   -> Listen for: emotional language, specific pain points, impact on team

3. "[Impact] If you could fix that, what would that mean for you / your team / your business?"
   -> Listen for: their definition of value -- this is your sales argument

4. "[Priority check] Is this something you're actively trying to fix, or something you've accepted as 'just how it is'?"
   -> Listen for: urgency signal. If accepted -- this is a discovery, not a sales call yet.

5. "[Budget signal] What have you tried before? Did you pay for a solution that didn't work?"
   -> Listen for: willingness to pay, previous solutions, why they failed

---

**Value Articulation (8 min):**
"Based on what you've told me, here's what I'm working on..." [2-minute description, their language not yours]

"The people who get the most out of this are [ICP description]. Does that sound like you?"

---

**Close / Next Step (5 min):**
"I'd like to [show you a demo / send you something / bring you in as a beta user] -- which makes more sense?"

Never leave without a specific next step with a date.

---

**Objection Handlers:**
- "We don't have budget": "Understood -- when does your next budget cycle start? I'd like to stay in touch."
- "We're using [competitor]": "What would make you consider switching? I want to understand what's not working."
- "We're happy with how we do it now": "I appreciate that. What would need to change for this to become a priority?"

---

**After the Call:**
Send a follow-up email within 2 hours. Include: what you heard, what you'll do, and the next step with a date.
```

---

### Type 8: Onboarding Flow

Generate a step-by-step onboarding sequence.

```
## Onboarding Sequence

**Goal:** Get the new customer to their first value moment as fast as possible
**First Value Moment:** [Define this -- the exact moment they experience the core benefit]
**Target Time to Value:** [How long should it take from signup to first value?]

---

| Step | What Customer Does | What They See | What They Get | Success Criteria | Failure Point |
|---|---|---|---|---|---|
| 1. Signup | [action] | [screen/email] | [what they receive] | [how you know it worked] | [common failure] |
| 2. Setup | [action] | [screen/email] | [what they receive] | [how you know it worked] | [common failure] |
| 3. First action | [action] | [screen/email] | [what they receive] | [how you know it worked] | [common failure] |
| 4. First value | [action] | [screen/email] | [what they receive] | [how you know it worked] | [common failure] |
| 5. Habit formation | [action] | [screen/email] | [what they receive] | [how you know it worked] | [common failure] |

---

**Run It Manually First:**
Walk 3 new customers through this sequence on a Zoom call. Narrate each step. Watch where they hesitate or ask questions. Every hesitation is a design problem. Every question is a gap in your UX or copy.

**Onboarding Emails (send during sequence):**
- Email 1 (Day 0 - immediately): "Welcome + here's exactly what to do first"
- Email 2 (Day 1 - if no first action): "Quick check -- did you get started? Here's a 2-minute guide"
- Email 3 (Day 3 - after first value): "You just [completed milestone] -- here's what's next"
- Email 4 (Day 7): "How's it going? One question: [single question to gather insight]"

**Completion Gate:**
Before automating any of this, run it manually with at least 3 users. Document what they skip, where they drop off, and what they say when confused.
```

---

## Step 5: Test Plan

After generating the artifact, create a test plan:

```
## Test Plan

**Prototype:** [type] for [startup_name]
**Hypothesis:** [hypothesis_selected]

**Who to Show It To:**
- [Target person 1 -- specific, not "potential customers"]
- [Target person 2]
- [Target person 3]
Minimum: 5 people in the next 7 days.

**What to Measure:**
- [Primary metric -- the one signal that confirms or denies the hypothesis]
- [Secondary observation -- what else you're watching]

**How to Get Feedback:**
[Specific method: show and watch / send and track / run a call / post and monitor]

**Timeline:**
- By [date + 3 days]: Prototype built and shared with first 2 people
- By [date + 7 days]: Feedback from 5 people collected
- By [date + 10 days]: Hypothesis confirmed, denied, or revised

**Confirmation Signal:**
If [specific observable result] happens, the hypothesis holds.

**Denial Signal:**
If [specific observable result] happens, the hypothesis needs revision.

**Decision Rule:**
By [date], I will [persist / pivot / revise] based on what I learned.
```

## Step 6: Throwaway Checklist

End every prototype session with this checklist. It's a reminder that the prototype is not the product.

```
## Throwaway Checklist

Check each assumption baked into this prototype that still needs validation:

[ ] We assumed [ICP] has this problem -- NOT YET VALIDATED with real conversations
[ ] We assumed they'd pay $[X] -- NOT YET VALIDATED with a real purchase attempt
[ ] We assumed [channel] reaches them -- NOT YET VALIDATED with a live test
[ ] We assumed [mechanism] works -- NOT YET VALIDATED with real usage data
[ ] We assumed [timeline] is achievable -- NOT YET VALIDATED against real constraints

**The prototype tests ONE of these.** The others are still assumptions. Don't scale until you've validated them all.

**Be ready to throw it away.** If the hypothesis is wrong, the prototype served its purpose. The learning is the output, not the artifact.
```

## Facilitated Mode Questions

When `facilitated_mode` is true, add these provocative questions at natural moments:

- After prototype brief: "What's the riskiest assumption in your prototype? Can you test that first?"
- After type selection: "Before you build -- what assumption does this prototype NOT test?"
- After artifact generation: "Who can you show this to in the next 24 hours?"
- After test plan: "What would make you confident enough to put money behind this?"
- Final challenge: "If this prototype fails, what will you have learned? Is that worth two weeks of effort?"

## Output Summary

When complete:
- Prototype brief (Miro-ready)
- Selected artifact (Lovable prompt / Carrd copy / campaign brief / pricing page / service blueprint / brand brief / discovery framework / onboarding sequence)
- Test plan: who to show it to, what to measure, by when
- Throwaway checklist: assumptions still requiring validation

Then say: "You have a prototype and a test plan. Show it to five people before the end-of-day share-out. The goal is one real signal -- not polish."

## Config Dependencies

**Reads:** `hypothesis_selected`, `startup_name`, `stage`, `target_market`, `facilitated_mode`
**Writes:** Nothing (outputs artifacts directly)

## Platform Notes

| Platform | Behavior |
|----------|----------|
| Claude Code | Full: reads config.json including hypothesis_selected |
| Claude Desktop | Full: manual hypothesis input; full artifact output |
| Claude Cowork | Full: same as Desktop; well-suited for non-technical founders |
