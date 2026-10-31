---
name: action-sequencing
layer: templates3
---

# Action Sequencing

Responsibility: what happens and in what order, once decision-making.md has
finalized a decision. Distinct from verification-loop.md, which owns
whether an action actually worked.

Owns:
- Ordering actions into: Now -> Next -> After verification -> Before
  implementation -> After implementation -> Monitoring.
- Ensuring no action is sequenced before its prerequisite dependency or
  unresolved question is actually resolved.
- Populating state-management.md's Actions field.

Does not own:
- Defining pass/fail criteria for an action (verification-loop.md).
- Re-litigating the decision itself (brains/decision-making.md already
  finalized it).

Called by: v3-pipeline.md, after brains/decision-making.md.
