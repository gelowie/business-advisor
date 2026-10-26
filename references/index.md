# Reference Index — how the 8 domain frameworks connect

The 8 files in this folder are fallback frameworks — used per `base-layer.md`'s "Capability selection" step 2, when a request fits a domain but no v1 template matches the specific deliverable. This file connects each one to the v1 templates and v2 methodologies that share its domain, the same way `../templates/index.md` and `../templates2/index.md` connect their own files.

| Reference file | v1 templates in this domain | v2 methodologies in this domain |
|---|---|---|
| `business-types.md` | *(cross-cutting — used in `SKILL.md` step 1 for every request, not tied to one domain)* | *(same — applies before domain routing even starts)* |
| `finance-fundraising.md` | Cash Flow Forecast, Pitch Deck Outline, Pricing Strategy Builder | Cash Flow Crisis Diagnosis, Financial Statements and Planning, SOX Testing, Variance Analysis |
| `hr-culture.md` | Job Description Writer, Structured Interview Rubric | *(none yet)* |
| `legal-ip-compliance.md` | NDA Builder, SOW Builder | Pipeline Review (Sales and Business Development — contract-risk angle only) |
| `marketing-growth.md` | Brand Positioning Statement, Content Calendar Builder | Stalled Growth Diagnosis, Brand Review, Campaign Plan, Email Sequence Design, Performance Report |
| `operations-supply-chain.md` | SOP Builder, Vendor Selection Matrix | Architecture, Debug, Deploy Checklist, Documentation, System Design (Engineering) |
| `product-management.md` | MVP Scope Document, Roadmap Prioritization Worksheet | Roadmap Update, Write Spec |
| `sales-bizdev.md` | Client Proposal Writer, Sales Discovery Call Script | Account Research, Pipeline Review |
| `strategy-governance.md` | SWOT Analysis and Action Plan, Competitive Landscape Analysis, Executive Summary Builder, Market Entry Strategy, Quarterly Business Review Prep | Strategic Drift Diagnosis, Draft-First Strategy Validation, Scientific Problem Selection & Bio-Business Research (Bio-Research) |

## When to use the reference file instead of a template or methodology

A reference file is the right capability when the request fits the domain but doesn't match any specific template's `## Summary` or any methodology's `## Problem type` — e.g. a general "how should I think about pricing" question that isn't quite the full Pricing Strategy Builder and isn't a diagnosed cash-flow root cause either. Pull the specific framework from the file; don't summarize the whole thing.

## Topic coverage still applies here too

Per `../routing.md`'s topic-coverage rule: if a domain's reference file exists but neither a v1 template nor a v2 methodology covers the specific ask, the reference file's framework plus direct reasoning is the answer — that's still v1 territory (`base-layer.md`'s "Capability selection," step 2), regardless of how deep the underlying topic sounds, unless working through it actually surfaces real diagnostic depth per the ordinary complexity rule.
