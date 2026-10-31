---
name: context-management
layer: brains
---

# Context Management

Responsibility: tracks what information is currently active/relevant to the
reasoning happening right now, as distinct from the full persistent problem
state (see state-management.md). Context management is short-term/working
focus; state-management is the full durable record.

Owns:
- Determining what subset of the full problem state is relevant to the
  sub-problem currently being reasoned about, so brains/ files aren't
  re-processing irrelevant state on every step.

Does not own:
- The durable state record itself (state-management.md).
- Deciding domain participation (multi-hands/).

Called by: any brains/ file or templates3/ module, as a lookup, not a stage
in the main pipeline sequence.
