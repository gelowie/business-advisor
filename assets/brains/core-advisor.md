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
- Applying one selected methodology/resource from the V3 working resource
  set directly — a domain resource that comes from `templates2/` or
  `templates/`. The V3 process modules (`templates3/`) remain orchestrated by
  v3-pipeline.md, not applied here as domain content.
- Producing a first-pass reasoning trace for a sub-problem.
- Determining the single domain and single methodology in play and
  reporting that determination to v3-pipeline.md's Stage 3, which is the
  actual writer of the Domains/Methodologies fields in
  brains/state-management.md. core-advisor.md does not write state itself —
  it determines the value; Stage 3 commits it, exactly as it does for the
  Multi-Hands/Multi-Brains paths. This is what allows the single-resource/
  single-domain case to populate shared state correctly without invoking
  either coordinator.

Does not own:
- Reconciling more than one methodology (that is Multi-Brains, see brain-coordination.md).
- Deciding which domain specialists participate (that is multi-hands/).

Called by: v3-pipeline.md's per-sub-problem routing table — specifically,
any sub-problem where v3-pipeline.md's Stage 1 identified exactly one
resource file within one domain folder. This is now a mechanical trigger (see
templates3/v3-pipeline.md's routing table), not an informal judgment call.
