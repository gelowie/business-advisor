# Routing — how `templates` (v1) and `templates2` (v2) negotiate

This is the shared reference for how v1 and v2 talk to each other and decide, together, which one answers a given request — ownership, not resource selection. Once ownership is settled, `selection.md` governs which specific template(s) or file(s) the owning layer actually uses, including how v2 can draw on v1 resources; that decision runs on the same request context this file establishes. Neither `base-layer.md` nor `moderate-layer.md` owns this file — both defer to it for the negotiation itself, and keep their own operating contracts for everything else. They are connected, not merged: each keeps its own files, its own voice, its own job. What they share is this decision, and whatever context needs to travel with it.

**This file is the single source of truth for every v1 ↔ v2 relationship** (the lookup table below). Individual v1 template files intentionally do not name a v2 counterpart, and individual v2 methodology files name only the v1 template(s) they connect to, never the reverse — v1 must stay independently usable with `templates2/` absent entirely, so the cross-version map lives here, not inside v1's own content.

## The one rule this all comes down to

**If the user's problem is logical but basic — a straightforward ask with a clear shape — `templates` (v1) answers it.**

**If the problem is logical but needs to be worked out with multiple solutions and deep analysis — a root cause to find, several methodologies to bring together, real trade-offs to reason through — `templates2` (v2) answers it.**

## The second rule: topic coverage can override complexity

Complexity isn't the only thing that decides this. If the user's **topic** only exists on one side, that side answers it — regardless of how basic or heavy the question feels:

- If a topic isn't covered by any v1 template but v2 has a methodology for it (SOX Testing, Performance Report, the Bio-Research and Design and Engineering domains), v2 answers it even when the actual question is basic. There's nothing to route to on the v1 side, so this isn't a violation of "basic goes to v1" — it's the topic-coverage rule taking priority.
- The same runs in reverse: if v1 has the template and v2 has no methodology for that domain yet (HR and Culture in full, most of Legal and Compliance, Pricing Strategy Builder), v1 answers regardless of how heavy or serious the question sounds — unless working through it actually surfaces real diagnostic depth v1 can't responsibly give, at which point the ordinary complexity rule takes back over and it's flagged per `base-layer.md`'s "When this layer isn't enough" as a case v2 should eventually cover.
- Check `references/index.md` and the lookup table below before assuming a domain has no answer at all — several domains have a reference-file framework even where no template or methodology matches the specific ask.

So the full decision is really two questions, in this order: **(1) does the topic even exist on both sides, or just one?** If just one, that side answers it. **(2) If it exists on both sides, is the problem basic or does it need multiple solutions with deep analysis?** — that's what decides between them.

Everything below is how that combined rule actually gets applied in practice, request by request.

## The negotiation, step by step

Think of this as two capabilities checking with each other before either one commits, not one layer silently deferring to the other:

1. **A request comes in.** Neither layer assumes it owns it yet.
2. **Check topic coverage first**: does a v1 template exist for this topic? Does a v2 methodology? (`templates/index.md`, `templates2/index.md`, `references/index.md`.) If only one side has it, that side takes the request — skip to step 5.
3. **If both sides cover the topic, `templates` asks itself**: *is this basic — does a fill-in template exist, or does one pass of direct reasoning genuinely answer it?* If yes, and nothing about the request suggests hidden depth, v1 takes it and answers. Done.
4. **If v1 isn't sure, it asks `templates2`**: *does this actually need more than one solution or a real diagnosis?* — check the lookup table below for the specific methodology that matches. `templates2` answers honestly: if the request genuinely needs root-cause work, multiple angles, or a trade-off reasoned through, it takes the request; if the request would resolve just as well as a straightforward document, it says so and hands it back to v1 rather than manufacturing depth.
5. **Whichever one takes it stays the one owner** for that request — this negotiation happens once, up front, not repeatedly mid-answer.
6. **If v2 takes it**, it still finishes by producing its answer *as* whatever v1 template already has the right shape for, when one exists (see the lookup table) — v1 isn't cut out of the process even when v2 leads.

## What "basic" actually means here

- A document needs to be produced (a proposal, an NDA, a SWOT, a job description) and its content is knowable from what the user already said or would say in one clarifying pass.
- A comparison, recommendation, or simple plan with no real hidden cause to uncover.
- The user's own question has one clean answer, even if the topic sounds serious.

## What "needs multiple solutions with deep analysis" actually means here

- The surface symptom isn't the real problem — something needs to be diagnosed before it can be answered (why cash is tight, why growth stalled, why a strategy isn't landing).
- More than one methodology or template genuinely needs to work together on the same problem (e.g. a diagnosis that then has to be delivered as a specific v1 document, with the two pieces informing each other).
- There are real trade-offs to reason through, not just information to fill in.
- Several rounds of real, non-obvious clarifying questions are needed to even pin down what's going on.

This is still **one problem**, worked through thoroughly — not several unrelated problems being coordinated at once. That's out of scope for both v1 and v2 today (see `moderate-layer.md`'s "Recognizing a genuine limit").

## What actually gets exchanged

Whichever way the negotiation resolves, the same information travels with the request — this is what "talking to each other" concretely means, not just a routing decision:

- The user's stated objective, in their own words
- Any numbers, constraints, or decisions already established
- Which capability (template or methodology) has already been used, and what it produced
- Open questions that are still genuinely unresolved

A v2 methodology that finishes its diagnosis hands all of this to the v1 template it fills — the template isn't started fresh. A v1 template that turns out to need v2's depth hands over whatever was already gathered — the user is never asked to repeat themselves.

## Lookup table — every connection that exists today

