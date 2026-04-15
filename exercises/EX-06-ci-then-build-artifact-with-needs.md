# EX-06: CI Then Build Artifact With `needs`

## Use This After

- [LAB-02: Real CI Workflow](../labs/LAB-02-real-ci-workflow.md)
- the Day 2 opening bridge

Then continue to [LAB-03: Build Artifact Workflow](../labs/LAB-03-build-artifact-workflow.md).

## Goal

Build one manual workflow with two jobs:

1. CI runs first
2. packaging runs second

The build job must wait for CI by using `needs`.

This exercise is a bridge between `LAB-02` and `LAB-03`.

It connects those ideas in one file, but it does not replace either lab.

## Guided Note

This is the guided Day 2 bridge exercise.

Use it with your instructor.

## Build

Create this workflow file yourself:

`.github/workflows/04-ci-then-build-artifact-exercise.yml`

Reference solution: instructor repo only.

## Requirements

- Create a manual workflow in `.github/workflows/04-ci-then-build-artifact-exercise.yml`.
- The workflow should have one CI job and one packaging job.
- The CI job should reuse the same verification idea from Lab 02.
- The packaging job should wait for CI by using `needs`.
- The packaging job should use a fixed matrix for Python `3.11` and `3.12`.
- Each package should use the matching Python base image.
- Each artifact name should stay unique.

## Acceptance Criteria

- The Actions view shows CI first and packaging second.
- Packaging does not start before CI succeeds.
- After CI passes, packaging fans out into one run per Python version.
- The artifact names are unique.
- You can explain what `needs` changed in the workflow behavior.
