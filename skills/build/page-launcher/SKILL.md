---
name: page-launcher
description: Both tracks, on-demand. Ship what you just designed to a LIVE URL during the session using agentpub.io - an email-gated lead magnet page, an A/B positioning test, a 30-day metrics scoreboard, or a "demo that travels" page. Turns offer-designer / prototype-launcher outputs into things you can actually test today. Reads lead_magnet, icp_segment. Writes published_pages. Claude Code only (needs shell access).
---

# Page Launcher

The gap between "we designed a lead magnet" and "there is a URL collecting emails" is where most workshop output goes to die. This skill closes it in the room: generate a single-file page from what the founder already built today, publish it to a live URL on agentpub.io, and gate it so it captures leads.

Four modes. Pick the one that matches the founder's next test:

| Mode | What ships | Best for |
|------|-----------|----------|
| A. **Lead-magnet gate** | Landing page + email gate -> live capture URL | Anyone who ran `offer-designer` |
| B. **Positioning A/B** | Two message variants, two URLs | Founders torn between two ICPs or angles |
| C. **Scoreboard** | 30-day metrics page, updated weekly in place | Pairs with `growth-builder` / `validation-planner` |
| D. **Demo that travels** | Video + QR + ROI one-pager on one page | Products whose "wow" requires being there (AR, physical, spatial) |

**Time estimate:** 25-45 minutes per mode

**Platform requirement:** Claude Code only - publishing runs `curl` from the shell. On Claude Desktop/Cowork, generate the HTML here, then publish from Claude Code or any static host.

## Setup

Read `config.json` if present. Helpful fields: `startup_name`, `icp_segment`, `lead_magnet`, `business_type`.

**Publishing account (do this once, ~2 minutes):** agentpub can publish anonymously (24-hour site + one-time claim link) or authenticated (permanent, and REQUIRED for the email gate in Mode A). For a workshop, set up the account - the email gate is usually the point:

1. Ask the founder for the email they want the account under.
2. `POST https://agentpub.io/api/auth/agent/request-code` with `{"email":"..."}` - a 6-digit code arrives in their inbox.
3. Founder reads the code out; `POST /api/auth/agent/verify-code` with email + code returns an API key.
4. Persist it: write to `~/.config/agentpub/credentials` with mode 0600. Never echo the key into the chat, a file the founder will share, or the published page.

If the founder declines the account, fall back to anonymous publishing - but Mode A degrades (see below) and you MUST surface the returned one-time `claimUrl` immediately and tell them it's the only way to keep the site past 24 hours.

**Full API reference if anything here has drifted:** https://agentpub.io/llms.txt

## Publishing mechanics (shared by all modes)

Three calls. Run them with Bash/curl:

```bash
# 1. CREATE - declare files with exact byte sizes (wc -c < file)
curl -sX POST https://agentpub.io/api/v1/publish \
  -H "authorization: Bearer $(cat ~/.config/agentpub/credentials)" \
  -H 'content-type: application/json' \
  -d '{"name":"<stable-handle>","artifact":{"title":"..."},
       "files":[{"path":"index.html","size":NNN,"contentType":"text/html"}]}'
# -> returns upload.versionId, presigned PUT url per file, finalizeUrl

# 2. UPLOAD - PUT each file's bytes to its presigned url with its content-type

# 3. (Mode A/C, before finalize) GATE IT - so there is no ungated public window:
curl -sX POST https://agentpub.io/api/v1/publish/<slug>/protect \
  -H "authorization: Bearer <key>" -H 'content-type: application/json' \
  -d '{"mode":"email"}'          # Mode A: email gate = lead capture
  # '{"mode":"password","password":"..."}'  # Mode C scoreboard, if it should be private

# 4. FINALIZE - POST {"versionId": "..."} to finalizeUrl. Live at https://<slug>.agentpub.io/
```

Conventions to follow every time:
- Pass a stable `name` (e.g. `<startup>-leadmagnet`) so re-publishing updates in place - no slug bookkeeping.
- Single-file pages: inline CSS, no build step, no external JS beyond a CDN if truly needed.
- Keep the founder's data out of danger: nothing on a published page that shouldn't be semi-public (the URL is unguessable, not secret). No API keys, no customer PII.
- After finalize, verify: `curl -s -o /dev/null -w "%{http_code}" https://<slug>.agentpub.io/` and confirm the gate if one was set.

## Process

### Mode A: Lead-Magnet Gate

**Introduce:** "You wrote landing copy in offer-designer. In the next half hour it becomes a live URL that collects email addresses. This is the page your outbound sequences and posts will point at."

**Step 1 - Assemble the page from existing outputs.** Pull from the offer-designer Lead Magnet Brief: headline, subhead, 3 bullet outcomes, CTA copy. Generate a clean single-file `index.html`:

- Hero: headline (h1), subhead, CTA button
- 3 outcome bullets with a line of supporting copy each
- One credibility element (founder name + one-line why-me, or a proof point)
- Footer: company name + contact
- Mobile-first, system fonts, one accent color asked from the founder, no stock-photo filler

**Step 2 - The gate IS the form.** Publish with `{"mode":"email"}` protection. Visitors enter an email to view the page, and agentpub records it as a lead - no form builder, no Zapier, no webhook needed for v1. Put the lead magnet content (or its download link) ON the gated page, so entering an email = getting the magnet.

**Step 3 - Wire it into today's other outputs:**
- Outbound sequences (`outbound-composer`): the "give" link in Touch 2 / Email 1 is this URL.
- Nurture (`offer-designer` Sub-activity C): Email 1 delivers this URL.
- Leads: viewable in the agentpub dashboard (agentpub.io, log in with the account email); check daily during the 30-day plan and copy new leads into the tracking sheet/CRM.

