#!/usr/bin/env python3
"""Build the Founder Jam Starter Kit from the workshop skills.

The kit is a solo-mode edition of two skills (icp-definer, lead-magnet-ideator)
for founders who are not at a Founder Jam. It is generated, not hand-copied, so
it cannot drift from skills/: every change is an exact anchor replacement, and a
missing anchor fails the build instead of silently shipping the workshop text.

What changes in the solo edition:
  - the description is prefixed so the kit's skills are easy to tell apart
  - everything else is copied from skills/<stage>/<name>/SKILL.md; the v2 skills
    already default to solo mode and use the FOUNDER JAM HANDOFF block

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

# v2 skills already ask "Is a sherpa with you today?", default to solo, and print and accept the
# FOUNDER JAM HANDOFF block themselves, so the kit only changes the description.
EDITS = {
    "icp-definer": [("\ndescription: ", "\ndescription: Founder Jam Starter Kit (solo edition). ")],
    "lead-magnet-ideator": [("\ndescription: ", "\ndescription: Founder Jam Starter Kit (solo edition). ")],
}


def build_skill(name: str, edits: list[tuple[str, str]]) -> pathlib.Path:
    matches = sorted((REPO / "skills").glob(f"*/{name}/SKILL.md"))
    if len(matches) != 1:
        sys.exit(f"ERROR: expected one skills/<stage>/{name}/SKILL.md, found {len(matches)}")
    text = matches[0].read_text()
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
