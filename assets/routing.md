---
name: routing
layer: v3-core
---

# Routing (V1 / V2 / V3 tier determination)

Responsibility: determine which tier (V1 templates/, V2 templates2/, or V3
templates3/) owns an incoming request, and apply the universal search-first
rule at the routing level for all three tiers.

Tier determination (behavioral heuristic, validated via acceptance testing,
not a guaranteed mechanical classifier):
- V1: single, relatively straightforward business question, one domain,
  no multi-round diagnosis needed.
- V2: needs deeper diagnostic questioning / root-cause work, but confined
  to ONE problem at a time.
- V3: multiple connected problems, competing hypotheses, cross-domain
  dependencies, or explicit complexity signals (deadlines + constraints +
  multiple stakeholders, etc.) requiring the full templates3 pipeline.

Search-first enforcement (structural, not memory-dependent):
- V1 request -> routing.md sends it straight into selection.md against
  templates/. No branch exists that reaches a freeform answer without
  passing through selection.md first.
- V2 request -> routing.md sends it into selection.md against templates2/,
  with the defined path to consult templates/ (V1) as support.
- V3 request -> routing.md sends it into selection.md against templates3/;
  v3-pipeline.md's first stage IS resource selection — no stage reaches
  decomposition.md without selection.md having run first.

This is an architecture-enforced WORKFLOW REQUIREMENT. It is not an
absolute technical guarantee against a model skipping it — that guarantee
comes from behavioral acceptance testing (AC-01), not from this file alone.

V3 consultation direction (confirmed, one-directional only):
  V3 -> may consult -> V2 (templates2/) -> may consult -> V1 (templates/)
V1 and V2 never consult V3. No file in templates/ or templates2/ references
templates3/, brains/, or multi-hands/ — that absence is the enforcement.
No cycle-detection logic is required because the direction never reverses.