**Anonymous fallback (no account):** publish ungated, and embed a Tally/Typeform form in the page for capture instead. Surface the `claimUrl` immediately.

**Facilitated mode challenge prompts:**
- "Read the headline. Would [named person from their ICP exercise] stop scrolling for it?"
- "The gate asks for an email BEFORE showing the goods. Is the promise above the gate strong enough to justify that?"

**Output:** Live URL + where leads appear + the one place they'll link it first today.

---

### Mode B: Positioning A/B

**Introduce:** "You're torn between two ways to describe this company. Don't debate it - ship both and let reply rates settle it."

**Step 1:** Write the two variants WITH the founder - same offer, different angle (e.g., pain-led vs. outcome-led; segment A vs. segment B). Each variant = same page structure as Mode A with different headline/subhead/bullets.

**Step 2:** Publish as two sites with stable names (`<startup>-a`, `<startup>-b`). Gate both with the email gate if capture matters, or leave open if the test is purely message-resonance.

**Step 3:** Design the split so the data means something:
- Split the outbound list randomly in half; sequence copy identical except the link.
- Or post variant links in two comparable communities.
- Metric: leads (gated) or replies-mentioning-the-page per 50 sends. Pre-commit the decision rule: "If B beats A by 2x at 50+ sends each, B is the message."

**Facilitated mode challenge prompt:** "What will you DO differently if A wins? If the answer is 'nothing,' this test isn't worth running - pick a real fork in the road."

**Output:** Two live URLs + the split plan + the pre-committed decision rule.

---

### Mode C: 30-Day Scoreboard

**Introduce:** "Your validation plan has numbers in it. A scoreboard you update weekly - that other people can see - is the difference between a plan and a commitment."

**Step 1:** Pull North Star + 3-5 supporting metrics and weekly targets from `growth-builder` / `validation-planner` outputs.

**Step 2:** Build it drift-proof - static shell + data file:
- `index.html`: static markup that `fetch('data.json')`s and renders metric cards, weekly progress vs. target, and the Green/Yellow/Red status. The HTML never changes after v1.
- `data.json`: `{"week":1,"updated":"YYYY-MM-DD","metrics":[{"name":"...","target":N,"actual":N}],"status":"green|yellow|red","notes":"..."}`

**Step 3:** Publish with a stable name (`<startup>-scoreboard`). Password-gate it if the founder prefers accountability to their cohort only (share the password in the cohort group); leave it open if public commitment is the point.

**Step 4 - the weekly ritual (write this into their calendar):** each week, update ONLY `data.json` and re-publish via the patch endpoint (`POST /api/v1/publish/<slug>/patch` with just that file, then finalize). Two minutes a week. The founder can do it by asking Claude Code: "update my scoreboard: [numbers]."

**Facilitated mode challenge prompt:** "Who, specifically, sees this scoreboard besides you? A scoreboard nobody else looks at is a diary."

**Output:** Live URL + the weekly update ritual + who's watching.

---

### Mode D: Demo That Travels

**Introduce:** "Your product's wow requires being there - but decision-makers won't come to you. This page carries the wow to them: see it, try it, justify it, all in one link."

**Step 1 - See it:** a 60-90 second POV walkthrough video (founder films on a phone today if none exists; unlisted YouTube embed). The video shows the EXPERIENCE, not the dashboard.

**Step 2 - Try it:** if the product has any self-serve surface, a QR code / link to try it in the viewer's own context (e.g., "open this on your phone, stand in any hallway"). Generate the QR as an image via a free QR API or locally, embed it on the page.

**Step 3 - Justify it:** an ROI one-pager section the champion can screenshot for their boss: 3 quantified value bullets, 1-2 proof points, pricing shape (even a range), and "what a pilot looks like" in 3 steps.

**Step 4:** Publish (stable name `<startup>-demo`), open (this page WANTS to be forwarded). This URL is what goes in every outbound Touch 2 and every post-meeting follow-up - it's built to be forwarded to the person who wasn't in the room.

**Facilitated mode challenge prompt:** "Imagine your champion forwards this to their skeptical boss. What's the boss's first objection, and does the page answer it?"

**Output:** Live URL + the 3 places it gets used this week (sequences, follow-ups, signature).

## Write Config

After publishing, append to `config.json` (create the array if missing):

```json
{
  "published_pages": [
    {"purpose": "lead-magnet-gate | ab-test-a | ab-test-b | scoreboard | demo",
     "url": "https://<slug>.agentpub.io/",
     "name": "<stable-handle>",
     "gate": "email | password | none"}
  ]
}
```

## Config Dependencies

**Reads:** `startup_name`, `icp_segment`, `lead_magnet` (Mode A), `business_type`, `facilitated_mode`
**Writes:** `published_pages`

## Safety Notes

- Never publish credentials, customer PII, or anything the founder wouldn't show a stranger - unguessable URL is not access control.
- Anonymous publishes: surface the one-time `claimUrl` to the founder IMMEDIATELY; it is shown once and is the only way to keep the site.
- The API key lives in `~/.config/agentpub/credentials` (0600) and nowhere else - not in the page, not in config.json, not in chat.

## Platform Notes

| Platform | Behavior |
|----------|----------|
| Claude Code | Full flow: generates, publishes, gates, verifies, writes config |
| Claude Desktop | Generates page HTML + plan only; publish from Claude Code or any static host |
| Claude Cowork | Same as Desktop |
