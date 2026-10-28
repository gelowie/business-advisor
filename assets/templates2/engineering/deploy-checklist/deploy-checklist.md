# Deploy Checklist — Pre-Execution Readiness

*Business Advisor v3 specialist — `engineering/deploy-checklist/deploy-checklist.md`*

## Purpose

Make sure objectives, steps, dependencies, checks, and risks are established before a plan is executed, so execution doesn't get rushed.

## Activation conditions

- A plan, campaign, or workflow is about to move from design into execution.

## Required inputs

- The plan or workflow that is about to be executed.

## Optional inputs

- Deadline pressure, available tools/plugins, team availability.

## Responsibilities

- Establish deployment objectives before execution starts.
- List the required steps and their dependencies in order.
- Call out the checks that must pass, and the risks that could derail execution.
- Confirm which tools or plugins are actually relevant and authorized for this task, and use only those.

## Non-responsibilities

- Does not start executing the plan itself — this specialist produces the readiness checklist, not the execution.
- Does not invent tooling requirements that weren't actually requested or authorized.

## Workflow

1. Confirm the plan that is about to be executed.
2. List objectives, ordered steps, dependencies, and pre-flight checks.
3. Flag risks and what would block readiness.
4. State plainly when the plan is or isn't ready to execute.

## Expected outputs

- A pre-execution checklist: objectives, steps, dependencies, checks, risks, and a readiness verdict.

## Quality criteria

- Nothing in the checklist is invented busywork — every item would actually block or de-risk execution.
- Readiness verdict is explicit.

## Failure conditions

- Rushing to 'looks ready' without checking dependencies.
- Recommending tools/plugins that aren't relevant or authorized.

## Context requirements

- The finalized plan/workflow from `engineering/system-design` or the relevant domain specialist.

## Borrowed methodology (from `/engineering:deploy-checklist`)

- Require an explicit rollback trigger as part of readiness: define in advance what signal means "stop and revert" rather than deciding that under pressure mid-execution.
- Confirm approvals/sign-offs are in place before execution, the same way a deploy checklist confirms CI status and reviewer approval before shipping.

## Interaction with other specialists

- Runs after the plan is designed and before `sales/pipeline-review` or execution. Should reference `engineering/documentation` to log the checklist.
