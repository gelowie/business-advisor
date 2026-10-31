---
name: contingency-planning
layer: templates3
---

# Contingency Planning

Responsibility: what happens if the primary solution doesn't work, and what
conditions trigger a fallback. Reuses V1's existing risk/crisis-management
content in references/strategy-governance.md as its general framework
rather than re-deriving risk methodology from scratch.

Owns:
- Problem-specific fallback triggers and fallback actions (the specific
  decision logic for THIS case).
- Naming remaining risk after the fallback and the conditions under which
  the original plan should be abandoned/reconsidered entirely.

Does not own:
- General risk-management methodology/frameworks — references/strategy-governance.md
  owns that; this file applies it, it does not duplicate it.
- Deciding when a mid-process investigation can't continue at all
  (escalation-conditions.md — a different situation: this file activates
  after a solution has been tried and needs a fallback, escalation activates
  when the process itself is stuck before a solution exists).

Called by: v3-pipeline.md, alongside/after verification-loop.md when a
verification failure or foreseeable major risk warrants a defined fallback.
