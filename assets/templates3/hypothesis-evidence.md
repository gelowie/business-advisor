---
name: hypothesis-evidence
layer: templates3
---

# Hypothesis + Evidence

Responsibility: what we currently BELIEVE and what evidence supports or
contradicts it. (Contrast with investigation-planning.md: what we still
need to FIND OUT and how.)

Owns:
- Maintaining multiple competing hypotheses simultaneously — never
  collapsing to one explanation before evidence justifies it.
- Tagging every piece of evidence with exactly one categorical state:
  confirmed / user-stated / inferred / assumed / unresolved — per
  brains/reasoning-rules.md's categorical-states-only rule, actively
  consulted at this exact step, not just described in principle.
- For each hypothesis: supporting evidence, contradicting evidence, what's
  still unknown (handed to investigation-planning.md).
- Populating state-management.md's Hypotheses and Evidence fields.

Does not own:
- Designing the tests/investigation to resolve an unknown
  (investigation-planning.md).
- Deciding constraints or dependencies (dependency-impact.md, base-layer.md).

Once every live hypothesis is tagged, brains/quality-control.md runs its
checkpoint-2 spot check (no hypothesis left untagged) before the pipeline
advances to investigation planning.

Called by: v3-pipeline.md, after decomposition.md (and after brains/brainstorm.md
if the sub-problem had no obvious explanation).
