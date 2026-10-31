---
name: decision-making
layer: brains
---

# Decision-Making

Responsibility: the rules for how a decision gets finalized once
tradeoff-comparison.md has laid out the options, evidence, and constraints.
This file owns the actual "which option do we commit to, and on what basis"
step — separate from comparing the options (that step must not auto-select
a winner; see templates3/tradeoff-comparison.md).

Owns:
- The criteria for when a decision may be finalized (sufficient evidence +
  constraints checked + no unresolved blocking hypothesis).
- The criteria for when a decision must instead be deferred and sent to
  escalation-conditions.md.

Does not own:
- Generating the options (tradeoff-comparison.md).
- Sequencing the resulting actions (action-sequencing.md).

Called by: v3-pipeline.md, after tradeoff-comparison.md and before
action-sequencing.md.
