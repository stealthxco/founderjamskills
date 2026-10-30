---
name: follow-up-generator
description: "Generate personalized post-event follow-ups for founders: the 2-day, 2-week, and 2-month check-ins that reference each founder's own commitments, numbers, and path. Use after the event, per startup."
license: CC-BY-4.0
---

# Follow-Up Generator

Post-event skill for sherpas. Generate three ready-to-send follow-up messages per founder, personalized to their specific commitments, metrics, and selections from the workshop.

## Overview

This skill produces three messages:
1. **2-Day check-in**: accountability nudge while commitments are fresh
2. **2-Week milestone**: progress check against specific targets
3. **2-Month validation gate**: Green / Yellow / Red assessment against North Star

**When to run:** After the event, using notes from each startup's validation planner output. Run once per startup.

## Process

### Step 1: Input collection

Ask the sherpa for the following information about one startup. Collect everything before generating messages.

If the founder shared their FOUNDER JAM HANDOFF block (the format is defined in the `founder-setup` skill; if `founder-setup` is not installed, the same format is in `HANDOFF-FORMAT.md` next to this file), read `startup_name`, `path`, `icp_segment`, `hypothesis_selected`, `lead_magnet`, `outbound_system`, and `channels_selected` from it and confirm them instead of asking again.

**Questions to ask (in order):**

1. "What's the startup name?"
   -> `startup_name`

2. "What's the founder's first name?"
   -> `founder_first_name`

3. "Which path did they pick in Focus? (product and positioning, GTM and growth, sales, or ops and automation)"
   -> `path`

   On ops and automation, also ask: "Was it an internal or support process, or go-to-market work like lead enrichment?"
   -> `process_type`

4. "What were their 3 commitments from the validation planner?"
   - 2-day commitment: [specific action]
   - 2-week commitment: [specific action with a number]
   - 2-month commitment: [specific outcome with a number]
   -> `commitment_2day`, `commitment_2week`, `commitment_2month`

   If the 2-week or 2-month commitment has no number, ask: "What number would count as hitting it?" Messages 2 and 3 grade against these numbers.

5. "What were their Week 1 actions from the 30-day plan? List 3-5 specific actions."
   -> `week1_actions[]`

   Only founders who ran `growth-builder` have a 30-day plan. If they did not (the usual case on the product and positioning and sales paths), don't ask for a 30-day plan. Use the 2-day commitment as the first action and ask for 2 more steps they planned for the first week, so there are 3 actions in all.

6. "What was their Week 2 success criteria? Give me the specific metrics or milestones they wrote down."
   -> `week2_milestones[]`

   Without a 30-day plan, use the 2-week commitment as the first milestone, with its number as the metric, and ask for one more thing they expect to have done by week 2, so there are 2 milestones.

7. "What specific number did they set as their 30-day target? (e.g., 50 landing page visitors, 10 email signups, 3 discovery calls)"
   -> `thirty_day_target`

   Without a 30-day plan, don't ask. Use the number from the 2-week commitment.

8. "What was their North Star metric and target number? (Expected on GTM and growth, sales, and ops and automation; optional on product and positioning)"
   -> `north_star_metric`, `north_star_target`

9. "What hypothesis or ICP did they select?"
   -> `hypothesis_or_icp`

10. "What did they build? (a prototype, a lead magnet and sequence, an outbound system, or an automation)"
    -> `artifact_built`

11. "Which channels did they select?"
    -> `channels_selected[]`

12. "What's your name? (The sherpa's first name)"
    -> `sherpa_name`

If any required field is missing, ask for it before generating messages. Do not generate with empty personalization tokens.

### Step 2: Generate 3 messages

Generate all three messages using the `templates/follow-up-messages.md` format.

**Requirements for each message:**
- Founder's first name (not "Hi there" or generic opening)
- Specific numbers from their commitments: not generic percentages or vague language
- Specific actions they said they would take, pulled directly from their 30-day plan (without one, from their validation-planner commitments and the extra steps they named in Step 1)
- Path-specific language:
  - Product and positioning: use "hypothesis," "prototype," "validate," "test"
  - GTM and growth: use "ICP," "lead magnet," "sequence," "pipeline"
  - Sales: use "prospects," "replies," "calls," "pipeline"
  - Ops and automation: use "workflow," "automation," "hours saved," "handoff"
- No em dashes
- Plain text only: no markdown formatting in the messages themselves

**Message 1: 2-Day Check-In**

Fill the template with:
- `[Founder Name]` -> `founder_first_name`
- `[Day]` -> day of week the event was held (ask if not known)
- `[specific commitment from validation planner]` -> `commitment_2day`
- `[Week 1 action 1-3]` -> first 3 items from `week1_actions[]`
- `[Sherpa Name]` -> `sherpa_name`

**Message 2: 2-Week Milestone**

Fill the template with:
- `[Founder Name]` -> `founder_first_name`
- `[specific metric]` -> the primary metric from `week2_milestones[0]`
- `[Week 2 milestone 1-2]` -> first 2 items from `week2_milestones[]`
- `[specific number from 30-day plan]` -> `thirty_day_target`
- `[Sherpa Name]` -> `sherpa_name`

**Message 3: 2-Month Validation Gate**

Fill the template with:
- `[Founder Name]` -> `founder_first_name`
- `[2-month commitment]` -> `commitment_2month`
- `[specific metric]` -> `north_star_metric`
- `[specific number]` -> `north_star_target`
- `[Sherpa Name]` -> `sherpa_name`

The 2-month commitment is the validation gate, so grade against it. If no North Star metric was captured (common on product and positioning), leave out the North Star line and grade against the 2-month commitment alone. Note the omission in a sherpa comment above the message.

On ops and automation with an internal or support process, replace the Red line with: "Red (under 40%): Time to revisit the process. Talk to 3-5 people who tried it and stopped, then re-scope the process, fix the step where adoption stalls, or pick a different process to automate."

### Step 3: Personalization check

Before presenting messages, verify:

- [ ] No template tokens remain (no `[brackets]` in any message)
- [ ] All numbers are specific (not "your target" without a number)
- [ ] Path-specific language is used correctly
- [ ] Founder's name appears in each message
- [ ] Sherpa's name appears at the end of each message
- [ ] Messages are plain text (no asterisks, no markdown bullets)

If any check fails, fix before presenting.

### Step 4: Output

Present the three messages in sequence with clear labels:

```
--- MESSAGE 1: Send within 48 hours ---

[message text]

--- MESSAGE 2: Send in 14 days ---

[message text]

--- MESSAGE 3: Send in 60 days ---

[message text]
```

After output, ask: "Would you like messages for another startup?"

If yes, return to Step 1.

## Context

**Reads:** Nothing.
**Writes:** Nothing. The sherpa copies messages directly to email.

## Where this runs

| Where | What happens |
|-------|--------------|
| claude.ai or Claude desktop (skill uploaded) | Full flow. Output is text in the chat; copy what you want to keep. |
| Claude Code | Full flow. May write a file on request. |

## Timing reminders

- **Message 1:** Send within 48 hours of the event, ideally the evening of or morning after.
- **Message 2:** Send exactly 14 days post-event. Set a calendar reminder before you leave.
- **Message 3:** Send approximately 60 days post-event.
- If a founder replies to an earlier message, acknowledge their update and skip the scheduled message if it's redundant.

---

Founder Jam curriculum and skills by Drew Burdick · program co-created with Innovate Charlotte · CC BY 4.0 · drewburdick.com/founderjam
