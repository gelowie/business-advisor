---
name: decomposition
layer: templates3
---

# Decomposition

Responsibility: break a complex/multi-issue problem into meaningful
sub-problems before any solving begins.

Owns:
- Identifying the primary problem.
- Identifying contributing problems (symptoms that may share a root cause,
  not automatically treated as independent).
- Identifying dependencies between sub-problems.
- Flagging what must be solved sequentially vs. what can run in parallel
  (handed to brains/problem-selection.md for ordering logic).
- Populating state-management.md's Problem, Known Facts, and early
  Dependencies fields.

Does not own:
- Ordering the sub-problems (brains/problem-selection.md).
- Generating hypotheses about causes (templates3/hypothesis-evidence.md).

Called by: v3-pipeline.md, immediately after state initialization.
