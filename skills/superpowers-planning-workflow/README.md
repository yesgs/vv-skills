# superpowers-planning-workflow

A reusable skill for combining Superpowers with planning-with-files.

## Recommended install

Install upstream Superpowers, planning-with-files, and this workflow together:

```bash
npx skills add obra/superpowers --skill '*' -a codex -y && npx skills add mxyhi/ok-skills --skill planning-with-files -a codex -y && npx skills add yesgs/vv-skills --skill superpowers-planning-workflow -a codex -y
```

## Use when

- Starting a new project.
- Refactoring a legacy project.
- Working on a complex feature across multiple files.
- Continuing after `/clear` or a new workday.
- You want persistent planning files instead of relying only on chat context.

## Planning files

This skill uses:

```text
.task/task_plan.md
.task/findings.md
.task/progress.md
```

## Initialize planning files

From the project root:

```bash
/path/to/skills/superpowers-planning-workflow/scripts/init-planning-files.sh .
```

## Common prompts

See `prompts/`:

- `new-project.md`
- `legacy-refactor.md`
- `resume.md`
- `handoff.md`
