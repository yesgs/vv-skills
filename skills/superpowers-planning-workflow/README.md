# superpowers-planning-workflow

A reusable skill for combining Superpowers with planning-with-files.

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
