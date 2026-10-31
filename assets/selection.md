---
name: selection
layer: v3-core
---

# Resource Selection

Responsibility: given a tier (already determined by routing.md), select the
specific resource file(s) within that tier. Owns INITIAL resource lookup
only — never mid-process diagnostic escalation (that is
templates3/escalation-conditions.md, a structurally separate mechanism).

Hierarchy (unchanged across all tiers):
  exact match -> related match -> multi-file combination ->
  multi-folder combination -> cross-version combination -> no-match fallback

V3-specific selection order (per routing.md's consultation direction):
  1. Check templates3/ first for a complex-problem methodology/resource.
  2. If templates3/ alone is insufficient, consult templates2/ as
     supporting methodology.
  3. If still insufficient, consult templates/ as supporting/basic
     methodology.
  4. Combine via brains/brain-coordination.md (Multi-Brains) if the
     combination produces more than one methodology needing reconciliation.

No-match fallback: if no precise resource exists at any consulted tier,
V3 follows the established downward consultation model rather than
switching to generic ungrounded reasoning (AC-20).

Does not own:
- Deciding V1 vs V2 vs V3 (routing.md).
- Handling an in-flight "evidence is insufficient to continue"
  situation once a resource has already been selected and work has begun
  (templates3/escalation-conditions.md).
