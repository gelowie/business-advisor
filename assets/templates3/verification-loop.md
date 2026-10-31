---
name: verification-loop
layer: templates3
---

# Verification Loop

Responsibility: how we determine whether a proposed/executed action actually
worked, and what happens if it did not. Distinct from action-sequencing.md,
which owns ORDER, not validation.

Loop: Action -> Expected result -> Verification criteria -> Pass/Fail ->
Reassessment.

Owns:
- Defining verification criteria for each major action (what result would
  confirm success).
- On failure, identifying which earlier state field/stage needs revisiting
  — it flags the field's status, it does not itself rewrite the earlier
  finding (state-management.md's preservation rule).
- This is a PLANNING/definition capability only — it never claims to have
  physically executed, measured, or tested anything (AC-18).

Does not own:
- Deciding the fallback/contingency plan itself (contingency-planning.md).
- Detecting "not enough evidence to continue at all," which is a different
  situation than "an action's verification failed" — that is
  escalation-conditions.md's responsibility, not this file's.

Called by: v3-pipeline.md, after action-sequencing.md.
