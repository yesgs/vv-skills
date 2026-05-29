# vv-skills

[![skills.sh](https://skills.sh/b/yesgs/vv-skills)](https://skills.sh/yesgs/vv-skills)

A multi-skill repository for Claude Code / skills.sh.

This repository is designed for hosting multiple reusable agent skills in one GitHub repo.

## Repository layout

```text
vv-skills/
├── README.md
├── skills.sh.json
├── skills/
│   └── superpowers-planning-workflow/
│       ├── SKILL.md
│       ├── README.md
│       ├── templates/
│       ├── prompts/
│       ├── scripts/
│       └── examples/
├── skill-template/
│   ├── SKILL.md.template
│   └── README.md.template
└── scripts/
    └── add-skill.sh
```

## Install one skill from this repo

```bash
npx skills add yesgs/vv-skills --skill superpowers-planning-workflow -a codex
```

Global install:

```bash
npx skills add yesgs/vv-skills --skill superpowers-planning-workflow -a codex -g
```

List skills discovered in this repo:

```bash
npx skills add yesgs/vv-skills --list
```

## Add another skill

```bash
./scripts/add-skill.sh my-new-skill "Describe when this skill should be used"
```

This creates:

```text
skills/my-new-skill/
├── SKILL.md
└── README.md
```

Then edit the generated files and commit them.

## Publish to skills.sh

1. Push this repo to GitHub.
2. Install one skill using `npx skills add yesgs/vv-skills --skill <skill-name> -a codex`.
3. After skills.sh receives installation telemetry, the repo/skill can appear on skills.sh.

## Notes

- Each real skill must live under `skills/<skill-name>/` and contain a `SKILL.md` file.
- Do not put example `SKILL.md` files under `skills/`, otherwise they may be detected as real skills.
- The `skill-template/` directory intentionally uses `SKILL.md.template` instead of `SKILL.md`.
