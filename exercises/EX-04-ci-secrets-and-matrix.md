# EX-04: CI Secrets and Matrix Patterns

## Problem Statement

This is a challenge based on `LAB-02`.

## Important Note

This exercise shows advanced GitHub Actions patterns.

It is useful for learning how expressions, matrix values, and secrets can interact.

It is not the default way to handle normal configuration values like version numbers or ports.

The matrix exercise showed how one job can repeat across multiple values.

Now imagine the team says one of these:

- "Our matrix list comes from one stored value."
- "We already know the matrix entries, but each one should read a different secret."

These are two related but different GitHub Actions problems.

## Related Core Lab

Use this after:

- [LAB-02: Real CI Workflow](../labs/LAB-02-real-ci-workflow.md)

Do not start with this exercise.

Finish `LAB-02` first, then use this challenge only if the class is ready for a more advanced GitHub Actions pattern.

## Pattern A: Build the Matrix From One Secret

Prepared workflow:

`.github/workflows/02-ci-matrix-from-secret-exercise.yml`

Use this when the whole matrix list must come from one changing stored value.

## Pattern B: Fixed Matrix with Secret Lookup

Prepared workflow:

`.github/workflows/02-ci-matrix-secret-lookup-exercise.yml`

Use this when the matrix entries are already known and each job only needs to read a different secret.

## Concepts It Reinforces

- secrets
- matrix
- job outputs
- dynamic secret lookup
- choosing the simplest pattern for the real need

## Beginner Reality Check

Python versions are usually not secret in real life.

This challenge is mainly useful for understanding GitHub Actions behavior, not for recommending secrets as the normal way to store version numbers.

## Success Check

You are done when you can explain:

- why Pattern A needs two jobs
- why Pattern B can stay in one job
- which pattern is simpler when the matrix list is already known
