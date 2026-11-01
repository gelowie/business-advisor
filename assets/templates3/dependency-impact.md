---
name: dependency-impact
layer: templates3
---

# Dependency + Impact Analysis

Responsibility: map relationships between components, decisions, systems,
resources, or stakeholders, and what a proposed change could affect.

Owns:
- Change -> affected systems/resources -> consequences -> mitigation chains.
- Extending state-management.md's Dependencies field beyond what
  decomposition.md identified up front (dependencies often only become
  visible once hypotheses/investigation are underway).
- Feeding identified consequences forward into tradeoff-comparison.md.

Does not own:
- Time/budget/personnel/infrastructure constraint rules themselves
  (base-layer.md owns the constraint rules; this file identifies
  relationship-driven impacts, which may in turn become constraints).

Called by: v3-pipeline.md, after investigation-planning.md.
