# EX-03: CI Matrix

## Problem Statement

This is a challenge based on `LAB-02`.

The CI workflow already proves the tests pass in one environment.

Now imagine the team asks:

"What if we want the same CI check to run on Python `3.11` and `3.12` without copying the whole job twice?"

That is the matrix problem.

## Related Core Lab

Use this after:

- [LAB-02: Real CI Workflow](../labs/LAB-02-real-ci-workflow.md)

Do not start with this exercise.

Finish `LAB-02` first, then use this challenge to extend the same CI idea across more than one Python version.

## Concepts It Reinforces

- matrix strategy
- repeated jobs
- keeping one workflow shape while changing one value

## Challenge Workflow

Prepared workflow file:

`.github/workflows/02-ci-matrix-exercise.yml`

## Success Check

You are done when you can explain:

- what repeated and what stayed the same
- why a matrix is cleaner than copying the whole job twice
- why this is still the same CI story, not a different story
