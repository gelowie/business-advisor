# Routing — who owns a request (v1, v2 or v3)

This file decides **ownership**: which layer leads. `selection.md` then decides **which resources** the owner uses. Neither `templates/base-layer.md` nor `templates2/moderate-layer.md` owns this file; both defer to it.

**Lanes:** v1 = templates (basic, document-shaped or one-pass answers). v2 = methodologies (one problem needing diagnosis or deep analysis). v3 = coordination of several interacting problems.

## Rule 0 — Fast lane

A simple factual or definitional question, a quick calculation, or a one-pass recommendation needs no routing. Answer directly after reading **at most one** reference file (or none). Do not narrate routing, load templates, or run the precision gate's full ledger — the gate's input checks still apply if numbers are involved (see `precision-gate.md`).

## Rule 1 — Complexity

- Logical but basic, clear shape → **v1** answers.
- Logical but needs multiple solutions, a root cause, real trade-offs or several rounds of non-obvious questions → **v2** answers, one problem worked through to full depth.

## Rule 2 — Topic coverage can override complexity

If the topic exists on only one side, that side answers regardless of how heavy or light the question feels:
- Only v2 covers it (e.g. SOX Testing, Performance Report, Multi-Problem Diagnosis, Business Architecture) → v2 answers.
- Only v1 covers it (HR and Culture; most of Legal and Compliance; Pricing Strategy Builder alone) → v1 answers, unless real diagnostic depth surfaces, at which point flag it per `templates/base-layer.md` "When this layer isn't enough" rather than forcing a v2 method that doesn't exist.
- Check `references/index.md` too: some domains have reference frameworks even where no template or method matches.

Order of questions: (1) does the topic exist on both sides or one? (2) if both, is it basic or deep?

## The negotiation

1. Request arrives; neither layer assumes ownership.
2. Check topic coverage (`templates/index.md`, `templates2/index.md`, `references/index.md`). One side only → that side takes it.
3. Both sides cover it: v1 asks "is this basic — does a fill-in template exist, or does one pass answer it?" If yes and no hidden depth is suggested, v1 answers.
4. If unsure, check the lookup table; v2 takes it only if the request truly needs root-cause work, several angles or a reasoned trade-off. If it would resolve as a straightforward document, v2 hands it back to v1 rather than manufacture depth.
5. The owner stays the owner; negotiation happens once, up front.
6. If v2 leads, it finishes as a v1 template's shape when one exists.

**Information that travels with the request** (so the user never repeats themselves): their stated objective in their words; numbers, constraints and decisions already established; what has already been used and produced; open questions.

## Lookup table — every connection that exists

