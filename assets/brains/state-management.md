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
- Domains and Methodologies: **committed by v3-pipeline.md's Stage 3 (Lock)
  itself** — Stage 3 is the single writer for both fields, not
  domain-coordination.md or brain-coordination.md directly. What differs is
  who DETERMINES the value Stage 3 commits:
  - Single resource, single domain (the core-advisor.md path): core-advisor.md
    determines the one domain/one methodology in play and reports it to
    Stage 3, which commits it. Multi-Hands and Multi-Brains are never
    invoked on this path, and the field still populates correctly — Stage 3
    does not depend on either coordinator to have run.
  - Multiple resources, one domain: brain-coordination.md (Multi-Brains)
    determines the Methodologies value; Stage 3 commits it. Domains commits
    as the single domain core-advisor-style (no Multi-Hands needed).
  - Multiple domains: domain-coordination.md (Multi-Hands) determines the
    Domains value; Stage 3 commits it.
  - Both: Multi-Hands determines Domains, Multi-Brains determines
    Methodologies (within each domain it coordinates); Stage 3 commits both.
  Once committed, both fields may only be re-opened through Stage 2a
  (bounded Resource Re-evaluation), never edited informally mid-reasoning,
  regardless of which path determined the original value. This keeps a
  single writer (Stage 3) and a single state model — core-advisor.md does
  not get its own state copy, and determination (by core-advisor/
  domain-coordination/brain-coordination) stays separate from commitment
  (always Stage 3).
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
