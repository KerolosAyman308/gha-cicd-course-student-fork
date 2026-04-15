# EX-04: CI Secrets and Matrix Patterns

## Use This After

- [LAB-02: Real CI Workflow](../labs/LAB-02-real-ci-workflow.md)

## Goal

Practice two advanced GitHub Actions patterns:

1. build a matrix from one stored secret
2. keep a fixed matrix and look up a different secret in each run

This exercise extends `LAB-02`.

It does not replace the base CI workflow. It compares two more advanced matrix patterns.

## Important Note

This exercise is for learning GitHub Actions behavior.

It is not the normal way to store simple values like Python versions.

## Build

Create these workflow files yourself:

- `.github/workflows/02-ci-matrix-from-secret-exercise.yml`
- `.github/workflows/02-ci-matrix-secret-lookup-exercise.yml`

Reference solutions: instructor repo only.

## Requirements

### Pattern A: Matrix From One Secret

- Create `.github/workflows/02-ci-matrix-from-secret-exercise.yml`.
- Store the whole version list in one secret.
- Use one job to read that secret and publish a normal output.
- Use a second job that turns that output into a matrix with `fromJSON(...)`.
- Complete this pattern first.
- Ask your instructor to review it before you move on to Pattern B.

### Pattern B: Fixed Matrix with Secret Lookup

- Create `.github/workflows/02-ci-matrix-secret-lookup-exercise.yml`.
- Keep the matrix fixed in the YAML.
- Put a secret name in each matrix item.
- Read the real value with `secrets[matrix.version_secret]`.
- Complete this pattern after Pattern A is working.

## Acceptance Criteria

- Pattern A clearly shows one job preparing the matrix values and another job fanning out into multiple CI runs.
- Pattern B clearly shows that the matrix is already known in the YAML and each run resolves a different secret during the job.
- You can explain why Pattern A needs two jobs.
- You can explain why Pattern B can stay in one job.
- You can explain which pattern is simpler when the matrix is already known.
