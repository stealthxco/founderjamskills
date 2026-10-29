---
name: follow-up-generator
description: Generate personalized post-event follow-up messages for founders. Creates 2-day, 2-week, and 2-month check-in messages referencing specific commitments and metrics from the workshop.
---

# Follow-Up Generator

Post-event skill for facilitators. Generate three ready-to-send follow-up messages per founder, personalized to their specific commitments, metrics, and selections from the workshop.

## Overview

This skill produces three messages:
1. **2-Day check-in** -- accountability nudge while commitments are fresh
2. **2-Week milestone** -- progress check against specific targets
3. **2-Month validation gate** -- Green / Yellow / Red assessment against North Star

**When to run:** After the event, using notes from each startup's validation planner output. Run once per startup.

## Process

### Step 1: Input Collection

Ask the facilitator for the following information about one startup. Collect everything before generating messages.

**Questions to ask (in order):**

1. "What's the startup name?"
   -> `startup_name`

2. "What's the founder's first name?"
   -> `founder_first_name`

3. "Which track were they on? (Product or Growth)"
   -> `track`

4. "What were their 3 commitments from the validation planner?"
   - 2-day commitment: [specific action]
   - 2-week commitment: [specific action with a number if possible]
   - 2-month commitment: [specific outcome with a number if possible]
   -> `commitment_2day`, `commitment_2week`, `commitment_2month`

5. "What were their Week 1 actions from the 30-day plan? List 3-5 specific actions."
   -> `week1_actions[]`

6. "What was their Week 2 success criteria? Give me the specific metrics or milestones they wrote down."
   -> `week2_milestones[]`

7. "What specific number did they set as their 30-day target? (e.g., 50 landing page visitors, 10 email signups, 3 discovery calls)"
   -> `thirty_day_target`

8. "What was their North Star metric and target number? (Growth Track required; Product Track optional)"
   -> `north_star_metric`, `north_star_target`

9. "What hypothesis or ICP did they select?"
   -> `hypothesis_or_icp`

10. "What did they build? (prototype type for Product; lead magnet type for Growth)"
    -> `artifact_built`

11. "Which channels did they select?"
    -> `channels_selected[]`

12. "What's your name? (The facilitator's first name)"
    -> `facilitator_name`

If any required field is missing, ask for it before generating messages. Do not generate with empty personalization tokens.

### Step 2: Generate 3 Messages

Generate all three messages using the `templates/follow-up-messages.md` format.

**Requirements for each message:**
- Founder's first name (not "Hi there" or generic opening)
- Specific numbers from their commitments -- not generic percentages or vague language
- Specific actions they said they would take -- pulled directly from their 30-day plan
- Track-specific language:
  - Product Track: use "hypothesis," "prototype," "validate," "test"
  - Growth Track: use "ICP," "lead magnet," "automation," "sequence," "pipeline"
- No em dashes
- Plain text only -- no markdown formatting in the messages themselves

**Message 1: 2-Day Check-In**

Fill the template with:
- `[Founder Name]` -> `founder_first_name`
- `[Day]` -> day of week the event was held (ask if not known)
- `[specific commitment from validation planner]` -> `commitment_2day`
- `[Week 1 action 1-3]` -> first 3 items from `week1_actions[]`
- `[Facilitator Name]` -> `facilitator_name`

**Message 2: 2-Week Milestone**

Fill the template with:
- `[Founder Name]` -> `founder_first_name`
- `[specific metric]` -> the primary metric from `week2_milestones[0]`
- `[Week 2 milestone 1-2]` -> first 2 items from `week2_milestones[]`
- `[specific number from 30-day plan]` -> `thirty_day_target`
- `[Facilitator Name]` -> `facilitator_name`

**Message 3: 2-Month Validation Gate**

Fill the template with:
- `[Founder Name]` -> `founder_first_name`
- `[specific metric]` -> `north_star_metric`
- `[specific number]` -> `north_star_target`
- `[Facilitator Name]` -> `facilitator_name`

If no North Star metric was captured (common for Product Track), substitute the 30-day target metric and number. Note the substitution in a facilitator comment above the message.

### Step 3: Personalization Check

Before presenting messages, verify:

- [ ] No template tokens remain (no `[brackets]` in any message)
- [ ] All numbers are specific (not "your target" without a number)
- [ ] Track-specific language is used correctly
- [ ] Founder's name appears in each message
- [ ] Facilitator's name appears at the end of each message
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

## Config

**Reads:** Nothing.
**Writes:** Nothing. Facilitator copies messages directly to email.

## Platform Notes

| Platform | Behavior |
|----------|----------|
| Claude Code | Full flow in terminal; copy-paste to email |
| Claude Desktop | Conversational; same output |
| Claude Cowork | Same as Desktop |

## Timing Reminders

- **Message 1:** Send within 48 hours of the event -- ideally the evening of or morning after.
- **Message 2:** Send exactly 14 days post-event. Set a calendar reminder before you leave.
- **Message 3:** Send approximately 60 days post-event.
- If a founder replies to an earlier message, acknowledge their update and skip the scheduled message if it's redundant.
