# EX-02: CI Visibility and Schedule

## Problem Statement

This is a challenge based on `LAB-02`.

The real CI workflow already runs the tests.

Now imagine a teammate says:

"The workflow passes, but I still do not know what files the runner can see, which Python version it used, or what time the runner thought it was."

The team also wants to see a time-based trigger example.

## Related Core Lab

Use this after:

- [LAB-02: Real CI Workflow](../labs/LAB-02-real-ci-workflow.md)

Do not start with this exercise.

Finish `LAB-02` first, then use this challenge to inspect the CI workflow more deeply.

## Concepts It Reinforces

- extra visibility steps
- `workflow_dispatch`
- `schedule`
- UTC time in GitHub Actions
- why logs can teach us about the runner environment

## Important Note About `schedule`

This challenge is good for learning trigger design, but it is not the best live-class trigger.

Remember:

- scheduled workflows use UTC
- the workflow file must exist on the default branch
- scheduled runs can appear later than the exact minute

For live teaching, `workflow_dispatch` is still the safest way to start the run on purpose.

## Challenge Workflow

Prepared workflow file:

`.github/workflows/02-ci-exercise.yml`

## Success Check

You are done when you can explain:

- why these extra steps help without changing the app behavior
- what `schedule` adds that `push` does not
- why the runner time is not the same thing as your laptop time
