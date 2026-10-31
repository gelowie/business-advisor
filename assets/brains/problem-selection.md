---
name: problem-selection
layer: brains
---

# Problem Selection

Responsibility: when decomposition.md has produced multiple sub-problems,
this file owns the rule for which sub-problem gets worked first, which can
run in parallel, and which are blocked pending another's resolution.

This is distinct from decomposition.md itself: decomposition identifies
*what the sub-problems are*; problem-selection decides *the order/parallelism
of working them*.

Owns:
- Sequencing logic for sub-problems identified by decomposition.md.
- Flagging genuinely parallelizable sub-problems to v3-pipeline.md.

Does not own:
- Identifying the sub-problems themselves (templates3/decomposition.md).
- Sequencing the final ACTIONS of the solution (templates3/action-sequencing.md
  — that is post-decision, this is pre-investigation).

Called by: v3-pipeline.md, immediately after decomposition.md.
