# Operating Workflow Design

*Business workflow design — how a process, team or function should run end to end, including under stress. Not software architecture.*

## Problem type

The user needs a structured operating workflow, not a one-off recommendation: how a process, team or system runs from trigger to outcome, and how it keeps running when something fails.

## Diagnostic questions

- What problem must the workflow solve, and what does "working" look like in numbers (speed, error rate, cost per unit)?
- Is there an existing process? Where does it break today?
- Team size, tools in use, and risk tolerance?
- Which step, person or supplier is the single most fragile point?

## Methodology

1. Restate the problem and the target metric.
2. Lay out the workflow stage by stage: trigger, owner, input, output, time allowed, and the check that confirms the stage is done.
3. Identify every single point of failure and give each a continuity path (backup person, backup supplier, manual fallback).
4. Describe behavior under normal load versus under strain (a rush, an absence, a supplier delay).
5. Attach one measurement per stage so the owner can see drift early.

## Connects to (v1)

Produces the operating detail behind an [SOP Builder](../../templates/Operations and Supply Chain/SOP Builder.md) when the workflow must be written down as a standard procedure.

## Deliverable

A staged workflow map with owners, timings and checks, a single-point-of-failure list with continuity paths, and a normal-vs-strained behavior summary.

## Requirements

- Every stage has an owner or mechanism — nothing unassigned
- The most fragile point has at least one continuity path
- Stays in operations; financial and brand questions are handed to their own methods

## Related methodologies

- [Business Architecture](Business Architecture.md) — the structure this workflow operates within
- [Launch Readiness](Launch Readiness.md) — gates the rollout once the workflow is designed
- [Draft-First Strategy Validation](../Strategy and Governance/Draft-First Strategy Validation.md) — a cheap draft pass before committing to the full workflow
