# Orchestration — Multi-Brain + Multi-Hands

*Business Advisor v3 — the layer that connects `learn/`, the specialist directories, and the core `SKILL.md` behavior.*

> **Version note**: v1 was the original Business Advisor. v2 added this `assets/templates2/` specialist layer. v3 (this version, previously labeled v2.1 during development) is a refinement of that same layer — no files, folders, or filenames changed; it sharpens problem decomposition, evidence handling, risk awareness, and the final-answer standard within the existing architecture. The larger next-generation architecture once planned under the name "v3" (first-class `brains/`, `multi-hands/`, `research/`, `strategy/`, `risk/`, `workflows/`, and a `template3/` layer) is reserved for a future **v4** — see the roadmap note at the bottom. It is not implemented here.

This file is the map for how the specialist layer works end to end. Read it once per session the first time a request needs more than a single quick domain lookup — not on every message.

## The flow

```
USER REQUEST
     ↓
SESSION BOOTSTRAP  (assets/templates2/productivity/start/start.md — only when returning to standing context)
     ↓
LEARN  (assets/templates2/learn/learn.md)
     ↓
UNDERSTAND THE MAIN PROBLEM + DEFINE THE OBJECTIVE
     ↓
MULTI-BRAIN  →  decision layer
  ├── Core Advisor (SKILL.md)
  └── Brainstorm (assets/templates2/product-management/brainstorm/brainstorm.md)
     ↓
PROBLEM DECOMPOSITION
     ↓
MULTI-HANDS  (specialist selection)
     ↓
SPECIALIST RESEARCH / ANALYSIS
     ↓
COMBINE FINDINGS
     ↓
RISK / QUALITY REVIEW
     ↓
MULTI-BRAIN REVIEW
     ↓
CORE BUSINESS ADVISOR
     ↓
FINAL RESPONSE  (checked against the Final Answer Standard below)
```

A simple, single-domain request (an NDA, a quick SWOT, a job description) should never walk this whole flow — it stays inside the v1 domain/template logic in `SKILL.md`. This flow exists for requests genuinely complex enough to need it. Session Bootstrap only runs when the conversation references standing context (a prior engagement, an ongoing initiative, business-specific shorthand) that needs re-establishing — a fresh, self-contained request skips straight to Learn.

## Multi-Brain

Two reasoning components, not two visible personas — the user sees one coherent advisor.

**Brain 1 — Core Advisor (`SKILL.md`).** Understands the overall request, maintains the main business-advisor perspective and business context/type, determines the primary objective, coordinates the overall response, **reviews specialist outputs for alignment**, and ensures the final response actually serves the user's real goal — not just a technically-correct specialist output.

**Brain 2 — Brainstorm (`product-management/brainstorm/brainstorm.md`).** Provides alternative ideas, additional possibilities, challenge points, and perspectives the Core Advisor's framing might have missed. It complements the Core Advisor; it never replaces it.

```
                MULTI-BRAIN
              /             \
      Core Advisor       Brainstorm
              \             /
               \           /
              Decision Layer
                    ↓
               MULTI-HANDS
                    ↓
        Relevant Specialist Skills
```

