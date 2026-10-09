#!/usr/bin/env python3
"""Build the Founder Jam Starter Kit from the workshop skills.

The kit is a solo-mode edition of two skills (icp-definer, lead-magnet-ideator)
for founders who are not at a Founder Jam. It is generated, not hand-copied, so
it cannot drift from skills/: every change is an exact anchor replacement, and a
missing anchor fails the build instead of silently shipping the workshop text.

What changes in the solo edition:
  - facilitated_mode defaults to false (the workshop copies default to true)
  - claude.ai has no config.json, so icp-definer ends by printing a handoff
    block and lead-magnet-ideator asks for it

Output:
  starter-kit/skills/<skill>/SKILL.md      (real files, readable on GitHub)
  starter-kit/dist/<skill>.zip             (claude.ai / Desktop upload)
  starter-kit/dist/founder-jam-starter-kit.zip  (everything in one download)

Usage: python3 starter-kit/build.py
"""

import pathlib
import shutil
import sys
import zipfile

REPO = pathlib.Path(__file__).resolve().parent.parent
KIT = REPO / "starter-kit"

HANDOFF_BLOCK = """## Handoff Block (Starter Kit)

Claude.ai and Claude Desktop have no shared `config.json`, so the next skill cannot read what this one wrote. After the Write Config step, ALWAYS print this block in a code fence and tell the founder: "Copy this block. Paste it when you run `lead-magnet-ideator`, or into any later Founder Jam skill."

```
FOUNDER JAM HANDOFF
startup_name: [name]
problem_statement: [one sentence]
business_type: [B2B SaaS / Services / Marketplace / Consumer]
stage: [idea / pre-revenue / early-revenue]
icp_segment: [beachhead segment name and one-line JTBD]
top_pains: [the 1-2 pains the beachhead feels most]
channels_selected: [primary channel 1], [primary channel 2]
```

"""

SOLO_NOTE = (
    "- Set `facilitated_mode` to `false` as default (Starter Kit solo edition). "
    "Skip the facilitated-mode challenge prompts unless the founder asks to be pushed harder.\n"
)

EDITS = {
    "icp-definer": [
        (
            "description: Growth Track Part 1.",
            "description: Founder Jam Starter Kit (solo edition). Growth Track Part 1.",
        ),
        ("- Set `facilitated_mode` to `true` as default\n", SOLO_NOTE),
        ("## Config Dependencies\n", HANDOFF_BLOCK + "## Config Dependencies\n"),
    ],
    "lead-magnet-ideator": [
        (
            "description: On-demand skill.",
            "description: Founder Jam Starter Kit (solo edition). On-demand skill.",
        ),
        (
            'If `icp_segment` is missing, ask: "Who is your ideal customer? (Run `icp-definer` first if you haven\'t.)"\n',
            "If there is no `config.json`, first ask: \"Paste your FOUNDER JAM HANDOFF block from `icp-definer`, "
            "or say 'skip' and I'll ask a few questions instead.\" Read every field you need from the block.\n\n"
            'If `icp_segment` is still missing, ask: "Who is your ideal customer? (Run `icp-definer` first if you haven\'t.)"\n\n'
            + SOLO_NOTE,
        ),
    ],
}


def build_skill(name: str, edits: list[tuple[str, str]]) -> pathlib.Path:
    text = (REPO / "skills" / name / f"{name}.skill").read_text()
    for old, new in edits:
        count = text.count(old)
        if count != 1:
            sys.exit(f"ERROR: {name}: anchor found {count} times (need exactly 1): {old[:60]!r}")
        text = text.replace(old, new)
    out = KIT / "skills" / name / "SKILL.md"
    out.parent.mkdir(parents=True, exist_ok=True)
    out.write_text(text)
    return out


def zip_dir(zip_path: pathlib.Path, entries: list[tuple[pathlib.Path, str]]) -> None:
    with zipfile.ZipFile(zip_path, "w", zipfile.ZIP_DEFLATED) as zf:
        for src, arc in entries:
            info = zipfile.ZipInfo(arc, date_time=(2026, 1, 1, 0, 0, 0))
            info.compress_type = zipfile.ZIP_DEFLATED
            info.external_attr = 0o644 << 16
            zf.writestr(info, src.read_bytes())


def main() -> None:
    dist = KIT / "dist"
    shutil.rmtree(dist, ignore_errors=True)
    dist.mkdir(parents=True)

    bundle: list[tuple[pathlib.Path, str]] = []
    for name, edits in EDITS.items():
        skill_md = build_skill(name, edits)
        zip_dir(dist / f"{name}.zip", [(skill_md, f"{name}/SKILL.md")])
        bundle.append((dist / f"{name}.zip", f"founder-jam-starter-kit/upload-to-claude/{name}.zip"))
        print(f"built starter-kit/dist/{name}.zip")

    for md in sorted((KIT / "paste-in").glob("*.md")):
        bundle.append((md, f"founder-jam-starter-kit/paste-in-prompts/{md.name}"))
    for extra in ("quickstart.pdf", "README.md"):
        path = KIT / extra
        if not path.exists():
            sys.exit(f"ERROR: missing starter-kit/{extra}")
        bundle.append((path, f"founder-jam-starter-kit/{extra}"))

    zip_dir(dist / "founder-jam-starter-kit.zip", bundle)
    print("built starter-kit/dist/founder-jam-starter-kit.zip")


if __name__ == "__main__":
    main()
