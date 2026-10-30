# Prototype Launcher - Instructions for Claude Desktop / Cowork

## What This Skill Does

Takes your winning hypothesis and builds the fastest prototype that can confirm or deny it. It selects the right prototype type from 8 categories, generates the actual artifact (Lovable.dev prompt, Carrd landing page copy, campaign brief, pricing page, service blueprint, brand brief, discovery call framework, or onboarding sequence), and creates a test plan with specific people, metrics, and a decision deadline.

**Time:** 120 minutes
**Stage:** Build. **Best for paths:** product and positioning, ops and automation.

## How to Use

Copy everything below the line and paste it into a new Claude Desktop or Cowork conversation.

---

## Activation Prompt

```
I'm at Founder Jam, in the Build stage, working on rapid prototyping. Help me run through the Prototype Launcher.

My context:
- Startup name: [your startup name]
- Winning hypothesis: [paste your hypothesis from the Hypothesis Engine session]
- Target customer: [specific, job title, company size, industry, demographic]
- Stage: [idea / pre-revenue / early-revenue]

The three mantras I'm committing to:
- "Right problem > shiny solution"
- "Done > perfect"
- "Be ready to throw it away"

Run me through these steps:

1. Prototype brief, help me write a one-page brief that defines: the question this prototype must answer, the success signal, the failure signal, and a 2-week deadline.

2. Prototype type selection, present these 8 types and recommend the best fit for my hypothesis:
   1. Software / App (Lovable.dev prompt)
   2. Landing Page (Carrd copy)
   3. Marketing Campaign (campaign brief)
   4. Subscription Model (pricing page)
   5. Workflow / Process (service blueprint)
   6. Brand Identity (brand brief)
   7. Sales Script (discovery call framework)
   8. Onboarding Flow (step-by-step sequence)
   If I'm on the ops and automation path automating an internal or support process, recommend Workflow / Process first, then Software / App, and skip Landing Page, Marketing Campaign, and Subscription Model. The question is whether people will use it, not whether they will pay.

3. Relevant thought starters, before generating the artifact, show me 2-3 of the 14 prototype thought starters most relevant to my selected type.

4. Generate the artifact, produce the full, ready-to-use artifact for my selected prototype type.

5. Test plan, define: who I'll show it to (minimum 5 specific people), what I'll measure, how I'll get feedback, and my decision deadline.

6. Throwaway checklist, list the assumptions still baked into this prototype that I have NOT yet validated, as a reminder of what comes next. If I'm automating an internal or support process, skip the payment and channel assumptions and use "people will switch to it, not yet validated with real weekly use" instead.

Challenge me throughout:
- "What's the riskiest assumption in your prototype? Can you test that first?"
- "Before you build, what assumption does this prototype NOT test?"
- "Who can you show this to in the next 24 hours?"
- "What would make you confident enough to put money behind this?"
- "If this prototype fails, what will you have learned?"

Handoff: if I paste a FOUNDER JAM HANDOFF block (key: value lines such as startup_name, mode, path, stage, problem_statement, target_market, icp_segment, hypothesis_selected, channels_selected, lead_magnet), use it as my context and ask only for what is missing. If I'm working alone, skip the challenge questions unless I ask to be pushed harder. When you finish, print the full block again in a code box with your new fields filled in and every other field unchanged, so I can paste it into the next prompt.
```

## What to Expect

1. Claude will anchor you in the three mantras and the prototype brief
2. You'll select the right prototype type based on your hypothesis
3. Claude will generate the actual artifact, ready to use, not a description of what to build
4. You'll get a test plan with specific names, metrics, and a decision deadline
5. A throwaway checklist will remind you what's still unvalidated

## Output Format

- Prototype brief (Miro-ready)
- One artifact based on selected type:
  - Software/App: Lovable.dev system prompt ready to paste
  - Landing Page: Carrd copy with headline, subhead, value props, CTA
  - Campaign: Full campaign brief with hook, copy, creative direction, success metric
  - Subscription: Pricing page with tier structure and upgrade trigger
  - Workflow: Service blueprint table with frontstage/backstage columns
  - Brand: Brand brief with positioning, tone, tagline options, Midjourney prompt
  - Sales Script: Discovery call framework with diagnostic questions and objection handlers
  - Onboarding: Step-by-step sequence with emails and completion gates
- Test plan with 5 specific people, one primary metric, and a decision date
- Throwaway checklist of unvalidated assumptions

## Tips for Better Output

- Bring your hypothesis statement word-for-word, the artifact is built around it
- The recommended type is a starting point, push back if it doesn't feel right
- For software prototypes, Lovable.dev is free to try and requires no code
- For landing pages, Carrd.co has a free tier, you can be live in under an hour
- Show the prototype to five people before the end-of-day share-out

## Next Skill

Next is the Validate stage: `validation-planner.md`, then `pitch-builder.md`.

Bring your prototype brief, the artifact, and one real signal from showing it to someone.

---

Founder Jam curriculum and skills by Drew Burdick · program co-created with Innovate Charlotte · CC BY 4.0 · drewburdick.com/founderjam
