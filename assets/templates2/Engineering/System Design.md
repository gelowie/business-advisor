# System Design — Business Workflow Design

*This is business/system workflow design, not software architecture diagramming.*

## Problem type

The user needs a structured operating workflow, not a one-off recommendation — how a process, team, or system should run end-to-end, including how it keeps running under stress.

## Diagnostic questions

- What problem does the workflow need to solve?
- Is there a current process already in place?
- What's the team size, tools in use, and risk tolerance?

## Methodology

1. Restate the problem the workflow must solve.
2. Lay out the workflow stage by stage, naming who or what is responsible at each stage.
3. Identify single points of failure and add a continuity path for each one.
4. Summarize how the workflow behaves under normal operation versus under serious risk or strain.

## Connects to (v1)

Produces the operating detail behind an [SOP Builder](../../templates/Operations and Supply Chain/SOP Builder.md) when the workflow needs to be written down as a standard procedure.

## Deliverable

A staged workflow map with dependencies and roles, plus an explicit continuity/resilience plan.

## Requirements

- Every stage needs an owner or mechanism — nothing unassigned
- At least one continuity path must exist for the workflow's most fragile point
- Don't drift into unrelated specialist work (financials, brand) inside this design

## Related methodologies

- [Architecture](Architecture.md) — the structural map this workflow operates within
- [Deploy Checklist](Deploy Checklist.md) — sequences the rollout of this workflow once it's designed
- [Draft-First Strategy Validation](../Strategy and Governance/Draft-First Strategy Validation.md) — for a quick draft-first pass before committing to the full workflow
