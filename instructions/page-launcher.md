# Page Launcher - Instructions for Claude Desktop / Cowork

## What This Skill Does

Ships what you designed today to a live URL on agentpub.io, in one of four modes: an email-gated lead magnet page (the gate captures leads - no form builder needed), a two-variant positioning A/B test, a 30-day metrics scoreboard you update weekly in place, or a "demo that travels" page (video + QR + ROI one-pager) for products whose wow requires being there.

**Time:** 25-45 minutes per mode | **Both tracks, on-demand (best right after Offer Designer or Prototype Launcher)**

## Important: Publishing Requires Claude Code

The publish step runs shell commands (`curl`), which Claude Desktop and Cowork cannot do. Use this file to GENERATE your page and plan here, then either:
- Open Claude Code and say "publish this with page-launcher," or
- Host the generated `index.html` anywhere static (Netlify Drop, GitHub Pages) - you'll lose the built-in email gate, so embed a Tally/Typeform form instead.

## How to Use

Copy everything below the line into a new Claude conversation.

---

## Activation Prompt

```
I am at Founder Jam. Help me run the Page Launcher activity - generate a
single-file web page from what I built today, ready to publish to a live URL.

My startup context:
- Startup name: [name]
- ICP beachhead: [one-line description]
- Lead magnet: [name/type from offer-designer, if applicable]
- Landing copy from offer-designer: [paste headline, subhead, 3 bullets, CTA
  if you have them]

First ask me which mode I need:
A. Lead-magnet gate - landing page whose email gate IS the lead-capture form
B. Positioning A/B - two message variants of the same page to settle an angle
   debate with data
C. Scoreboard - a 30-day metrics page (static shell + data.json) I update weekly
D. Demo that travels - video + QR-to-try + ROI one-pager for a product whose
   wow requires physical presence

Then:
1. Assemble the page content from my existing outputs - don't make me rewrite
   copy I already have. Single-file HTML, inline CSS, mobile-first, system
   fonts, one accent color (ask me), no stock-photo filler.
2. For mode B, help me write the two variants and pre-commit a decision rule
   ("if B beats A by 2x at 50+ sends, B is the message") and a clean split plan.
3. For mode C, build the drift-proof pattern: static index.html that fetches
   data.json, plus my week-1 data.json, plus the 2-minute weekly update ritual.
4. For mode D, script my 60-90 second POV walkthrough video, lay out the
   try-it-yourself QR section, and write the ROI one-pager section a champion
   can screenshot for their boss.
5. Challenge me: would a named person from my ICP stop for this headline? Is
   the promise above the email gate strong enough to justify asking first?
6. Output the complete index.html (and data.json if mode C), then give me the
   publish handoff: exactly what to tell Claude Code to publish it on
   agentpub.io with the right gate (email gate for A, optional password for C),
   a stable name so updates go to the same URL, and where my captured leads
   will appear.
```
