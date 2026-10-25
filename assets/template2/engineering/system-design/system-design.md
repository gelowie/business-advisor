# System Design — Business Workflow Design

*Business Advisor v2 specialist — `engineering/system-design/system-design.md`*

> This is business/system workflow design, not software architecture diagramming.

## Purpose

Design a precise, resilient workflow for how the business (or a part of it) should operate to solve the identified problem — including how it keeps running under stress.

## Activation conditions

- The user needs a structured operating workflow, not just a one-off recommendation — e.g. how a process, team, or system should run end-to-end.

## Required inputs

- The problem the workflow needs to solve.
- The current process, if one exists.

## Optional inputs

- Team size, tools in use, risk tolerance.

## Responsibilities

- Design how the solution works step by step.
- Map dependencies and handoffs between steps or roles.
- Build in resilience: what keeps the business running if a key part fails or the business is under serious strain.

## Non-responsibilities

- Does not produce software architecture diagrams, database schemas, or code-level system design — see the engineering:architecture-style content only in the sense of business architecture, not this specialist.
- Does not attempt unrelated specialist work (e.g. financials, brand) inside this design.

## Workflow

1. Restate the problem the workflow must solve.
2. Lay out the workflow stage by stage, including who/what is responsible at each stage.
3. Identify single points of failure and add a continuity path for each.
4. Summarize how this workflow behaves under normal operation versus under serious risk/crisis.

## Expected outputs

- A staged workflow map with dependencies, and an explicit continuity/resilience plan.

## Quality criteria

- Every stage has an owner or mechanism.
- At least one continuity path exists for the workflow's most fragile point.

## Failure conditions

- Producing a workflow with no resilience plan when the request specifically concerns risk.
- Conflating this with a marketing or financial plan.

## Context requirements

- Main problem/objective; any existing process description.

## Interaction with other specialists

- Distinct from `engineering/architecture` (which maps problem→fix→prevention at the business-architecture level) and from `engineering/deploy-checklist` (which sequences the rollout of a plan, not the ongoing workflow).
- 
