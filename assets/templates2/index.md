# Methodology Index — how v2 connects to itself and to v1

This is the map for v2 (`templates2/`). Read it alongside `moderate-layer.md` when a request needs more depth than a v1 template can give. See `../routing.md` for how v1 and v2 decide who leads, and `../selection.md` for how specific files within a domain get chosen.

## By domain

**Finance and Fundraising**
- [Cash Flow Crisis Diagnosis](Finance and Fundraising/Cash Flow Crisis Diagnosis.md) — why cash is tight when the surface numbers don't obviously say
- [Balance Sheet Health Diagnosis](Finance and Fundraising/Balance Sheet Health Diagnosis.md) — is the business financially sound: asset, liability and equity quality, ratios, dominant weakness
- [Profitability and Unit Economics Diagnosis](Finance and Fundraising/Profitability and Unit Economics Diagnosis.md) — where margin goes, by product, customer and unit
- [Working Capital Optimization](Finance and Fundraising/Working Capital Optimization.md) — releasing cash trapped in receivables, stock and terms; funding growth
- [Funding Decision](Finance and Fundraising/Funding Decision.md) — whether, how much, from what source and on what terms to raise capital
- [Valuation and Exit Readiness](Finance and Fundraising/Valuation and Exit Readiness.md) — what the business is worth, and preparing to sell, raise or pass it on
- [Financial Statements and Planning](Finance and Fundraising/Financial Statements and Planning.md) — integrated three-statement projections, drivers, scenarios
- [Variance Analysis](Finance and Fundraising/Variance Analysis.md) — explaining why actuals differ from budget, forecast or prior period
- [Research Synthesis](Finance and Fundraising/Research Synthesis.md) — pulling financial and statistical research into a usable summary
- [SOX Testing](Finance and Fundraising/SOX Testing.md) — SOX 404-style control testing artifacts

**Marketing and Growth**
- [Stalled Growth Diagnosis](Marketing and Growth/Stalled Growth Diagnosis.md) — why growth that used to work has flattened
- [Brand Review](Marketing and Growth/Brand Review.md) — positioning, voice, consistency, leaks
- [Campaign Plan](Marketing and Growth/Campaign Plan.md) — a full campaign plan tied to real numbers
- [Email Sequence Design](Marketing and Growth/Email Sequence Design.md) — multi-email sequences with copy, timing and branching
- [Performance Report](Marketing and Growth/Performance Report.md) — a broad review of overall business and marketing performance

**Sales and Business Development**
- [Account Research](Sales and Business Development/Account Research.md) — company-level research and opportunity-spotting
- [Pipeline Review](Sales and Business Development/Pipeline Review.md) — forward-looking risk check on a solution already developed

**Product Management**
- [Roadmap Update](Product Management/Roadmap Update.md) — building or reprioritizing a roadmap with reasoning shown
- [Write Spec](Product Management/Write Spec.md) — turning an identified problem into spec-ready feature ideas

**Strategy and Governance**
- [Strategic Drift Diagnosis](Strategy and Governance/Strategic Drift Diagnosis.md) — why an existing strategy isn't translating into results
- [Capital Audit](Strategy and Governance/Capital Audit.md) — tracing a symptom to the six capitals: financial, manufactured, intellectual, human, social, natural
- [Draft-First Strategy Validation](Strategy and Governance/Draft-First Strategy Validation.md) — a cheap draft pass before committing effort to a full plan

**Operations and Systems** *(business structure and workflow, not software)*
- [Multi-Problem Diagnosis](Operations and Systems/Multi-Problem Diagnosis.md) — separating several problems and testing for a shared root cause
- [Business Architecture](Operations and Systems/Business Architecture.md) — problem → cause → fix → operation → recurrence-prevention map
- [Operating Workflow Design](Operations and Systems/Operating Workflow Design.md) — a resilient end-to-end operating workflow
- [Launch Readiness](Operations and Systems/Launch Readiness.md) — pre-execution gate with an explicit ready / not-ready verdict

*(HR and Culture and Legal and Compliance have no v2 method of their own yet; v1 and the reference files cover them. File and document operations live in `../../tools/index.md`.)*

## How these connect back to v1, and to each other

See `../routing.md` for the lookup table and decision rule. Each file's `## Connects to (v1)` and `## Related methodologies` sections are the local version of the same information.

## Adding a new methodology

Use the same sections as the files above (Problem type, Diagnostic questions, Methodology, Connects to (v1), Deliverable, Requirements, Related methodologies), place it in its domain folder, list it above, and add a row to `../routing.md`'s lookup table — a methodology with no row there is one the exchange has lost track of.
