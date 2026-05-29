---
name: superpowers-planning-workflow
description: Use this skill when developing a new project, refactoring a legacy project, or doing any multi-step coding task where Superpowers should provide development discipline and planning-with-files should provide persistent project memory through task_plan.md, findings.md, and progress.md.
---

# Superpowers Planning Workflow

This skill combines two complementary workflows:

- **Superpowers**: software-engineering discipline, including brainstorming, design, implementation planning, TDD, code review, and finishing branches.
- **planning-with-files**: persistent project memory, including `task_plan.md`, `findings.md`, `progress.md`, decisions, errors, test results, and handoff notes.

Use this skill for complex tasks that involve multiple files, multiple sessions, unclear requirements, legacy-code exploration, or long-running implementation work.

## Core principle

Do not rely only on chat context. Treat chat context as RAM and planning files as persistent storage.

The workflow is:

```text
Brainstorm → Record findings → Write plan → Execute small task → Test → Review → Update files → Continue
```

## Required planning files

Create or reuse these files under `.task/`:

```text
.task/task_plan.md
.task/findings.md
.task/progress.md
```

If the files do not exist, initialize them from the templates in this skill.

## Responsibilities

### Superpowers responsibilities

Use Superpowers-style discipline for:

1. Brainstorming before coding.
2. Clarifying scope, non-goals, constraints, and acceptance criteria.
3. Writing a small-step implementation plan.
4. Executing one small step at a time.
5. Prefering TDD when practical.
6. Running verification after each meaningful change.
7. Requesting or performing review before marking work complete.
8. Finishing with a handoff summary.

### planning-with-files responsibilities

Use planning files for:

1. Tracking phases and task status in `.task/task_plan.md`.
2. Recording technical discoveries and decisions in `.task/findings.md`.
3. Recording session progress, commands, tests, errors, and handoff notes in `.task/progress.md`.
4. Recovering context after `/clear`, a new session, or a new workday.

## Start protocol

When this skill is invoked:

1. Determine whether the task is a new project, legacy refactor, continuation, or handoff.
2. Create or read `.task/task_plan.md`, `.task/findings.md`, and `.task/progress.md`.
3. Do not start editing code until scope and plan are clear.
4. For unclear requirements, start with brainstorming questions.
5. For legacy projects, first inspect the project and write findings before modifying code.
6. For continuation, read the planning files first and summarize current status before continuing.

## New project protocol

For a new project:

1. Brainstorm goal, target users, core features, non-goals, tech stack, deployment, data model, and acceptance criteria.
2. Write confirmed requirements and decisions to `.task/findings.md`.
3. Create phased implementation plan in `.task/task_plan.md`.
4. Wait for confirmation before coding unless the user explicitly asks to proceed.
5. Execute Phase 1 only after the plan is accepted.

## Legacy refactor protocol

For a legacy project:

1. Do not edit code at first.
2. Inspect project structure, entry points, configuration, dependencies, database access, API routes, and deployment scripts.
3. Record findings in `.task/findings.md`.
4. Record risks and unknowns in `.task/task_plan.md`.
5. Create a phased migration/refactor plan with rollback points.
6. Modify only one small area at a time.

## Execution protocol

Before each implementation step:

1. Read the relevant section of `.task/task_plan.md`.
2. State the small task being executed.
3. Identify files likely to change.
4. Prefer writing or updating tests first.
5. Make the minimal change needed.
6. Run verification.
7. Update `.task/progress.md` with commands and results.
8. Update `.task/task_plan.md` task status.

## Error protocol

When an error occurs:

1. Record the error in `.task/progress.md`.
2. Record the failed attempt and next approach in `.task/task_plan.md` under `Errors Encountered`.
3. Do not repeat the same failed approach without changing something meaningful.
4. Keep the fix small and verifiable.

## Handoff protocol

Before stopping, clearing context, or ending the workday:

1. Update `.task/progress.md` with completed work, changed files, test results, and current blockers.
2. Update `.task/task_plan.md` task status.
3. Update `.task/findings.md` with new decisions or discoveries.
4. Add a clear `Handoff` section describing exactly where to resume.

## Completion checklist

A task is not complete until:

- The requested behavior is implemented or the limitation is clearly documented.
- Verification has been run or a reason is documented.
- Planning files are updated.
- Changed files and important decisions are summarized.
- Next steps or risks are captured.
