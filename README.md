# my-agent-skills

A multi-skill repository for Claude Code / skills.sh.

This repository is designed for hosting multiple reusable agent skills in one GitHub repo.

## Repository layout

```text
my-agent-skills/
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

Replace `OWNER/REPO` with your GitHub repo path.

```bash
npx skills add OWNER/REPO --skill superpowers-planning-workflow -a claude-code
```

Global install:

```bash
npx skills add OWNER/REPO --skill superpowers-planning-workflow -a claude-code -g
```

List skills discovered in this repo:

```bash
npx skills add OWNER/REPO --list
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
2. Install one skill using `npx skills add OWNER/REPO --skill <skill-name> -a claude-code`.
3. After skills.sh receives installation telemetry, the repo/skill can appear on skills.sh.

## Notes

- Each real skill must live under `skills/<skill-name>/` and contain a `SKILL.md` file.
- Do not put example `SKILL.md` files under `skills/`, otherwise they may be detected as real skills.
- The `skill-template/` directory intentionally uses `SKILL.md.template` instead of `SKILL.md`.
