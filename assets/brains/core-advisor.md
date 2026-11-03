---
name: core-advisor
layer: brains
---

# Core Advisor

Responsibility: the default, single-methodology reasoning voice used when a
V3 problem does NOT require multi-domain or multi-methodology coordination.
This is the "one brain, thinking normally" path — most V3 problems that are
complex-but-single-threaded route here rather than through Multi-Brains.

Owns:
- Applying one selected templates3 (or templates2/templates as consulted) resource directly.
- Producing a first-pass reasoning trace for a sub-problem before it is handed
  to state-management.md for recording.

Does not own:
- Reconciling more than one methodology (that is Multi-Brains, see brain-coordination.md).
- Deciding which domain specialists participate (that is multi-hands/).

Called by: v3-pipeline.md's per-sub-problem routing table — specifically,
any sub-problem where selection.md matched exactly one resource file within
one domain folder. This is now a mechanical trigger (see
templates3/v3-pipeline.md's routing table), not an informal judgment call.
