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
- Deciding the resource set itself — if this file's findings suggest the
  locked resource set (v3-pipeline.md Stage 3) is genuinely insufficient,
  it flags that back to v3-pipeline.md, which may trigger the bounded
  Resource Re-evaluation (Stage 2a). This file does not re-select resources
  itself.

Called by: v3-pipeline.md, after investigation-planning.md.
