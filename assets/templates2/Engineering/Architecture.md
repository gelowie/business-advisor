# Architecture — Business Architecture

*This is business architecture — mapping how a business problem is structured and solved — not building/software architecture drawing.*

## Problem type

A problem needs a structural, whole-picture map rather than a single tactical fix — usually because it touches how the business itself is organized to operate, not just one isolated symptom.

## Diagnostic questions

- What is the business problem that needs architecting?
- What resources or tools are actually available or constrained?
- What has already been tried, and what happened?

## Methodology

1. State the problem and its root cause plainly (draw on [Scientific Problem Selection](../Bio-Research/Scientific Problem Selection.md) if root-cause work has already happened).
2. Map how the problem can be fixed and what resources/tools that fix requires.
3. Define how the solution should operate going forward — not just the one-time fix.
4. Define specifically what prevents the same problem recurring.
5. Tie every piece back to the stated business objective explicitly — nothing should float unconnected.

## Connects to (v1)

The recurrence-prevention piece often becomes an [SOP Builder](../../templates/Operations and Supply Chain/SOP Builder.md); the whole-picture map can inform a refreshed [SWOT Analysis and Action Plan](../../templates/Strategy and Governance/SWOT Analysis and Action Plan.md) when the architecture reveals a strategic gap.

## Deliverable

A problem → cause → fix → ongoing operation → recurrence prevention map, with every element connected back to the stated business objective.

## Requirements

- Every element must tie back to the stated objective — nothing floats unconnected
- Recurrence prevention must be concrete, not generic
- Stay at the business-structure level — this is not software/technical architecture

## Related methodologies

- [System Design](System Design.md) — the day-to-day workflow that operates within the structure this maps
- [Debug](Debug.md) — isolated fixes that sit below this structural level
- [Scientific Problem Selection](../Bio-Research/Scientific Problem Selection.md) — the root-cause work this often builds on
