---
name: escalation-conditions
layer: templates3
---

# Escalation Conditions

Responsibility: mid-process "the current evidence/process is insufficient to
responsibly continue" mechanism. Structurally distinct from selection.md's
fallback (which handles "no precise internal RESOURCE matches this request,"
a pre-answer resource-lookup problem, not an in-flight reasoning problem).

Owns:
- Identifying: what is missing -> why it matters -> how to obtain it ->
  what decision depends on it.
- Deciding whether to pause and ask the user, or (per the confirmed
  downward-only consultation rule) drop to templates2/templates for
  supporting resources.

Does not own:
- Re-running the initial resource search (selection.md already succeeded;
  this file assumes that and addresses a different failure mode).
- Verification-loop.md's reassessment logic (that activates after a
  completed action's verification fails; this file activates when the
  process cannot even reach a defensible action yet).

Called from: any templates3/ or brains/ module, as a side-channel — not a
fixed stage in the main pipeline sequence. Reports back to v3-pipeline.md.
