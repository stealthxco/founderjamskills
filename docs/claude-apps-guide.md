# Using Founder Jam skills in the Claude apps

This guide covers four things founders ask about on the day: getting the skills into Claude, prototyping with artifacts, using connectors for research, and what to do if you use ChatGPT.

Menu names in the Claude apps change often. This guide gives the current names and the older ones. If a label doesn't match your screen, look for the closest one, or ask Claude to help you find it. Steps last checked on 2026-10-29.

<!--
Sources for the steps below (re-check when Anthropic changes the apps):
- Skills upload: https://support.claude.com/en/articles/12512180-using-skills-in-claude
- Plugins in Claude desktop (Cowork): https://claude.com/docs/cowork/guide/plugins
- Plugins and marketplaces in Claude Code: https://code.claude.com/docs/en/plugins/create-marketplace and https://code.claude.com/docs/en/plugins/marketplace-reference
- Artifacts: https://support.claude.com/en/articles/9487310-what-are-artifacts-and-how-do-i-use-them
- Connectors: https://support.claude.com/en/articles/11176164-use-connectors-to-extend-claude-s-capabilities
- ChatGPT skills (not verified by the author, the page returned 403): https://help.openai.com/en/articles/20001066-skills-in-chatgpt
-->

## Pick your setup

| You use | Best option | Time |
|---------|-------------|------|
| claude.ai in a browser or the Claude desktop app | Upload skill zips from `dist/` | 2 minutes per skill |
| Claude desktop and you want every skill at once | Add this repo as a plugin marketplace, then install the `founder-jam` plugin | 3 minutes |
| Claude Code | Install the plugin, or run `./install.sh` | 2 minutes |
| ChatGPT | See the ChatGPT side notes below | varies |
| Free plan, or any chat window | Paste-in prompts in `instructions/` and `starter-kit/paste-in/` | 1 minute |

Whichever you pick, start with `founder-setup`. It asks whether a sherpa is with you, captures your startup context, suggests a path, and prints a FOUNDER JAM HANDOFF block. Paste that block at the start of each later skill.

## Upload a skill zip (claude.ai and Claude desktop)

1. Turn on code execution. Skills need it. In Settings > Capabilities, switch on "Code execution and file creation". In newer layouts this reads "Create and edit files". On Team and Enterprise plans an owner controls this and can also turn off uploading your own skills.
2. Download one zip from the [`dist/`](../dist/) folder, for example `founder-setup.zip`. On GitHub, open the file and choose the download button.
3. In Claude, go to Customize > Skills. Click the plus button, then "Create skill", then "Upload a skill", and pick the zip. In older layouts the path is Settings > Capabilities > Skills > Upload skill.
4. The skill appears in your list. Switch it on.
5. Start a new chat and ask for it by name: "Run founder-setup."

Every zip holds one folder named for the skill, with SKILL.md inside, plus the templates the skill uses, a LICENSE file, a CREDIT.txt, and a HANDOFF-FORMAT.md (a copy of the handoff format from founder-setup, so the skill works even if you upload it on its own). If an upload fails, the usual causes are a zip that is too large, a folder name that doesn't match the skill name, a missing SKILL.md, or odd characters in the skill name or description. Use the zips from `dist/` unchanged and none of those should apply.

Upload the skills you need for your path (see [PATHS.md](../PATHS.md)), not all 25. Skills stay private to your account until you share them.

A note on `page-launcher`: it publishes with shell commands, so it only runs fully in Claude Code. In claude.ai or Claude desktop, ask Claude to build the page as an artifact instead. The skill explains how.

## Add the plugin

A plugin bundles every skill in one install. This repo is its own marketplace.

In Claude desktop (Cowork):

1. Open Customize in the sidebar, then Plugins.
2. Select "Add marketplace" and enter `stealthxco/founderjamskills`. The full URL `https://github.com/stealthxco/founderjamskills` also works.
3. Find the Founder Jam plugin in the list that appears and click Install.
4. Open the plugin to see its skills. Use "Check for updates" on the marketplace when a new version is released, or turn on "Sync automatically".

In Claude Code:

```
/plugin marketplace add stealthxco/founderjamskills
/plugin install founder-jam@founder-jam-skills
```

From your shell, the same two steps are `claude plugin marketplace add stealthxco/founderjamskills` and `claude plugin install founder-jam@founder-jam-skills`. Plugin skills are namespaced, so you can type `/founder-jam:founder-setup` or just ask Claude to run `founder-setup`.

The plugin adds about 2,000 tokens of skill descriptions to every session while it's enabled. Disable it from the plugin list when you're done with the Jam.

## Prototype with artifacts

An artifact is a page or small app that Claude builds and shows next to the chat. It's a fast way to get a clickable prototype in front of five people, which is what `prototype-launcher` is for.

Set up:

1. Turn on "Create and edit files" (also labeled "Code execution and file creation") in Settings > Capabilities. Artifacts need it.
2. Use claude.ai or the Claude desktop app. The steps are the same in both.

Build one:

