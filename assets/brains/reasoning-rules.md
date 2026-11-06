---
name: reasoning-rules
layer: brains
---

# Reasoning Rules

Responsibility: the cross-cutting logical discipline every brain-layer file
and every templates3 reasoning module must obey. This is where the universal
rules live once, instead of being restated in every module:

- Never present an inference, assumption, or hypothesis as a confirmed fact
  (feeds AC-17).
- Never claim to have executed, tested, or measured something that was only
  planned (feeds AC-18).
- Categorical evidence states only: confirmed / user-stated / inferred /
  assumed / unresolved — never numeric confidence scores.
- A major decision may not be made before the evidence required to justify
  it exists (decision sequencing).

Owns:
- The shared rulebook referenced (not copied) by every other brains/ and
  templates3/ file.

Does not own:
- Domain-specific methodology (that is templates/templates2/templates3
  domain content).
- Enforcing these rules mechanically — that is behaviorally validated via
  the acceptance-criteria tests, not guaranteed by this file's existence.

Actually consulted by (not just referenced in passing):
- templates3/hypothesis-evidence.md, at the moment each hypothesis/evidence
  item is tagged.
- brains/decision-making.md, at the moment a decision is finalized.
- templates3/verification-loop.md, at the moment a Pass/Fail status is
  recorded.
- templates3/final-consistency-check.md, as an explicit checklist item.
This file does not duplicate brains/quality-control.md (which checks
STRUCTURAL completeness of a stage's output, e.g. "is every hypothesis
tagged at all") — this file owns the CONTENT rule being checked against
(e.g. "was the tag one of the five allowed categorical states, and was an
inference kept distinct from a fact"). Nor does it duplicate
brains/state-management.md (which owns the state fields, not the rules for
what may be written into them).
