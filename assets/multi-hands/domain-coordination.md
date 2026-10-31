---
name: domain-coordination
layer: multi-hands
---

# Multi-Hands: Domain Coordination

Responsibility: this IS Multi-Hands. Its job is domain/specialist
coordination — determining WHO/WHICH DOMAIN participates in a complex
problem, as distinct from brains/brain-coordination.md (Multi-Brains),
which determines HOW differing methodologies are reconciled once domains
have weighed in.

Owns:
- Recognizing when a problem spans more than one of the 8 business domains
  (Strategy, Finance, Product, Marketing, Sales, Operations, HR, Legal).
- Selecting which domain resource(s) — from templates/, templates2/, or
  templates3/ as appropriate to each domain's own complexity level — should
  analyze their slice of the problem.
- Collecting each domain's findings and integrating them into the shared
  V3 state (via state-management.md's Domains field).
- Identifying DOMAIN-level conflicts (e.g. Finance's recommendation
  undermines an Operations constraint) and handing METHODOLOGICAL conflicts
  (not domain conflicts) to brain-coordination.md.

Does not own:
- Reconciling two different reasoning methodologies within the same domain
  (that is Multi-Brains' job).
- Holding the state itself.

Example flow:
  Multi-Hands identifies Engineering + Finance + Operations are all relevant
  -> each domain's relevant resource (V1/V2/V3-level as fits that domain's
  actual complexity) produces findings -> Multi-Hands integrates findings
  into state -> if two domains' findings use conflicting REASONING approaches
  (not just conflicting facts), that specific conflict is escalated to
  brain-coordination.md.

Called by: v3-pipeline.md, only when decomposition.md or problem-selection.md
flags that a sub-problem is not confined to one domain. Not invoked for
single-domain V3 problems.
