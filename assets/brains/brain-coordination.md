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

Called by: v3-pipeline.md's per-sub-problem routing table — specifically,
any sub-problem where selection.md matched more than one resource file
within a single domain folder (Multi-Brains only), or where
multi-hands/domain-coordination.md has already resolved which domains
participate and their combined methodologies now need reconciling (Both).
This is now a mechanical trigger tied to selection.md's own match count,
not an informal judgment call (see AC-21, no unnecessary complexity — the
table itself enforces this by only firing on an actual multi-resource
match).
