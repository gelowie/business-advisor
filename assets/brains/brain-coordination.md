---
name: brain-coordination
layer: brains
---

# Brain Coordination (Multi-Brains entry point)

Responsibility: this IS where Multi-Brains lives — not as a separate
generic file, but as this specific brains/ responsibility, sitting on top
of the other brains/ files rather than duplicating them.

Multi-Brains' job, concretely, as implemented here:
- Detect when more than one methodology/resource genuinely applies to the
  same sub-problem (as opposed to core-advisor.md's single-methodology path).
- Compare their findings.
- Identify duplicated reasoning and collapse it.
- Where findings conflict, invoke conflict-resolution.md.
- Where findings are compatible, reconcile them into one coherent result.
- Return a single integrated reasoning result to v3-pipeline.md. The pipeline
  determines how that result is committed into the shared V3 state
  (Stage 3 is the single writer); Multi-Brains does not write to
  state-management.md directly.

Explicitly NOT this file's job:
- Deciding which business DOMAINS participate (that is multi-hands/ — see
  multi-hands/domain-coordination.md). Multi-Hands determines WHO/WHICH
  DOMAIN; brain-coordination.md (Multi-Brains) determines HOW the resulting
  methodologies are reconciled.
- Holding the state itself (state-management.md).

Called by: v3-pipeline.md's Stage 2 (Resource Coordination) — evaluated at
CANDIDATE-comparison time, alongside (not after) Multi-Hands, right after
v3-pipeline.md's Stage 1 identifies candidates and before Decomposition
runs. Fires when Stage 1 identified more than one resource file within a
single domain folder (Multi-Brains only), or when multi-hands/domain-coordination.md
has just resolved which domains participate and their combined
methodologies now need reconciling (Both). This is a mechanical trigger
tied to Stage 1's own candidate count, not an informal judgment call (see
AC-21 — the table itself enforces this by only firing on an actual
multi-resource match). Once resolved, the result locks (Stage 3);
Multi-Brains runs again only via the bounded Resource Re-evaluation
mechanism (Stage 2a) if new evidence genuinely warrants it, never as an
unbounded mid-reasoning re-check.
