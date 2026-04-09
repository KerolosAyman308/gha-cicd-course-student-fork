# EX-10: PR-Based CI/CD with Branch Protection

## Problem Statement

This is a challenge based on `LAB-05`.

The main course already showed one clear CI/CD story:

- code changes
- CI verifies the change
- build creates the package
- deploy delivers that same package

Now imagine the team adds one more rule:

- no direct changes should reach `main`
- every change should arrive through a pull request
- CI must pass before the pull request can be merged
- after the pull request is merged into `main`, the CD workflow should start

That is the team workflow challenge.

## Related Core Lab

Use this after:

- [LAB-05: Full CI/CD Flow](../labs/LAB-05-full-cicd-flow.md)

Do not start with this exercise.

Finish `LAB-05` first, and preferably finish `EX-09` first too.

This is a late course exercise about GitHub flow, branch protection, and trigger design.

It does not replace the main artifact-based delivery story from the core labs.

## Concepts It Reinforces

- `pull_request`
- merged pull request detection
- branch protection on `main`
- required status checks
- stable job naming
- team workflow rules around merge safety

## Workflow Files to Create

Create these workflow files yourself:

- `.github/workflows/05-pr-ci-exercise.yml`
- `.github/workflows/05-cd-after-pr-merge-exercise.yml`

Unlike some earlier exercises, this one is meant to be built by you.

## Requirements

### Workflow 1: PR CI

Create a CI workflow that:

- starts on pull requests that target `main`
- runs when the pull request is opened, updated, or reopened
- runs the project tests
- uses one stable job name such as `verify`

That stable job name matters because branch protection will use it as a required status check.

### Workflow 2: CD After Merge

Create a CD workflow that:

- starts when a pull request targeting `main` is closed
- continues only if the pull request was actually merged
- shows a clear delivery message or simple CD step

This workflow can stay small.

The main idea is to prove that CD starts only after a successful pull-request-based merge into `main`.

### Branch Protection

Configure a branch protection rule for `main` so that:

- changes must come through a pull request
- the CI status check must pass before merge
- if your GitHub plan supports it, direct pushes to `main` are blocked

## Suggested Flow

1. create a feature branch
2. make one safe change
3. open a pull request against `main`
4. watch the PR CI workflow run
5. confirm merge is blocked until the required check passes
6. merge the pull request
7. watch the CD workflow run after merge

## Helpful References

- [Trigger Reference](../docs/help/06-trigger-reference.md)
- [Glossary](../docs/help/03-glossary.md)
- [Engineering Problems, CI/CD, and Branching Strategy](../docs/09-engineering-problems-cicd-and-branching.md)

## What to Notice

Look for:

- CI happens before merge
- branch protection turns CI into an actual team rule
- the merge becomes the handoff point into `main`
- the CD workflow starts only after the pull request is merged

## Success Check

You are done when you can explain:

- why the PR CI workflow should run before merge
- why branch protection depends on a stable required status check
- why the CD workflow should start only after a merged pull request
- how this exercise connects GitHub team workflow rules to CI/CD automation
