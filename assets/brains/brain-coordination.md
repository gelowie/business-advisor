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
- Return a single integrated reasoning result to v3-pipeline.md / state-management.md.

Explicitly NOT this file's job:
- Deciding which business DOMAINS participate (that is multi-hands/ — see
  multi-hands/domain-coordination.md). Multi-Hands determines WHO/WHICH
  DOMAIN; brain-coordination.md (Multi-Brains) determines HOW the resulting
  methodologies are reconciled.
- Holding the state itself (state-management.md).

Called by: v3-pipeline.md, only when resource-selection or
problem-selection.md has identified that a sub-problem genuinely needs more
than one methodology. Not invoked for every problem (see AC-21, no
unnecessary complexity).