| Domain | v1 template(s) | v2 methodology | Who answers |
|---|---|---|---|
| Finance and Fundraising | Cash Flow Forecast | Cash Flow Crisis Diagnosis, Variance Analysis, Working Capital Optimization | v2 for "why" or "how to release cash"; v1 for "project" |
| Finance and Fundraising | Financial Health Check | Balance Sheet Health Diagnosis, Financial Statements and Planning | v1 for a snapshot reading; v2 for diagnosing a weak position or building full statements |
| Finance and Fundraising | Funding Options Comparison | Funding Decision | v1 for a quick comparison; v2 when the decision has real trade-offs |
| Finance and Fundraising | Valuation Sanity Check | Valuation and Exit Readiness | v1 for a rough range; v2 for sale/raise preparation |
| Finance and Fundraising | Pitch Deck Outline | Financial Statements and Planning, Funding Decision, Valuation and Exit Readiness, Research Synthesis | v2 for the numbers, v1 for the deck shape |
| Finance and Fundraising | Pricing Strategy Builder | Profitability and Unit Economics Diagnosis | v1 for setting a price; v2 when the real question is where margin goes |
| Finance and Fundraising | *(none)* | SOX Testing | v2 alone |
| HR and Culture | Job Description Writer, Structured Interview Rubric | *(none)* | v1 alone |
| Legal and Compliance | NDA Builder | *(none)* | v1 alone |
| Legal and Compliance | SOW Builder | Pipeline Review (Sales) | v2 when contract risk is the real question |
| Marketing and Growth | Brand Positioning Statement | Brand Review, Campaign Plan, Email Sequence Design | v2 when diagnosing or planning; v1 when just producing the statement |
| Marketing and Growth | Content Calendar Builder | Campaign Plan, Email Sequence Design | v2 when the calendar needs a strategy first |
| Marketing and Growth | *(none)* | Performance Report, Stalled Growth Diagnosis | v2 alone |
| Operations and Supply Chain | SOP Builder | Operating Workflow Design, Business Architecture | v2 for design, v1 for the written procedure |
| Operations and Supply Chain | Vendor Selection Matrix | Launch Readiness, Working Capital Optimization | v1, with Launch Readiness gating rollout and Working Capital Optimization informing terms |
| Operations and Systems | *(none)* | Multi-Problem Diagnosis, Business Architecture | v2 alone |
| Product Management | MVP Scope Document | Write Spec | v2, then v1 for the scoped document |
| Product Management | Roadmap Prioritization Worksheet | Roadmap Update | v2 for reprioritization reasoning, v1 for the scored worksheet |
| Sales and Business Development | Client Proposal Writer | Account Research, Pipeline Review | v2 first, v1 for the proposal |
| Sales and Business Development | Sales Discovery Call Script | Account Research | v2 feeds context into the v1 script |
| Strategy and Governance | SWOT Analysis and Action Plan | Strategic Drift Diagnosis, Capital Audit | v2 when diagnosing; v1 when just producing the SWOT |
| Strategy and Governance | Competitive Landscape Analysis | Strategic Drift Diagnosis | v1 usually leads; v2 when the shift is the drift cause |
| Strategy and Governance | Executive Summary Builder | Strategic Drift Diagnosis, Performance Report | v2 for findings, v1 for the one-page compression |
| Strategy and Governance | Market Entry Strategy | Draft-First Strategy Validation | v2 for a cheap first pass, v1 for the full document |
| Strategy and Governance | Quarterly Business Review Prep | Performance Report, Balance Sheet Health Diagnosis | v2 feeds the QBR narrative |
| *(cross-cutting)* | *(any, once produced)* | Launch Readiness, Multi-Problem Diagnosis | v2 as a readiness/diagnostic layer |

File and document operations are not in this table; see `../tools/index.md`.

## Decision rule, restated

- **Only v1 covers it** → v1. **Only v2 covers it** → v2.
- **Case C — both cover it, document requested, nothing to diagnose** → v1 alone.
- **Case A — both cover it, v2's method fully answers it, no v1 template adds anything** → v2 alone.
- **Case B — both cover it, diagnosis requested, and a v1 template improves the answer** → v2 leads, v1 supplies structure or the deliverable's shape.
- **A plan is about to be executed** → Launch Readiness runs as a gate.
- **Several interacting problems needing coordination** → v3.

Cases A, B and C are the definitions `selection.md` refers to.

## Rule 3 — v3 (multi-problem coordination)

If a request is genuinely **several interacting problems** (root causes span domains, competing hypotheses need investigation, several methodologies bear on one outcome), it belongs to v3 (`templates3/`). This runs only after v1/v2 negotiation has found a real multi-problem limit (`templates2/moderate-layer.md` "Recognizing a genuine limit"). A deep single problem, however hard, stays v2's job.

v3 consults v2 and v1 downward as supporting resources (see `templates3/v3-pipeline.md`, `templates3/escalation-conditions.md`). Dependency runs one way: v3 → v2 → v1. v1 and v2 may *name* v3 as a handoff destination; they never depend on v3's internal modules, and the methodology files under `templates/` and `templates2/` do not name v3.

## Keeping the table current

Every new template or method gets one row here, or an explicit "no counterpart" note.
