---
name: v3-pipeline
layer: templates3
---

# V3 Pipeline (Orchestration Only)

Responsibility: sequencing, transition rules, and coordination points ONLY.
Contains no reasoning logic, no methodology, no domain content — every
actual rule lives in the module it belongs to. This file decides what stage
runs next, what must exist before advancing, when Multi-Hands/Multi-Brains/
core-advisor are invoked, when the resource set locks, when a bounded
re-evaluation is warranted, and when escalation is triggered. It does not
decide HOW any of those stages reason.

## Core principle: coordinated, problem-driven resource selection

V3 does not match a keyword to a template and stop there. The components
below inform ONE final resource decision together — they do not vote
independently, and they do not each get to act on the full state
unsupervised. Each keeps its own single responsibility (per
`assets/routing.md`/`assets/selection.md`/the individual module files);
what changes here is WHEN Multi-Hands and Multi-Brains participate: at
candidate-comparison time, not only as an after-the-fact reaction once
Decomposition has already run.

## Stage 0 — Problem Understanding (precedes Routing)

Before Routing/Selection commit to a tier or a resource, form a plain-
language read of what the user is actually trying to solve — not which
words they used. This is the same judgment `routing.md` already applies to
pick v1/v2/v3; the only change is that its output (the likely domain(s) and
complexity signal, not just the tier decision) now explicitly carries
forward into Stage 2 below, instead of being discarded once the tier is
picked.

## Stage 1 — Routing + Selection (unchanged files, same rules)

`routing.md` picks the tier. `selection.md` identifies CANDIDATE resources
across `templates3` (primary), `templates2` and `templates` (supporting) —
per its existing hierarchy. At this point selection has produced a
candidate list, not yet a locked final set.

## Stage 2 — Resource Coordination (NEW — this is what was missing)

This stage sits between Selection and Decomposition. It answers: *given
these candidates, what is the actual resource set, and does solving this
problem genuinely require multiple domains and/or multiple methodologies?*

- `multi-hands/domain-coordination.md` evaluates the candidate list's
  domain folders (per Stage 0's initial domain read plus selection.md's
  actual candidates) and decides whether more than one domain is genuinely
  required — not merely "a related keyword appeared." If one domain
  suffices, Multi-Hands does not activate for this problem at all.
- `brains/brain-coordination.md` (Multi-Brains) evaluates whether the
  candidates — within a domain, or across the domains Multi-Hands has just
  identified — need methodological reconciliation, following overlap,
  conflict, and dependency, per its own file.
- The mechanical trigger table introduced in the prior fix still applies
  exactly as before — it now runs HERE, at candidate-comparison time,
  rather than after Decomposition:

| Candidates identified | Domain folder(s) | Route to |
|---|---|---|
| Exactly one resource | One domain | `brains/core-advisor.md` |
| More than one resource, same domain | One domain | `brains/brain-coordination.md` only |
| One resource each, different domains | 2+ domains | `multi-hands/domain-coordination.md` only |
| Multiple resources, spanning domains | 2+ domains | `multi-hands/domain-coordination.md` first, then `brains/brain-coordination.md` |

Output of this stage: **primary resource(s) + supporting resource(s) +
required specialist perspectives + required reasoning approach.**

## Stage 3 — Lock

Once Stage 2 produces a resource set, it is written to
`brains/state-management.md`'s Domains/Methodologies fields and treated as
settled. Decomposition, Hypotheses/Evidence, Investigation, and the rest of
the reasoning pipeline proceed using this locked set. The pipeline does not
silently swap or add resources mid-analysis just because a later stage
happens to mention an adjacent topic — see Stage 2a below for the only
sanctioned way the set changes.

## Stage 2a — Resource Re-evaluation (bounded, NEW — distinct from escalation)

If `dependency-impact.md` or `investigation-planning.md` surfaces genuine
evidence that the locked resource set is insufficient (e.g. investigation
reveals a cost dimension no one identified at Stage 2), the pipeline may
return to Stage 2 ONLY — not restart Decomposition, Hypotheses, or anything
already established. Rules:

- Only the resource set (Domains/Methodologies fields) is re-opened.
  Known Facts, Hypotheses, Evidence, Decisions already recorded are
  preserved untouched, per `state-management.md`'s preservation rule.
- Stage 2 re-runs with the new information folded into the candidate
  comparison; Multi-Hands/Multi-Brains re-evaluate only what changed.
- The updated resource set re-locks (Stage 3) before reasoning resumes.
- This is explicitly NOT `templates3/escalation-conditions.md` — escalation
  is for "the process cannot responsibly continue at all." Re-evaluation is
  for "the process continues, but the resource set needs updating." The two
  never share a trigger or a mechanism.
- This is bounded specifically to prevent the continuous-restart pattern —
  it can revisit Stage 2, never the whole pipeline.

## Stage 4 onward — Decomposition through Final Consistency (as before)

  Decomposition (decomposition.md)
    -> quality-control.md checkpoint 1
    -> Problem Selection / sequencing (brains/problem-selection.md)
       -> context-management.md filters state per sub-problem
    -> [Brainstorm (brains/brainstorm.md) — only if no obvious explanation]
    -> Hypotheses + Evidence (hypothesis-evidence.md)
       -> reasoning-rules.md consulted for evidence tagging
       -> quality-control.md checkpoint 2
    -> Investigation Planning (investigation-planning.md)
    -> Dependencies + Constraints (dependency-impact.md, base-layer.md)
       -> [may trigger Stage 2a Resource Re-evaluation]
    -> Trade-off / Solution Comparison (tradeoff-comparison.md)
    -> Decision (brains/decision-making.md)
       -> reasoning-rules.md consulted before finalizing
    -> Action Sequencing (action-sequencing.md)
       -> quality-control.md checkpoint 3
    -> Verification (verification-loop.md)
       -> reasoning-rules.md consulted when recording status
    -> [Reassessment loop back to the flagged earlier stage, if verification
         fails — this is a different mechanism from Stage 2a: reassessment
         revisits a REASONING stage because an action failed; Stage 2a
         revisits RESOURCE SELECTION because the resource set itself was
         wrong. Never conflate the two.]
    -> [Contingency (contingency-planning.md) / Escalation
         (escalation-conditions.md) — only when triggered]
    -> Final Consistency Check (final-consistency-check.md) — MANDATORY,
       never skipped

## Output principle: one coherent answer, always

Internally, multiple resources, domains, and reasoning approaches may all
participate. The user never receives a "Domain A says X, Domain B says Y"
list, and never sees the internal machinery narrated. This extends
`selection.md`'s existing "One problem, one answer" rule (already
established for v1/v2) into V3's larger resource ecosystem — same
principle, more moving parts feeding it. `final-consistency-check.md`
verifies this directly before release.

Owns:
- The stage order, the coordination point (Stage 2), the lock (Stage 3),
  the bounded re-evaluation mechanism (Stage 2a), and the quality-control
  checkpoints.
- Deciding whether a given stage is needed for THIS problem's actual
  complexity (per AC-21) — constrained by the Stage 2 routing table, not
  open judgment.

Does not own:
- Any reasoning content — every stage's actual logic lives in that stage's
  own file, referenced here, never duplicated here.
