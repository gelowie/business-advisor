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

Actually consulted by (not just referenced in passing):
- brains/problem-selection.md, immediately before handing off each
  sequenced sub-problem, to filter the full state down to what that
  specific sub-problem needs.
- multi-hands/domain-coordination.md, immediately before each domain
  specialist resource runs, so it receives only its relevant state slice
  rather than the full record.
This file does not duplicate brains/state-management.md: state-management
owns the full durable record and who may write to each field;
context-management only reads that record and produces a filtered VIEW for
whichever module is about to run. It never writes to state itself.
