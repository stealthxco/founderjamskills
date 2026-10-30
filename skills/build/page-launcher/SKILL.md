---
name: page-launcher
description: Claude Code only (needs Bash). Publishes a live page (lead magnet gate, A/B test, scoreboard, demo) to agentpub.io. Build stage. Third-party skill by Scott Murtaugh, GP Automations.
license: CC0-1.0
---

# Page Launcher

**Stage:** Build. **Best for paths:** any path.

> Claude Code only. This skill publishes pages by running `curl` in a shell, so it needs Claude Code with Bash access. Do not run it in claude.ai or Claude desktop. See "No Claude Code? Publish an artifact instead" below.

The gap between "we designed a lead magnet" and "there is a URL collecting emails" is where most workshop output goes to die. This skill closes the gap: generate a single-file page from what the founder already built today, publish it to a live URL on agentpub.io, and gate it so it captures leads.

Four modes. Pick the one that matches the founder's next test:

| Mode | What ships | Best for |
|------|-----------|----------|
| A. **Lead-magnet gate** | Landing page + email gate -> live capture URL | Anyone who ran `offer-designer` |
| B. **Positioning A/B** | Two message variants, two URLs | Founders torn between two ICPs or angles |
| C. **Scoreboard** | 30-day metrics page, updated weekly in place | Pairs with `growth-builder` / `validation-planner` |
| D. **Demo that travels** | Video + QR + ROI one-pager on one page | Products whose "wow" requires being there (AR, physical, spatial) |

**Time estimate:** 25-45 minutes per mode

**Platform requirement:** Claude Code only. Publishing runs `curl` from the shell.

## Setup

Get context from a FOUNDER JAM HANDOFF block pasted in the chat (the format is defined in `founder-setup`). If you are running in Claude Code with file access, `config.json` in the working directory works too. Ask for anything that is missing, one question at a time.

Sherpa check: if `mode` is missing or empty, ask once, "Is a sherpa with you today?" Default to solo. With a sherpa, add this skill's challenge prompts. Solo, skip them.

Fields needed (helpful, not required): `startup_name`, `icp_segment`, `lead_magnet`, `business_type`.

**Publishing account (do this once, ~2 minutes):** agentpub can publish anonymously (24-hour site + one-time claim link) or authenticated (permanent, and REQUIRED for the email gate in Mode A). At Founder Jam, set up the account - the email gate is usually the point:

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

## No Claude Code? Publish an artifact instead

Solo founders in claude.ai or Claude desktop can get the same result without a shell:

1. Pick the mode below that matches your next test (A to D) and follow its page content steps.
2. Ask Claude to build that page as a single-file HTML artifact, using your offer and ICP from your FOUNDER JAM HANDOFF block.
3. Publish or share the artifact from the artifact view to get a link you can send.
4. An artifact page can't store email addresses by itself. For lead capture, embed a Tally or Typeform form in the page and send leads there.
5. Keep your handoff block current by adding the link to `published_pages`.

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

**Sherpa-mode challenge prompts:**
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

**Sherpa-mode challenge prompt:** "What will you DO differently if A wins? If the answer is 'nothing,' this test isn't worth running - pick a real fork in the road."

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

**Sherpa-mode challenge prompt:** "Who, specifically, sees this scoreboard besides you? A scoreboard nobody else looks at is a diary."

**Output:** Live URL + the weekly update ritual + who's watching.

---

### Mode D: Demo That Travels

**Introduce:** "Your product's wow requires being there - but decision-makers won't come to you. This page carries the wow to them: see it, try it, justify it, all in one link."

**Step 1 - See it:** a 60-90 second POV walkthrough video (founder films on a phone today if none exists; unlisted YouTube embed). The video shows the EXPERIENCE, not the dashboard.

**Step 2 - Try it:** if the product has any self-serve surface, a QR code / link to try it in the viewer's own context (e.g., "open this on your phone, stand in any hallway"). Generate the QR as an image via a free QR API or locally, embed it on the page.

**Step 3 - Justify it:** an ROI one-pager section the champion can screenshot for their boss: 3 quantified value bullets, 1-2 proof points, pricing shape (even a range), and "what a pilot looks like" in 3 steps.

**Step 4:** Publish (stable name `<startup>-demo`), open (this page WANTS to be forwarded). This URL is what goes in every outbound Touch 2 and every post-meeting follow-up - it's built to be forwarded to the person who wasn't in the room.

**Sherpa-mode challenge prompt:** "Imagine your champion forwards this to their skeptical boss. What's the boss's first objection, and does the page answer it?"

**Output:** Live URL + the 3 places it gets used this week (sequences, follow-ups, signature).

## Handoff

When you finish, print the full FOUNDER JAM HANDOFF block (format: `founder-setup`) in a code fence with these fields filled in:

- `published_pages`: [purpose]=[url], comma-separated, for example `lead-magnet-gate=https://slug.agentpub.io/`. Keep every entry already in `published_pages` and add one entry for each new URL. Never replace earlier URLs. Mode B publishes two URLs, so add both (ab-test-a and ab-test-b). In `config.json`, `published_pages` is an array of objects, each with `purpose` and `url` (and optionally `name` and `gate`). Append new objects and leave the existing ones as they are.

Keep every other field as you received it, and tell the founder to copy the block and paste it into the next skill. If you are running in Claude Code with file access and a Founder Jam `config.json` (one with `startup_name` and `path` keys) already exists in the working directory, update the same fields there and leave every other key as it is. Never create `config.json` in another project or overwrite a file that is not a Founder Jam config.

## Safety Notes

- Never publish credentials, customer PII, or anything the founder wouldn't show a stranger - unguessable URL is not access control.
- Anonymous publishes: surface the one-time `claimUrl` to the founder IMMEDIATELY; it is shown once and is the only way to keep the site.
- The API key lives in `~/.config/agentpub/credentials` (0600) and nowhere else - not in the page, not in the handoff block or config.json, not in chat.

## Where this runs

| Where | What happens |
|-------|--------------|
| Claude Code | Full flow: generates, publishes, gates, verifies, and records the pages. |
| claude.ai or Claude desktop | Do not run the publishing steps. Build the page as an artifact instead (see the section near the top). |

---

Third-party skill. Written by Scott Murtaugh of GP Automations and released under CC0 1.0 (public domain dedication). It is not covered by the CC BY 4.0 license that applies to the rest of the pack. Distributed in the Founder Jam skills pack, whose credit line is: Founder Jam curriculum and skills by Drew Burdick · program co-created with Innovate Charlotte · CC BY 4.0 · drewburdick.com/founderjam
