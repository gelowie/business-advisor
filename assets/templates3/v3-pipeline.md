---
name: v3-pipeline
layer: templates3
---

# V3 Pipeline (Orchestration Only)

Responsibility: sequencing and transition rules ONLY. Contains no reasoning
logic, no methodology, no domain content — every actual rule lives in the
module it belongs to. This file decides what stage runs next, what must
exist before advancing, when Multi-Hands/Multi-Brains/core-advisor are
invoked, and when escalation is triggered. It does not decide HOW any of
those stages reason.

## Per-sub-problem routing decision (Fix 4 + Fix 3: concrete, not judgment-based)

After Decomposition + Resource Selection have run for a given sub-problem,
route using this table — do not skip it or substitute informal judgment:

| Resources selected for this sub-problem | Domain folder(s) involved (per selection.md's own matching) | Route to |
|---|---|---|
| Exactly one resource file | One domain | `brains/core-advisor.md` (direct, single-methodology path) |
| More than one resource file (selection.md's multi-file / multi-folder-within-one-domain / cross-version combination) | One domain | `brains/brain-coordination.md` (Multi-Brains only) |
| One resource file each, but the files come from different domain folders | 2+ domains | `multi-hands/domain-coordination.md` (Multi-Hands only) — each domain's single resource then runs through core-advisor.md individually |
| Multiple resource files needed AND they span different domain folders | 2+ domains | `multi-hands/domain-coordination.md` first (selects domains + their resources), THEN `brains/brain-coordination.md` reconciles any resulting cross-methodology conflicts (Both) |

This table is mechanical: it is driven by what selection.md already returned
(how many resource files, which domain folders they live under), not by a
fresh judgment call about "how complex does this feel." A problem with
several sub-problems runs this table once per sub-problem — Multi-Hands may
end up invoked for the overall case even if one individual sub-problem
alone would have gone straight to core-advisor.md.

## Quality-control checkpoints (Fix 5, option A: strategic, not exhaustive)

To avoid repeated processing at every single stage, `brains/quality-control.md`
is explicitly invoked at exactly three checkpoints, each cheap and specific:

1. **After Decomposition** — did it produce at least one sub-problem, and is
   each sub-problem distinct (not a duplicate of another)?
2. **After Hypotheses + Evidence** — does every hypothesis carry an explicit
   status tag (confirmed / user-stated / inferred / assumed / unresolved) —
   none silently untagged?
3. **After Action Sequencing, before Verification** — does every action have
   a defined prerequisite check (nothing sequenced ahead of an unresolved
   dependency)?

These are spot checks only — a fail here sends control back to the
originating stage, it does not replace `final-consistency-check.md`'s
comprehensive end-of-pipeline gate, which still runs unconditionally at the
end regardless of whether these three checkpoints passed clean.

## Reasoning-rules and context-management as active consultations (Fix 2)

`brains/reasoning-rules.md` is not a passive reference — it is actively
consulted (not copied) at these specific points, each of which now names it
explicitly in its own file:
- `hypothesis-evidence.md` — every time a hypothesis is tagged, per the
  categorical-states-only rule.
- `brains/decision-making.md` — every time a decision is finalized, per the
  no-decision-before-evidence rule.
- `verification-loop.md` — every time verification status is recorded, per
  the no-false-execution-claims rule.
- `final-consistency-check.md` — as one of its checklist items, per the
  no-unsupported-certainty rule.

`brains/context-management.md` is actively consulted at these points:
- `brains/problem-selection.md` — before handing off each sequenced
  sub-problem, to filter the full state down to what that sub-problem
  actually needs.
- `multi-hands/domain-coordination.md` — before each domain specialist
  resource runs, so it receives only its relevant slice of state, not the
  entire record.

## Full conceptual sequence

  Routing (routing.md)
    -> Resource Selection (selection.md): check templates3 first,
       then templates2 as support, then templates as support
    -> State Initialization (brains/state-management.md)
    -> Decomposition (decomposition.md)
       -> quality-control.md checkpoint 1
    -> Problem Selection / sequencing (brains/problem-selection.md)
       -> context-management.md filters state per sub-problem
    -> [Brainstorm (brains/brainstorm.md) — only if no obvious explanation]
    -> Hypotheses + Evidence (hypothesis-evidence.md)
       -> reasoning-rules.md consulted for evidence tagging
       -> quality-control.md checkpoint 2
    -> Investigation Planning (investigation-planning.md)
    -> Dependencies + Constraints (dependency-impact.md, base-layer.md)
    -> Per-sub-problem routing decision (table above):
         core-advisor.md, OR brain-coordination.md, OR
         domain-coordination.md, OR domain-coordination.md then
         brain-coordination.md
    -> Trade-off / Solution Comparison (tradeoff-comparison.md)
    -> Decision (brains/decision-making.md)
       -> reasoning-rules.md consulted before finalizing
    -> Action Sequencing (action-sequencing.md)
       -> quality-control.md checkpoint 3
    -> Verification (verification-loop.md)
       -> reasoning-rules.md consulted when recording status
    -> [Reassessment loop back to the flagged earlier stage, if verification
         fails]
    -> [Contingency (contingency-planning.md) / Escalation
         (escalation-conditions.md) — only when triggered]
    -> Final Consistency Check (final-consistency-check.md) — MANDATORY,
       never skipped, checks reasoning-rules.md compliance as one item
    -> Final answer

Owns:
- The stage order, the per-sub-problem routing table, and the three
  quality-control checkpoints above.
- Deciding whether a given stage is needed for THIS problem's actual
  complexity (per AC-21) — now constrained by the routing table rather than
  open judgment.

Does not own:
- Any reasoning content — every stage's actual logic lives in that stage's
  own file, referenced here, never duplicated here.
