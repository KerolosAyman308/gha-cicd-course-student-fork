# EX-05: Build Artifact with Buildx

## Use This After

- [LAB-03: Build Artifact Workflow](../labs/LAB-03-build-artifact-workflow.md)

## Goal

Keep the same packaging story from Lab 03, but use reusable Docker actions instead of raw Docker commands where possible.

This exercise keeps the same packaging goal from `LAB-03` and changes only the build implementation style.

## Build

Create this workflow file yourself:

`.github/workflows/03-build-artifact-exercise.yml`

Reference solution: instructor repo only.

If you need syntax help, use [Finding and Reusing GitHub Actions](../docs/help/07-finding-and-reusing-actions.md).

## Requirements

- Create a packaging workflow in `.github/workflows/03-build-artifact-exercise.yml`.
- Keep the same overall story from Lab 03.
- Run the tests before packaging.
- Use Buildx-based reusable actions instead of the raw Docker command path.
- Export the image as a tar file.
- Upload that tar file as the artifact.

## Acceptance Criteria

- The workflow still shows tests first, then packaging.
- The workflow produces a tar file as the packaged output.
- The tar file is uploaded as the artifact.
- You can explain what stayed the same from Lab 03.
- You can explain what reusable actions replaced.