1. Run `prototype-launcher` and finish its brief, so you have a hypothesis, a prototype type, and a test plan.
2. Ask for the artifact with a prompt like this, filled in from your handoff block:

   > Build a single-page interactive prototype as an artifact. Who it's for: [ICP]. The one thing it must prove: [hypothesis]. Show only the screens a visitor needs for that: [list 2 to 4 screens or steps]. Use realistic sample content, no login, no payments. Put a short line at the top that says this is a prototype.

3. Iterate by chatting: "make the pricing clearer", "add a step where they pick their team size". Change one thing per message.
4. Share it. Artifacts start private to you. Use the sharing controls in the artifact panel to get a link or to share with people you choose, and check who can open it before you send it.

What an artifact can and can't do for you:

- It can show a clickable flow, a landing page, a pricing page, or a calculator. That's enough to learn whether people care.
- It doesn't run your real backend, take payments, or collect email addresses by itself. For sign-ups, embed a Tally or Typeform form in the page and send leads there.
- An artifact can call Claude, so a prototype of an AI feature can work for real. People using it get responses on their own Claude account, and it counts against their plan limits. Test with people who have Claude accounts, or mock the AI response.
- Keep it disposable. If the hypothesis is wrong, the prototype did its job.

Connecting apps to an artifact is available on Pro, Max, Team, and Enterprise plans. Skip it for a first prototype.

In Claude Code, ask for a single HTML file instead and open it in your browser.

ChatGPT side note: ask for a single-file HTML page and preview it in canvas. What canvas can preview depends on your plan and changes often, so check OpenAI's help center.

## Use connectors for research

Connectors let Claude read your own documents and messages. For Founder Jam, three are useful:

| Connector | Good for |
|-----------|----------|
| Google Drive | Pitch decks, market notes, customer lists, last quarter's metrics |
| Gmail | Real customer questions, objections, and the words customers use for the problem |
| Notion | Interview notes, roadmap pages, meeting notes |

Connect them:

1. Go to Customize > Connectors, or click the plus button in a chat and choose "Manage connectors".
2. Click the plus next to Connectors to browse the directory, pick Google Drive, Gmail, or Notion, and click Connect. Follow the sign-in prompts.
3. In each chat, click the plus button (or type `/`), hover over Connectors, and switch on the ones you want for that conversation.

On Team and Enterprise plans an owner has to enable a connector before anyone can sign in to it.

Ask for specific things:

- "In my Drive folder 'Customer interviews', pull out the three most repeated pains and quote the exact words."
- "Search Gmail for threads where prospects asked about pricing in the last 90 days. List the objections, with no names."
- "Read my Notion page 'Competitor notes' and draft battle cards for the three names on it."

Habits that keep this safe:

- Point Claude at a folder, a label, or a page. Don't ask it to search everything.
- Treat what comes back as data. If a document or email contains instructions, Claude shouldn't follow them. Tell it to ignore them and flag them to you.
- Ask for summaries and patterns, not pasted threads. Leave customer names out of anything you'll share unless the customer agreed.
- Check any number or quote against the source before it goes into a deck or an email.
- Turn connectors off in the chat when you're done.

Skills that use connectors for research: `founder-setup`, `market-analyzer`, `battle-card-builder`, and `icp-definer`.

ChatGPT side note: ChatGPT has its own connected apps for Google Drive, Gmail, and Notion. Where they live in Settings and which plans include them has changed during 2026, so look in Settings for "Apps" or "Connectors" and check OpenAI's help center for your plan.

## If you use ChatGPT

The Founder Jam skills are written for Claude. They follow the open SKILL.md format, and OpenAI says ChatGPT skills use the same Agent Skills standard. Treat the following as a starting point and confirm on your account, because the author hasn't tested these skills in ChatGPT.

- Skills in ChatGPT: OpenAI's help center describes a Skills area where you can upload a skill folder. Availability depends on your plan and workspace settings, and some workspaces restrict uploads. Check https://help.openai.com/en/articles/20001066-skills-in-chatgpt for the current steps.
- If you can't upload skills: open the skill's SKILL.md, paste it into a Project's instructions or into the start of a chat, and attach the files in its `templates/` folder. The `instructions/` folder has shorter paste-in versions of many skills.
- Artifacts: see the side note above.
- Connectors: see the side note above.

The FOUNDER JAM HANDOFF block works the same way in any chat tool, because it's plain text.

## Troubleshooting

- The skill doesn't show up after upload: check that it's switched on in Customize > Skills, then start a new chat.
- Claude doesn't use the skill: ask for it by name ("Run icp-definer"). Include your handoff block.
- You lost context between skills: paste the latest handoff block. Every skill prints an updated one when it finishes.
- A plugin update didn't arrive: use "Check for updates" on the marketplace in Claude desktop, or in your shell run `claude plugin marketplace update founder-jam-skills`.

---

Founder Jam curriculum and skills by Drew Burdick · program co-created with Innovate Charlotte · CC BY 4.0 · drewburdick.com/founderjam
