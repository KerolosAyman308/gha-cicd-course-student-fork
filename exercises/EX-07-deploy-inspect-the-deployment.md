# EX-07: Deploy and Inspect the Deployment

## Problem Statement

This is a challenge based on `LAB-04`.

The main deploy lab already proves that the saved package can be loaded, started, and checked.

Now imagine a teammate says:

"The smoke test passed, but I want a little more visibility into what was actually deployed."

That is the challenge.

## Related Core Lab

Use this after:

- [LAB-04: Deploy Workflow](../labs/LAB-04-deploy-workflow.md)

Do not start with this exercise.

Finish `LAB-04` first, then use this challenge to make the deployment result easier to inspect.

## Concepts It Reinforces

- deploy still uses the saved artifact
- smoke test versus richer visibility
- container inspection with `docker ps`
- health response body after startup

## Challenge Workflow

Prepared workflow file:

`.github/workflows/04-deploy-exercise.yml`

## What to Notice

Look for:

- the same build-triggered deploy pattern from `LAB-04`
- a container list after startup
- the `/health` response body after the app is ready

## Success Check

You are done when you can explain:

- what stayed the same compared with `LAB-04`
- what extra visibility this challenge added
- why this is still a deployment check, not a new deployment system