| Domain | v1 template(s) | v2 methodology (if one exists) | Who answers |
|---|---|---|---|
| Finance and Fundraising | Cash Flow Forecast | Cash Flow Crisis Diagnosis, Variance Analysis | v2, when the ask is "why," not "project" |
| Finance and Fundraising | Pitch Deck Outline | Financial Statements and Planning, Research Synthesis (Design) | v2 for the numbers, v1 for the deck shape |
| Finance and Fundraising | Pricing Strategy Builder | *(none directly — Cash Flow Crisis Diagnosis connects here when pricing is the root cause)* | v1, unless a diagnosis points here |
| Finance and Fundraising | *(none)* | SOX Testing | v2 alone — no v1 counterpart |
| HR and Culture | Job Description Writer, Structured Interview Rubric | *(none yet)* | v1 alone |
| Legal and Compliance | NDA Builder | *(none yet)* | v1 alone |
| Legal and Compliance | SOW Builder | Pipeline Review (Sales) | v2 when contract risk is the actual question |
| Marketing and Growth | Brand Positioning Statement | Brand Review, Campaign Plan, Email Sequence Design | v2 when diagnosing/planning, v1 when just producing the statement |
| Marketing and Growth | Content Calendar Builder | Campaign Plan, Email Sequence Design | v2, when the calendar needs a strategy behind it first |
| Marketing and Growth | *(none)* | Performance Report | v2 alone |
| Operations and Supply Chain | SOP Builder | System Design, Architecture (Engineering) | v2 for the workflow design, v1 for the written procedure |
| Operations and Supply Chain | Vendor Selection Matrix | Deploy Checklist (Engineering) | v1, with Deploy Checklist gating execution once selected |
| Product Management | MVP Scope Document | Write Spec | v2, then v1 for the scoped document |
| Product Management | Roadmap Prioritization Worksheet | Roadmap Update | v2 for the reprioritization reasoning, v1 for the scored worksheet |
| Sales and Business Development | Client Proposal Writer | Account Research, Pipeline Review | v2 first (research/risk), v1 for the proposal document |
| Sales and Business Development | Sales Discovery Call Script | Account Research | v2 feeds context into the v1 script |
| Strategy and Governance | SWOT Analysis and Action Plan | Strategic Drift Diagnosis, Scientific Problem Selection (Bio-Research), Bio-Business Research | v2 when diagnosing drift, v1 when just producing the SWOT |
| Strategy and Governance | Competitive Landscape Analysis | Strategic Drift Diagnosis | v1 usually leads; v2 when the landscape shift is the actual drift cause |
| Strategy and Governance | Executive Summary Builder | Strategic Drift Diagnosis, Performance Report (Marketing) | v2 for the findings, v1 for the one-page compression |
| Strategy and Governance | Market Entry Strategy | Draft-First Strategy Validation | v2 for a cheap first pass, v1 for the full document |
| Strategy and Governance | Quarterly Business Review Prep | Performance Report (Marketing) | v2 feeds the QBR narrative |
| *(cross-cutting, no domain)* | *(any, once produced)* | Deploy Checklist, Documentation (Engineering) | v2 as a readiness/tracking layer, not a leader |

File/document operations (PDF, DOCX, spreadsheets, and other formats) are not part of this table at all — they're a separate, orthogonal capability layer. See `../tools/index.md`.

## Decision rule, restated plainly

- **Only v1 covers the topic** → v1 answers, regardless of how heavy the question feels.
- **Only v2 covers the topic** → v2 answers, even if the actual question is basic.
- **Case C — both cover the topic, document requested, nothing to diagnose** → v1 alone.
- **Case A — both cover the topic, v2's own methodology fully answers it and no v1 template adds anything** → v2 alone.
- **Case B — both cover the topic, diagnosis/root cause/trade-off requested, and a v1 template genuinely improves the answer** → v2 leads, using v1 alongside it (as supporting structure mid-diagnosis, as the deliverable's shape, or both) — see `selection.md`'s "V2 using V1 resources" for exactly when B applies versus A.
- **A plan is about to be executed** → Deploy Checklist (Engineering) runs as a gate, regardless of which template produced the plan.
- **Multiple domains genuinely need coordinating together, not just handled in sequence** → neither v1 nor v2 does this; see `moderate-layer.md`'s "Recognizing a genuine limit."

Cases A, B, and C are the same three cases `selection.md` refers to by these letters when deciding whether and how v2 draws on a v1 resource — this is their canonical definition.

## The third rule: when neither v1 nor v2 can own it alone

Everything above negotiates between v1 and v2 for **one problem**, however deep. If a request is actually **several interacting problems that need to be decomposed and coordinated together** — not one problem worked through thoroughly, but genuinely multiple root causes, domains, or decisions that bear on each other — that request belongs to v3 (`templates3/`), not to v1, v2, or a forced combination of the two.

This is a different kind of check than the complexity gate above, and it runs after v1/v2 negotiation has already tried and found a genuine multi-problem limit (per `templates2/moderate-layer.md`'s "Recognizing a genuine limit") — it is not a shortcut around the v1/v2 negotiation for problems that are merely serious-sounding or deep-single-problem. A deep single problem, however hard, stays v2's job.

When v3 takes a request, it consults v1 and v2 downward as supporting resources exactly as v2 consults v1 today — see `templates3/v3-pipeline.md` and `templates3/escalation-conditions.md` for how. This consultation only ever runs one direction: v3 → v2 → v1. Neither v1 nor v2 ever calls into v3 — that is why neither's own files name `templates3/`, `brains/`, or `multi-hands/` anywhere.

## Keeping this table current

Every time a new v1 template or v2 methodology is added, it gets one row here (or an explicit note that it has no counterpart yet, like several rows above) — a template or methodology with no entry in this table is one this negotiation has lost track of.
