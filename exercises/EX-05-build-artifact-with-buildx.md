# EX-05: Build Artifact with Buildx

## Problem Statement

This is a challenge based on `LAB-03`.

The core build artifact workflow uses raw Docker commands because they are easier to teach first.

Now imagine the team says:

"Can we keep the same packaging story, but use reusable Docker actions instead of raw Docker commands where possible?"

That is the Buildx challenge.

## Related Core Lab

Use this after:

- [LAB-03: Build Artifact Workflow](../labs/LAB-03-build-artifact-workflow.md)

Do not start with this exercise.

Finish `LAB-03` first, then use this challenge to compare the same packaging story with a reusable-action implementation.

## Concepts It Reinforces

- reusable actions
- Docker Buildx
- action-based image build flow
- exporting a Docker image tar file

## Challenge Workflow

Prepared workflow file:

`.github/workflows/03-build-artifact-exercise.yml`

## Success Check

You are done when you can explain:

- what stayed the same compared with the core build workflow
- what reusable actions replaced
- why the tar file is still the important output
