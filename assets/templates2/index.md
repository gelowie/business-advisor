# Methodology Index — how V2 connects to itself and to V1

This is the map for v2 (`templates2/`). Read it alongside `moderate-layer.md` when a request needs more depth than a v1 template can give, and see `../routing.md` for the full v1 ↔ v2 exchange — this file lists what exists; `routing.md` explains how the two layers decide who leads; `../selection.md` explains how the specific file(s) within a domain (several folders here hold more than one) get chosen automatically.

## By domain

**Finance and Fundraising**
- [Cash Flow Crisis Diagnosis](Finance and Fundraising/Cash Flow Crisis Diagnosis.md) — why cash is tight when the surface numbers don't obviously say
- [Financial Statements and Planning](Finance and Fundraising/Financial Statements and Planning.md) — general financial structure, planning, and advice
- [SOX Testing](Finance and Fundraising/SOX Testing.md) — SOX 404-style control testing artifacts
- [Variance Analysis](Finance and Fundraising/Variance Analysis.md) — explaining why actuals differ from budget/forecast/prior period

**Marketing and Growth**
- [Stalled Growth Diagnosis](Marketing and Growth/Stalled Growth Diagnosis.md) — why growth that used to work has flattened
- [Brand Review](Marketing and Growth/Brand Review.md) — brand-specific diagnostic work: positioning, voice, consistency, leaks
- [Campaign Plan](Marketing and Growth/Campaign Plan.md) — a full campaign plan tied to real numbers and the company's actual products/operations
- [Email Sequence Design](Marketing and Growth/Email Sequence Design.md) — multi-email sequences with full copy, timing, and branching
- [Performance Report](Marketing and Growth/Performance Report.md) — a broad review of overall business/marketing performance

**Sales and Business Development**
- [Account Research](Sales and Business Development/Account Research.md) — company/account-level research and opportunity-spotting
- [Pipeline Review](Sales and Business Development/Pipeline Review.md) — forward-looking risk check on a solution/approach already developed

**Product Management**
- [Roadmap Update](Product Management/Roadmap Update.md) — building, updating, or reprioritizing a roadmap, with reasoning shown
- [Write Spec](Product Management/Write Spec.md) — turning an identified problem into spec-ready feature ideas

**Strategy and Governance**
- [Strategic Drift Diagnosis](Strategy and Governance/Strategic Drift Diagnosis.md) — why an existing strategy isn't translating into results
- [Draft-First Strategy Validation](Strategy and Governance/Draft-First Strategy Validation.md) — a cheap draft pass before committing effort to a full strategy/plan

**Bio-Research**
- [Scientific Problem Selection](Bio-Research/Scientific Problem Selection.md) — finding one shared root cause behind several related problems
- [Bio-Business Research](Bio-Research/Bio-Business Research.md) — structured investigation, business-facing by default, genuine biology when that's actually the subject

**Design**
- [Design Critique](Design/Design Critique.md) — reviewing the business's overall design/brand background
- [Design System](Design/Design System.md) — solving one specific, scoped design problem
- [Research Synthesis](Design/Research Synthesis.md) — synthesizing financial/statistical research into a usable summary

**Engineering** *(business architecture and workflow design — not software engineering)*
- [Architecture](Engineering/Architecture.md) — mapping a business problem end-to-end: cause, fix, operation, prevention
- [Debug](Engineering/Debug.md) — diagnosing and solving multiple distinct problems separately
- [Deploy Checklist](Engineering/Deploy Checklist.md) — pre-execution readiness for a plan about to launch
- [Documentation](Engineering/Documentation.md) — background record-keeping across a session
- [System Design](Engineering/System Design.md) — designing a resilient operating workflow
- [Testing Strategy](Engineering/Testing Strategy.md) — *relocated*; the real content now lives at [Draft-First Strategy Validation](Strategy and Governance/Draft-First Strategy Validation.md)

*(HR and Culture, Legal and Compliance, and Operations and Supply Chain don't have a v2 methodology of their own yet, though Operations is now touched by Architecture, System Design, and Deploy Checklist above — see `../routing.md`'s lookup table for the exact connections that exist today. File/document tool capabilities like PDF handling used to live here as "PDF Tools" — they've moved to `../../tools/pdf/`, since they were never actually business methodologies. See `../../tools/index.md`.)*

## How these connect back to v1, and to each other

See `../routing.md` for the complete lookup table and decision rule — that file is now the authoritative single reference for the v1 ↔ v2 exchange. Each file's own `## Connects to (v1)` and `## Related methodologies` sections remain the local, in-file version of the same information.

## Adding a new methodology

Same sections as the files above (Problem type, Diagnostic questions, Methodology, Connects to (v1), Deliverable, Requirements, Related methodologies), placed in the domain folder it belongs to, added to the domain list above, AND added as a row in `../routing.md`'s lookup table — a methodology with no row there is one the exchange has lost track of.
