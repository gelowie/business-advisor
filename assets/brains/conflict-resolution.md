---
name: conflict-resolution
layer: brains
---

# Conflict Resolution

Responsibility: the mechanism for resolving disagreement between two
reasoning outputs — e.g. two methodologies reaching different conclusions,
or a reused V1/V2 resource's guidance conflicting with a templates3 finding.

This file is the actual conflict-resolution LOGIC. brain-coordination.md is
what INVOKES this logic when Multi-Brains detects a conflict; this file
defines how a conflict, once detected, actually gets resolved or preserved.

Owns:
- Rules for when a conflict is resolvable (sufficient evidence exists to
  prefer one side) vs. must be preserved as an open, unresolved conflict.
- The default tie-break priority ONLY when constraints/evidence don't
  already decide it (e.g. more specific domain resource > more general one),
  used sparingly and always disclosed in the final answer when invoked.

Does not own:
- Detecting that a conflict exists in the first place (brain-coordination.md /
  Multi-Brains does the detection; this file does the resolving).
- Domain selection (multi-hands/).

Called by: brain-coordination.md, whenever Multi-Brains identifies
contradictory outputs from two resources/methodologies.
