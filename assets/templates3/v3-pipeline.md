---
name: v3-pipeline
layer: templates3
---

# V3 Pipeline (Orchestration Only)

Responsibility: sequencing and transition rules ONLY. Contains no reasoning
logic, no methodology, no domain content — every actual rule lives in the
module it belongs to. This file decides what stage runs next, what must
exist before advancing, when Multi-Hands/Multi-Brains are invoked, and when
escalation is triggered. It does not decide HOW any of those stages reason.

Conceptual sequence (not every problem executes every stage — see AC-21,
no unnecessary complexity for simple V3 problems):

  Routing (routing.md)
    -> Resource Selection (selection.md): check templates3 first,
       then templates2 as support, then templates as support
    -> State Initialization (brains/state-management.md)
    -> Decomposition (decomposition.md)
    -> Problem Selection / sequencing (brains/problem-selection.md)
    -> [Brainstorm (brains/brainstorm.md) — only if no obvious explanation]
    -> Hypotheses + Evidence (hypothesis-evidence.md)
    -> Investigation Planning (investigation-planning.md)
    -> Dependencies + Constraints (dependency-impact.md, base-layer.md)
    -> [Multi-Hands (multi-hands/domain-coordination.md) — only if
         multi-domain]
    -> [Multi-Brains (brains/brain-coordination.md) — only if multiple
         methodologies genuinely conflict/overlap]
    -> Trade-off / Solution Comparison (tradeoff-comparison.md)
    -> Decision (brains/decision-making.md)
    -> Action Sequencing (action-sequencing.md)
    -> Verification (verification-loop.md)
    -> [Reassessment loop back to the flagged earlier stage, if verification
         fails]
    -> [Contingency (contingency-planning.md) / Escalation
         (escalation-conditions.md) — only when triggered]
    -> Final Consistency Check (final-consistency-check.md) — MANDATORY,
       never skipped
    -> Final answer

Owns:
- The stage order and gating conditions above.
- Deciding whether a given stage is needed for THIS problem's actual
  complexity (per AC-21).

Does not own:
- Any reasoning content — every stage's actual logic lives in that stage's
  own file, referenced here, never duplicated here.
