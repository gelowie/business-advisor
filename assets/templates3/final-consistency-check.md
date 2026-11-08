---
name: final-consistency-check
layer: templates3
---

# Final Consistency Check

Responsibility: the single mandatory END-OF-PIPELINE gate. Distinct from
brains/quality-control.md, which runs lightweight spot checks DURING the
pipeline after individual stages.

Checks, against the full state-management.md record:
- Are conclusions supported by evidence?
- Are assumptions clearly identified as assumptions (not stated as fact)?
- Are unresolved issues still marked unresolved (not silently dropped)?
- Does the proposed solution address the actual diagnosed problem?
- Are constraints respected?
- Are dependencies accounted for?
- Is the action sequence logically ordered?
- Are verification criteria defined for major actions?
- Are contingency/escalation conditions defined where warranted?
- Do later conclusions contradict earlier established findings?
- Is the final answer presented as one integrated solution — organized around the user's actual problem — rather than fragmented per-domain, per-brain, or per-methodology sections? (this extends selection.md's "One problem, one answer" rule, checked here as the last gate before release)
- Did an inference get converted into a stated fact anywhere? (checked directly against brains/reasoning-rules.md's no-unsupported-certainty rule, not a separate restatement of it)
- Were relevant internal resources actually used (not bypassed)?
- Where the answer contains figures, valuations, funding or legal/tax statements: did it pass `../precision-gate.md` (inputs verified or labeled, math and statement integrity checked, assumption ledger present, volatile facts verified or marked unverified)?

Owns:
- The go/no-go decision on releasing the final answer.
- On failure, routing back to the SPECIFIC earlier stage that failed a
  check — it does not patch the answer itself or generate new reasoning.

Does not own:
- Generating any new analysis or filling gaps found during the check.

Called by: v3-pipeline.md, as the mandatory last step before any V3 answer
is returned to the user.
