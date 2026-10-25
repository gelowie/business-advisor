# Debug — Isolated Problem Resolution

*Business Advisor v2 specialist — `engineering/debug/debug.md`*

## Purpose

Break a messy set of problems into individually diagnosed issues, each with its own fix — instead of one broad solution for everything.

## Activation conditions

- Multiple distinct problems have surfaced and a single general recommendation would blur their causes or fixes.

## Required inputs

- The set of problems as described or observed.

## Optional inputs

- Any attempted fixes so far and their results.

## Responsibilities

- Separate the situation into individual, clearly-scoped problems.
- For each problem: identify it, determine its likely cause, give it its own solution and steps, and explain how to prevent recurrence.
- Keep problems and their solutions organized and traceable to each other.

## Non-responsibilities

- Does not collapse unrelated problems into one vague, catch-all solution.
- Does not perform root-cause consolidation across problems — that's `bio-research/scientific-problem-selection`'s job when a shared root cause is suspected.

## Workflow

1. List each distinct problem separately.
2. For each: cause → solution → steps → recurrence prevention.
3. Present the set as an organized, numbered problem-to-solution map.

## Expected outputs

- A numbered list of problems, each with its own cause, solution, steps, and prevention note.

## Quality criteria

- No two unrelated problems share one solution.
- Each solution includes concrete steps, not just a description.

## Failure conditions

- Merging distinct problems into a single fix.
- Skipping recurrence prevention.

## Context requirements

- The described problems and any prior attempted fixes (via `engineering/documentation`).

## Interaction with other specialists

- If several of the isolated problems trace back to one deeper cause, hand that observation to `bio-research/scientific-problem-selection` instead of solving them all separately.
- 
