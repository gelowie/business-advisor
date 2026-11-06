---
name: quality-control
layer: brains
---

# Quality Control

Responsibility: lightweight, per-stage sanity checks that run DURING the
pipeline (not the final gate). This is distinct from
templates3/final-consistency-check.md, which is the single mandatory
end-of-pipeline gate covering the whole answer.

Owns exactly three checkpoints (not every stage, to avoid repeated
processing — see v3-pipeline.md's "Quality-control checkpoints"):
1. After decomposition.md: at least one sub-problem produced, none duplicated.
2. After hypothesis-evidence.md: every hypothesis carries a status tag.
3. After action-sequencing.md: every action's prerequisite is satisfied or
   already sequenced earlier.
- Flagging a malformed intermediate output back to its originating module
  before the pipeline advances, at exactly these three points.

Does not own:
- The comprehensive end-of-process consistency check (that is
  templates3/final-consistency-check.md exclusively).
- Fixing a flagged problem itself — it flags, the originating module revises.
