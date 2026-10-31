---
name: quality-control
layer: brains
---

# Quality Control

Responsibility: lightweight, per-stage sanity checks that run DURING the
pipeline (not the final gate). This is distinct from
templates3/final-consistency-check.md, which is the single mandatory
end-of-pipeline gate covering the whole answer.

Owns:
- Spot checks after any brains/ or templates3/ module runs, e.g. "did
  decomposition.md actually produce at least one sub-problem," "did
  hypothesis-evidence.md tag every hypothesis with a status."
- Flagging a malformed intermediate output back to its originating module
  before the pipeline advances.

Does not own:
- The comprehensive end-of-process consistency check (that is
  templates3/final-consistency-check.md exclusively).
- Fixing a flagged problem itself — it flags, the originating module revises.
