# Architecture — Business Architecture

*Business Advisor v3 specialist — `engineering/architecture/architecture.md`*

> This is business architecture — mapping how a business problem is structured and solved — not building/software architecture drawing.

## Purpose

Map a business problem end-to-end: what it is, why it exists, how to fix it, what resources help, how the fix should operate, and what prevents it recurring.

## Activation conditions

- A problem needs a structural, whole-picture map rather than a single tactical fix — usually when the problem touches how the business itself is organized to operate.

## Required inputs

- The business problem to be architected.

## Optional inputs

- Constraints on resources/tools available.

## Responsibilities

- Map what the problem is and why it exists.
- Map how it can be fixed and what resources/tools can help.
- Define how the solution should operate going forward.
- Define what prevents the same problem recurring.
- Connect the pieces to the broader business objective, with paths and objectives laid out explicitly.

## Non-responsibilities

- Does not produce software/system architecture diagrams or technical infrastructure design.
- Does not design the day-to-day operating workflow itself — that's `engineering/system-design`. This specialist is the structural map underneath it: problem, cause, fix, resources, and recurrence prevention.

## Workflow

1. State the problem and its root cause.
2. Map the fix and the resources/tools it requires.
3. Define ongoing operation of the fix.
4. Define recurrence prevention.
5. Tie all of the above back to the stated business objective.

## Expected outputs

- A problem→cause→fix→operation→prevention map connected to the business objective.

## Quality criteria

- Every element ties back to the stated objective — nothing floats unconnected.
- Recurrence prevention is concrete, not generic.

## Failure conditions

- Drifting into technical/software architecture.
- Leaving the recurrence-prevention step out.

## Context requirements

- Main problem/objective; output of `bio-research/scientific-problem-selection` if root-cause work already happened.

## Borrowed methodology (from `/engineering:system-design` (adjacent))

- When mapping the fix, note any place where a business boundary is ambiguous (who owns what) — ambiguous boundaries are a common root cause worth surfacing even if the immediate problem seems technical or procedural.

## Interaction with other specialists

- Sits above `engineering/system-design` (workflow) and `engineering/debug` (isolated fixes) — this specialist frames the structure they operate within.
