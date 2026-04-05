# EX-01: Hello Trigger and PR Merge

## Problem Statement

This is a challenge based on `LAB-01`.

The first workflow already proved that GitHub Actions can run.

Now imagine a team says:

"We want this tiny workflow to react to a pull request being merged into `main`, not just to a direct push."

That changes the trigger design question.

## Related Core Lab

Use this after:

- [LAB-01: First Workflow](../labs/LAB-01-first-workflow.md)

Do not start with this exercise.

Finish `LAB-01` first, then use this challenge to extend the trigger idea.

## Concepts It Reinforces

- trigger choice
- `pull_request`
- branch filtering
- merged versus closed
- why `workflow_dispatch` is still useful for teaching

## Challenge Workflow

Prepared workflow file:

`.github/workflows/01-hello-exercise.yml`

## Success Check

You are done when you can explain:

- why this challenge does not use the same trigger as Lab 01
- why a pull request being closed is not always the same as being merged
- why a safe manual trigger is still useful during training
