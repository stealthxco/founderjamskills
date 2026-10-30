#!/usr/bin/env python3
"""Build the Founder Jam Starter Kit from the workshop skills.

The kit is two skills (icp-definer, lead-magnet-ideator) for founders who are not
at a Founder Jam. There is one copy of each skill: the zips are built straight from
skills/focus/<name>/, the same folder package-skills.sh uses for dist/, so the kit
cannot drift from the pack and a founder who uploads both gets identical skills.
Each zip also carries LICENSE, CREDIT.txt, and HANDOFF-FORMAT.md, the same as dist/*.zip.

Output:
  starter-kit/dist/<skill>.zip                   (claude.ai / Desktop upload)
  starter-kit/dist/founder-jam-starter-kit.zip   (everything in one download)

Usage: python3 starter-kit/build.py
"""

import pathlib
import shutil
import sys
import zipfile

REPO = pathlib.Path(__file__).resolve().parent.parent
KIT = REPO / "starter-kit"
SKILLS = ["icp-definer", "lead-magnet-ideator"]
CREDIT = (
    "Founder Jam curriculum and skills by Drew Burdick \u00b7 program co-created with "
    "Innovate Charlotte \u00b7 CC BY 4.0 \u00b7 drewburdick.com/founderjam"
)
FORMAT_SRC = REPO / "skills" / "understand" / "founder-setup" / "SKILL.md"


def handoff_format() -> bytes:
    """The FOUNDER JAM HANDOFF format section of founder-setup, as package-skills.sh bundles it."""
    text = FORMAT_SRC.read_text(encoding="utf-8")
    start = text.find("\n## FOUNDER JAM HANDOFF format\n")
    if start < 0:
        sys.exit("ERROR: founder-setup/SKILL.md has no '## FOUNDER JAM HANDOFF format' section.")
    end = text.find("\n## ", start + 1)
    section = text[start + 1:end if end >= 0 else len(text)].rstrip() + "\n"
    header = "Copied from the founder-setup skill when this zip was built. If founder-setup is installed, its copy is the same.\n\n"
    return (header + section).encode("utf-8")


def entry(zf: zipfile.ZipFile, arc: str, data: bytes) -> None:
    info = zipfile.ZipInfo(arc, date_time=(2026, 1, 1, 0, 0, 0))
    info.compress_type = zipfile.ZIP_DEFLATED
    info.external_attr = 0o644 << 16
    zf.writestr(info, data)


def build_skill_zip(name: str, out: pathlib.Path) -> None:
    matches = sorted((REPO / "skills").glob(f"*/{name}/SKILL.md"))
    if len(matches) != 1:
        sys.exit(f"ERROR: expected one skills/<stage>/{name}/SKILL.md, found {len(matches)}")
    src = matches[0].parent
    files: list[tuple[str, bytes]] = []
    for path in sorted(src.rglob("*")):
        if path.is_symlink():
            sys.exit(f"ERROR: symlink in skill folder: {path}")
        if path.is_file() and path.name in ("LICENSE", "CREDIT.txt", "HANDOFF-FORMAT.md"):
            sys.exit(f"ERROR: {path} is generated into the zip; remove it from the skill folder.")
        if path.is_file() and path.name != ".DS_Store":
            files.append((f"{name}/{path.relative_to(src).as_posix()}", path.read_bytes()))
    files.append((f"{name}/LICENSE", (REPO / "LICENSE").read_bytes()))
    files.append((f"{name}/CREDIT.txt", (CREDIT + "\n").encode("utf-8")))
    files.append((f"{name}/HANDOFF-FORMAT.md", handoff_format()))
    with zipfile.ZipFile(out, "w", zipfile.ZIP_DEFLATED) as zf:
        for arc, data in sorted(files):
            entry(zf, arc, data)


def main() -> None:
    dist = KIT / "dist"
    shutil.rmtree(dist, ignore_errors=True)
    dist.mkdir(parents=True)

    bundle: list[tuple[pathlib.Path, str]] = []
    for name in SKILLS:
        build_skill_zip(name, dist / f"{name}.zip")
        bundle.append((dist / f"{name}.zip", f"founder-jam-starter-kit/upload-to-claude/{name}.zip"))
        print(f"built starter-kit/dist/{name}.zip")

    for md in sorted((KIT / "paste-in").glob("*.md")):
        bundle.append((md, f"founder-jam-starter-kit/paste-in-prompts/{md.name}"))
    for extra in ("quickstart.pdf", "README.md"):
        path = KIT / extra
        if not path.exists():
            sys.exit(f"ERROR: missing starter-kit/{extra}")
        bundle.append((path, f"founder-jam-starter-kit/{extra}"))

    with zipfile.ZipFile(dist / "founder-jam-starter-kit.zip", "w", zipfile.ZIP_DEFLATED) as zf:
        for src, arc in bundle:
            entry(zf, arc, src.read_bytes())
    print("built starter-kit/dist/founder-jam-starter-kit.zip")


if __name__ == "__main__":
    main()