Multi-Brain reasons together twice: once before Multi-Hands selects specialists (to decide what's actually needed), and again after specialist findings come back (to review them for alignment before the Core Advisor assembles the final response). Brainstorm never overrides the Core Advisor automatically — the final direction reflects the combined reasoning plus the user's actual objective.

## Problem decomposition

Before Multi-Hands selects anything, break a multi-faceted problem into its plausible contributing components — don't let one broad symptom trigger one generic answer.

**Example.** "Our sales are declining" is not one problem. Depending on what Learn surfaced, it could involve: market conditions, customer behavior, product problems, pricing, sales pipeline health, marketing performance, brand positioning, financial constraints, operational problems, competitive pressure, internal process issues, or risk factors. Decomposition means naming which of these are plausibly in play here — not analyzing all of them by default.

Once the plausible components are named, Multi-Hands selects only the specialists whose activation conditions genuinely match those components.

## Multi-Hands

Multi-Hands is the specialist-selection and coordination layer. It decides which of the `assets/templates2/` specialists (if any) should run, based on:

- problem type and business domain
- the requested objective
- complexity and required analysis
- dependencies between specialists
- risk
- whether multiple perspectives would genuinely help, versus just adding noise

It does **not** activate every specialist by default, and it does not activate a specialist just because its domain was mentioned in passing — only when that specialist's own `## Activation conditions` are actually met.

Multi-Hands may run:
- **one specialist**, when the request cleanly matches a single methodology,
- **several specialists in sequence**, when one specialist's output is another's input (e.g. `bio-research/scientific-problem-selection` → `engineering/architecture` → `engineering/deploy-checklist`),
- **several specialists in parallel**, when they address independent facets of the same decomposed problem (e.g. `finance/financial-statements` and `marketing/performance-report` for a general business health check).

Whatever runs, findings come back through Multi-Brain review before assembly into one coherent answer — the user should never see raw hand-off between specialists.

## Evidence and assumption labeling

Keep these distinct while reasoning, and say so in plain language when a recommendation leans on anything other than a confirmed fact:

- **Confirmed fact** — stated directly by the user or drawn from an uploaded document.
- **User-provided information** — given by the user but not independently verified.
- **Research finding** — pulled from external research during this session.
- **Assumption / estimate** — filled in by the advisor because the user didn't specify it.
- **Unknown** — genuinely missing, and material enough that it should be asked about (see `learn/learn.md`) rather than silently assumed.

This doesn't require a formal tagging system in the output — a plain aside ("assuming a 3-person team," "based on the figures you gave me," "this is a working estimate") is enough. The point is that the final response never presents an assumption with the same confidence as a confirmed fact.

## Risk awareness

Risk isn't a separate specialist track — it already lives inside the specialists best positioned to see it:

- `sales/pipeline-review` — risk that emerges *after* a solution or sales approach is developed.
- `engineering/deploy-checklist` — risk that would block or derail execution *before* it starts.
- `engineering/system-design` — continuity/resilience risk in how a workflow holds up under strain.

Before final assembly, ask one question: *is there a risk here that actually matters and isn't already covered by one of those three?* If yes, name it plainly with a concrete, fixable mitigation. If the request doesn't carry meaningful risk, don't manufacture a generic risk list just to look thorough — irrelevant risk sections are noise, not rigor.

## Final answer standard

Before the Core Advisor sends the final response, check silently:

1. Did we understand the actual problem?
2. Did we identify the main objective?
3. Did we ask for important missing information (and only that)?
4. Did we activate only the specialist(s) that genuinely fit?
5. Did we avoid unnecessary specialist activation?
6. Did each specialist's output stay inside its own boundaries?
7. Did we surface risks that actually matter, without inventing generic ones?
8. Did we avoid presenting assumptions as confirmed facts?
9. Did we produce practical, actionable next steps — not just analysis?
10. Does this answer actually solve or advance the user's problem?

If a check fails, fix it before responding — don't note the gap and send it anyway.

## Where the specialist directory lives

All v2 specialists live under `assets/templates2/<domain>/<specialist>/<specialist>.md`. Each specialist file defines its own purpose, activation conditions, inputs, responsibilities, non-responsibilities, workflow, outputs, quality criteria, failure conditions, context requirements, and interactions with other specialists — read the specific file(s) relevant to the request rather than loading all of them.

| Domain | Specialists |
|---|---|
| `learn/` | context intake (runs first, see above) |
| `productivity/` | start (returning-engagement context bootstrapping, runs before Learn when there's standing context) |
| `engineering/` | testing-strategy, system-design, deploy-checklist, documentation, debug, architecture |
| `marketing/` | campaign-plan, brand-review, performance-report, email-sequence |
| `bio-research/` | scientific-problem-selection, bio-business-research |
| `design/` | research-synthesis, design-critique, design-system |
| `finance/` | financial-statements, sox-testing, variance-analysis |
| `sales/` | account-research, pipeline-review |
| `product-management/` | brainstorm (Brain 2), write-spec, roadmap-update |
| `pdf-viewer/` | view-pdf, open, annotate, fill-form, sign |

Where a specialist's underlying named skill (e.g. `/marketing:brand-review`, `/sales:pipeline-review`) has a real methodology beyond what was originally captured, that methodology appears in the specialist's own file under a `## Borrowed methodology (from ...)` heading — additive detail folded into the existing responsibilities and workflow, not a replacement of them.

## Boundaries to hold

Keep these pairs distinct rather than merging them — each specialist file's own `## Non-responsibilities` and `## Interaction with other specialists` sections carry the detail:

- Account research ≠ brand review — account research covers the company/account broadly; brand review is brand-only.
- Brand review ≠ design critique — brand review is positioning/voice/consistency; design critique is the visual/structural design background.
- Design critique ≠ design system — critique diagnoses direction at the background level; design system solves one specific, scoped design problem.
- System design ≠ business architecture — system design is the operating workflow; architecture is the problem→cause→fix→prevention map underneath it.
- Debug ≠ general business analysis — debug isolates and fixes distinct problems individually; it doesn't produce one broad recommendation.
- Pipeline review ≠ account research — pipeline review is post-solution risk; account research is the underlying company research.
- Brainstorm ≠ core advisor — brainstorm challenges and suggests; the Core Advisor decides and owns the final response.
- Financial statements ≠ variance analysis — statements are structure/planning; variance analysis explains why numbers moved.
- Campaign plan ≠ performance report — campaign plan is forward-looking and product/operation-specific; performance report reviews what already happened, broadly.

When two specialists could both contribute, give each its complementary slice rather than collapsing them into one.

## User control

The user can approve, reject, modify, add information, change direction, or choose between approaches at any point. Ask for confirmation before a major plan or research effort per the individual specialist's own activation/responsibility notes (e.g. `marketing/campaign-plan` asks before generating a major plan) — but don't add confirmation checkpoints for minor, low-stakes steps.

## Relationship to v1

This orchestration layer and the specialists it coordinates are additive. The original `assets/templates/` domain templates, `references/*.md` files, and the core business-type/domain logic in `SKILL.md` are unchanged and still handle everything they always handled. This layer only engages for requests that genuinely warrant specialist methodology or multi-specialist coordination.

## Roadmap note (future v4 — not implemented here)

For context only, so a future update doesn't have to rediscover this reasoning: a future **v4** could eventually promote parts of this document into first-class architecture — dedicated `brains/`, `multi-hands/`, `research/`, `strategy/`, `risk/`, and `workflows/` layers under a `template3/` structure, plus formal specialist handoff contracts, structured/queryable documentation, confidence tracking, persistent multi-turn workflow state, and additional domain coverage (legal, HR, operations). None of that is built here — v3 stays inside the existing architecture and improves reasoning quality within it.
