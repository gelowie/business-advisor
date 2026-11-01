---
name: state-management
layer: brains
---

# State Management

Responsibility: defines the state MODEL, its fields, update rules,
ownership rules, and preservation rules for a V3 reasoning session. This
file does not "run" as a database — it specifies how the V3 working state
is structured and maintained throughout the pipeline, and which module may
write to which field.

Conceptual state fields (in order they typically populate):
Problem -> Known Facts -> Unknowns -> Hypotheses -> Evidence -> Constraints
-> Dependencies -> Domains -> Methodologies -> Options -> Decisions ->
Actions -> Verification Status -> Unresolved Issues

Ownership rules (who may write which field):
- Problem, Known Facts, early Dependencies: decomposition.md
- Unknowns, Hypotheses, Evidence: templates3/hypothesis-evidence.md
- Investigation results feeding Evidence/Unknowns: templates3/investigation-planning.md
- Constraints: base-layer.md's constraint rules, consulted (not owned) by
  every downstream module
- Domains: multi-hands/
- Methodologies (which reasoning resource is in play): brain-coordination.md
- Options, Decisions: templates3/tradeoff-comparison.md + decision-making.md
- Actions: templates3/action-sequencing.md
- Verification Status: templates3/verification-loop.md
- Unresolved Issues: any module, write-only-append (never silently dropped)

No module may overwrite a field it does not own. A module that finds a
conflict with an existing field value must route through conflict-resolution.md
rather than silently overwriting it.

Preservation rule: verification failures update VERIFICATION STATUS and may
flag an earlier field for revisit, but do not delete or rewrite the earlier
finding — history is preserved, status changes.
