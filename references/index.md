# Reference Index — how the reference frameworks connect

The files in this folder are the domain frameworks (plus three cross-cutting engines, below) — used per `../assets/templates/base-layer.md`'s "Capability selection" step 2, when a request fits a domain but no v1 template matches the specific deliverable. This file connects each one to the v1 templates that share its domain, the same way `../assets/templates/index.md` connects its own files. (For how each domain also connects to any deeper methodology layer installed alongside v1, see `../assets/routing.md`'s lookup table; that relationship is intentionally kept out of this file so `references/` stays usable with no such layer present at all.)

| Reference file | v1 templates in this domain |
|---|---|
| `business-types.md` | *(cross-cutting — used in `SKILL.md` step 1 for every request, not tied to one domain)* |
| `financial-core.md` | *(cross-cutting engine — the accounting equation, three-statement linkage, ratios, unit economics, capital structure, valuation; read before any numeric finance answer)* Financial Health Check, Funding Options Comparison, Valuation Sanity Check, Cash Flow Forecast, Pricing Strategy Builder |
| `capitals.md` | *(cross-cutting lens — the six capitals: financial, manufactured, intellectual, human, social and relationship, natural; use when a symptom may originate outside money)* |
| `jurisdiction.md` | *(cross-cutting layer — US default and the procedure for other countries; use for any legal, tax, employment, privacy or fundraising point)* NDA Builder, SOW Builder |
| `finance-fundraising.md` | Cash Flow Forecast, Pitch Deck Outline, Pricing Strategy Builder, Funding Options Comparison |
| `hr-culture.md` | Job Description Writer, Structured Interview Rubric |
| `legal-ip-compliance.md` | NDA Builder, SOW Builder |
| `marketing-growth.md` | Brand Positioning Statement, Content Calendar Builder |
| `operations-supply-chain.md` | SOP Builder, Vendor Selection Matrix |
| `product-management.md` | MVP Scope Document, Roadmap Prioritization Worksheet |
| `sales-bizdev.md` | Client Proposal Writer, Sales Discovery Call Script |
| `strategy-governance.md` | SWOT Analysis and Action Plan, Competitive Landscape Analysis, Executive Summary Builder, Market Entry Strategy, Quarterly Business Review Prep |

## When to use the reference file instead of a template

A reference file is the right capability when the request fits the domain but doesn't match any specific template's `## Summary` — e.g. a general "how should I think about pricing" question that isn't quite the full Pricing Strategy Builder. Pull the specific framework from the file; don't summarize the whole thing.

## When no template or reference framework fits

If a domain's reference file exists but nothing in it or in the templates covers the specific ask, reason through the request directly as a consultant would (`../assets/templates/base-layer.md`'s "Capability selection," step 3) — absence of a matching resource is never a reason to say the request can't be handled.
