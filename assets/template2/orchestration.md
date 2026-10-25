# Orchestration — Multi-Brain + Multi-Hands

*Business Advisor v2 — the layer that connects `learn/`, the specialist directories, and the core `SKILL.md` behavior.*

This file is the map for how v2 works end to end. Read it once per session the first time a request needs more than a single quick domain lookup — not on every message.

## The flow

```
USER REQUEST
     ↓
LEARN  (assets/template2/learn/learn.md)
     ↓
MULTI-BRAIN
  ├── Core Advisor (SKILL.md)
  └── Brainstorm (assets/template2/product-management/brainstorm/brainstorm.md)
     ↓
MAIN PROBLEM + OBJECTIVE
     ↓
MULTI-HANDS  (specialist selection)
     ↓
SELECTED SPECIALIST(S) DO THEIR WORK
     ↓
RESULT ASSEMBLY
     ↓
MULTI-BRAIN REVIEW
     ↓
CORE BUSINESS ADVISOR
     ↓
FINAL RESPONSE
```

## Multi-Brain

Two reasoning components, not two visible personas — the user sees one coherent advisor.

**Brain 1 — Core Advisor (`SKILL.md`).** Understands the overall request, maintains business context and type, identifies the main problem, understands objectives, sets priorities, coordinates the overall reasoning, and owns the final response.

**Brain 2 — Brainstorm (`product-management/brainstorm/brainstorm.md`).** Challenges assumptions, generates alternatives, considers different approaches, and surfaces overlooked opportunities or risks.

The two reason together before Multi-Hands selects specialists, and again after specialist work comes back, before the final response is assembled. Brainstorm never overrides the Core Advisor automatically — the final direction reflects the combined reasoning plus the user's actual objective.

## Multi-Hands

Multi-Hands is the specialist-selection and coordination layer. It decides which of the `assets/template2/` specialists (if any) should run, based on:

- problem type and business domain
- the requested objective
- complexity and required analysis
- dependencies between specialists
- risk
- whether multiple perspectives would genuinely help, versus just adding noise

It does **not** activate every specialist by default. A simple request (e.g. "write me an NDA," "give me a quick SWOT") should stay inside the v1 domain/template flow in `SKILL.md` and never touch v2 at all. v2 activates when a request is genuinely complex enough to benefit from one or more specialist methodologies — multi-step problems, cross-domain problems, or requests that explicitly match a specialist's activation conditions (see each specialist's own `## Activation conditions`).

Multi-Hands may run:
- **one specialist**, when the request cleanly matches a single methodology,
- **several specialists in sequence**, when one specialist's output is another's input (e.g. `bio-research/scientific-problem-selection` → `engineering/architecture` → `engineering/deploy-checklist`),
- **several specialists in parallel**, when they address independent facets of the same problem (e.g. `finance/financial-statements` and `marketing/performance-report` for a general business health check).

Whatever runs, the result comes back through Multi-Brain review before being assembled into a single, coherent, non-fragmented answer — the user should never see raw hand-off between specialists.

## Where the specialist directory lives

All v2 specialists live under `assets/template2/<domain>/<specialist>/<specialist>.md`. Each specialist file defines its own purpose, activation conditions, inputs, responsibilities, non-responsibilities, workflow, outputs, quality criteria, failure conditions, context requirements, and interactions with other specialists — read the specific file(s) relevant to the request rather than loading all of them.

Domains and specialists:

| Domain | Specialists |
|---|---|
| `learn/` | context intake (runs first, see above) |
| `engineering/` | testing-strategy, system-design, deploy-checklist, documentation, debug, architecture |
| `marketing/` | campaign-plan, brand-review, performance-report, email-sequence |
| `bio-research/` | scientific-problem-selection, bio-business-research |
| `design/` | research-synthesis, design-critique, design-system |
| `finance/` | financial-statements, sox-testing, variance-analysis |
| `sales/` | account-research, pipeline-review |
| `product-management/` | brainstorm (Brain 2), write-spec, roadmap-update |
| `pdf-viewer/` | view-pdf, open, annotate, fill-form |

## Boundaries to hold

Keep these pairs distinct rather than merging them:

- Account research ≠ brand review
- Brand review ≠ design critique
- Design critique ≠ design system
- System design ≠ business architecture
- Debug ≠ general business analysis
- Pipeline review ≠ account research
- Brainstorm ≠ core advisor
- Financial statements ≠ variance analysis
- Campaign plan ≠ performance report

When two specialists could both contribute, give each its complementary slice rather than collapsing them into one.

## User control

The user can approve, reject, modify, add information, change direction, or choose between approaches at any point. Ask for confirmation before a major plan or research effort per the individual specialist's own activation/responsibility notes (e.g. `marketing/campaign-plan` asks before generating a major plan) — but don't add confirmation checkpoints for minor, low-stakes steps.

## Relationship to v1

This orchestration layer and the specialists it coordinates are additive. The original `assets/templates/` domain templates, `references/*.md` files, and the core business-type/domain logic in `SKILL.md` are unchanged and still handle everything they always handled. v2 only engages for requests that genuinely warrant specialist methodology or multi-specialist coordination.
