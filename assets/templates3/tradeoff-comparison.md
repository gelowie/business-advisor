---
name: tradeoff-comparison
layer: templates3
---

# Trade-off + Solution Comparison

Responsibility: compare viable options against real constraints, evidence,
risk, and dependencies — WITHOUT automatically declaring a winner.

Owns:
- Laying out each viable option's advantages, disadvantages, risks,
  resource requirements, dependencies, and consequences.
- Naming explicit trade-offs (cost vs. reliability, speed vs. quality,
  short-term vs. long-term fix, etc.) rather than implying one universally
  correct answer.
- Stating plainly what additional information would change the comparison,
  when current evidence/constraints don't yet justify picking one option.
- Populating state-management.md's Options field.

Does not own:
- Finalizing which option is chosen (brains/decision-making.md owns the
  finalization criteria).
- Sequencing the chosen option into actions (action-sequencing.md).

Called by: v3-pipeline.md, after dependency-impact.md and after
Multi-Hands/Multi-Brains coordination (if invoked).
