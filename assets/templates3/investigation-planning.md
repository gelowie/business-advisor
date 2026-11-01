---
name: investigation-planning
layer: templates3
---

# Investigation Planning

Responsibility: what we still need to find out, and how — kept structurally
separate from hypothesis-evidence.md (what we currently believe and why).

Owns:
- Identifying what information is missing for each open hypothesis/unknown.
- Determining what question, test, or data-gathering step would resolve it.
- Connecting each planned investigation explicitly to the hypothesis or
  uncertainty it's meant to resolve.
- Defining the expected observation/result for each investigation, and what
  result would support vs. weaken the hypothesis.
- Determining what DECISION is blocked pending that investigation's result.
- Enforcing that a major decision is not made before its required
  investigation is complete (feeds decision-making.md's finalization check
  and AC-06 / the dedicated Investigation Planning acceptance criterion).

Does not own:
- Holding the hypotheses themselves (hypothesis-evidence.md).
- Actually executing a test in the real world — this is a PLANNING
  capability only (feeds AC-18, no false execution claims).

Called by: v3-pipeline.md, immediately after hypothesis-evidence.md,
before dependency-impact.md / constraint checks.
