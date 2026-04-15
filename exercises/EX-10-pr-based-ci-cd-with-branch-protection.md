# EX-10: PR-Based CI/CD with Branch Protection

## Use This After

- [LAB-02: Real CI Workflow](../labs/LAB-02-real-ci-workflow.md)
- [LAB-05: Full CI/CD Flow](../labs/LAB-05-full-cicd-flow.md)
- preferably [EX-09: Full Flow Failure and Recovery](EX-09-full-flow-failure-and-recovery.md)

## Goal

Finish the course with a real team workflow:

- CI runs on pull requests to `main`
- branch protection requires CI to pass
- CD runs only after the pull request is merged

This exercise keeps the full flow idea from `LAB-05` and changes the trigger model to a team-style PR path.

Use the CI workflow from `LAB-02` as your starting point for the PR CI part.

## Build

Create these workflow files yourself:

- `.github/workflows/05-pr-ci-exercise.yml`
- `.github/workflows/05-cd-after-pr-merge-exercise.yml`

Reference solutions: instructor repo only.

## Requirements

### Workflow 1: PR CI

- Create `.github/workflows/05-pr-ci-exercise.yml`.
- Start from the same verification shape you already used in `.github/workflows/02-ci.yml`.
- The workflow should start on pull requests to `main`.
- The workflow should run when the pull request is opened, updated, or reopened.
- Keep the same core verification steps from `LAB-02`: check out the repository, set up Python, and run the project tests.
- The workflow should use one stable job name such as `verify`.

### Workflow 2: CD After Merge

- Create `.github/workflows/05-cd-after-pr-merge-exercise.yml`.
- The workflow should start when a pull request to `main` is closed.
- The workflow should continue only if the pull request was really merged.
- The workflow can stay small and use one clear CD message or simple step.
- This second workflow is there to show what happens after code reaches `main`.
- It does not need to replace the earlier deploy labs.

### Branch Protection

- Configure `main` so changes come through pull requests.
- Configure `main` so the CI check must pass before merge.
- If your GitHub plan allows it, also block direct pushes to `main`.

## Suggested Flow

1. create a feature branch
2. make one safe change
3. open a pull request to `main`
4. watch PR CI run
5. confirm merge is blocked until CI passes
6. merge the pull request
7. watch CD run after merge

## Acceptance Criteria

- Opening a pull request to `main` starts the PR CI workflow.
- The PR CI workflow clearly reuses the same verification idea from `LAB-02`.
- The PR shows the CI result clearly before merge.
- Merge stays blocked until the required CI check passes.
- Merging the pull request starts the CD workflow.
- Closing a pull request without merging does not run the CD job or CD steps.
- You can explain why branch protection turns CI into a real team rule.
