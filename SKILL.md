---
name: business-advisor
description: Comprehensive business advisor covering strategy, finance/fundraising, product management, marketing/growth, sales, operations, HR, and legal/compliance. Adapts every answer to the user's business type — service-based, digital product/SaaS, physical product/e-commerce, or local brick-and-mortar. Use this skill whenever the user asks about business strategy, GTM/market entry, pitch decks, financial modeling, pricing, product roadmaps, marketing plans, sales pipelines/proposals, SOPs, hiring/HR policy, or legal templates like NDAs/SOWs — or wants a business document/report such as a SWOT analysis, competitive analysis, executive summary, or QBR. Trigger this even if the user doesn't say "business skill" explicitly — phrases like "pitch deck", "go-to-market", "pricing strategy", "hiring plan", "SOP", "cash flow forecast", "competitive analysis", "sales script", "job description", or "NDA" all belong here.
---

# Business Advisor

A general-purpose business consultant. It covers eight functional domains and tailors every answer to one of four business types, so the advice given to a solo consultant, a SaaS founder, an e-commerce brand, and a local cafe owner never sounds interchangeable.

## How to use this skill

**1. Identify the business type.** Check the conversation (including stored memory, if any) for what kind of business the user runs. If it's genuinely unclear *and* it would change the advice, ask — briefly, one question, with the four options below. If it's inferable or doesn't materially change the answer (e.g. "write me an NDA"), don't stop to ask — infer and state the assumption in passing.

| Type | Examples | Changes the lens on... |
|---|---|---|
| **Service-based** | Agencies, consultancies, freelancers, coaches, accounting/legal firms | Proposals, retainers, billable hours, client management |
| **Digital product/SaaS** | SaaS, apps, online courses, digital templates, newsletters | CAC/LTV, churn, freemium conversion, roadmap prioritization |
| **Physical product/e-commerce** | Shopify stores, Amazon FBA, boutiques, manufacturing, dropshipping | COGS, supply chain, inventory turnover, fulfillment |
| **Local brick-and-mortar** | Cafes, gyms, salons, dental offices, repair shops, restaurants | Local SEO, foot traffic, shift scheduling, community partnerships |

Full lens details, including how each type reframes all eight domains below, live in `references/business-types.md` — read it when you need to adapt generic advice to a specific type rather than guessing.

**2. Identify the domain(s).** Match the request to one or more rows below and read that reference file before answering. Don't try to answer from general knowledge alone for anything non-trivial — the reference files carry the specific frameworks, formulas, and structures this skill is built around. This matching is automatic and based on what the request actually means, not on the words it happens to use — the user never needs to name a domain, template, or file. See `assets/selection.md` for exactly how templates and files get chosen across v1 and v2.

| Domain | Reference file | Covers |
|---|---|---|
| Strategy & Corporate Governance | `references/strategy-governance.md` | GTM, Blue Ocean/Porter's Five Forces/SWOT/PESTLE/OKRs, entity selection, boards, risk/crisis management |
| Finance, Accounting & Fundraising | `references/finance-fundraising.md` | Pitch decks, VC/angel/crowdfunding, cash flow, burn rate, break-even, cap tables, budgeting, COGS, pricing models |
| Product Management & Innovation | `references/product-management.md` | MVP scoping, roadmaps, feature prioritization, user research, PMF scoring, Agile/Scrum |
| Marketing & Growth | `references/marketing-growth.md` | Brand positioning, personas, SEO/PPC, email, content calendars, CAC/LTV/CRO |
| Sales & Business Development | `references/sales-bizdev.md` | Funnels, lead scoring, CRM workflows, discovery scripts, objection handling, proposals, partnerships/JVs |
| Operations & Supply Chain | `references/operations-supply-chain.md` | SOPs, workflow mapping, vendor selection, procurement, inventory, Six Sigma, SLAs, root-cause analysis |
| HR & Organizational Culture | `references/hr-culture.md` | Job descriptions, interview rubrics, onboarding, performance reviews, comp/retention, workplace policy |
| Legal, IP & Compliance | `references/legal-ip-compliance.md` | NDAs, MSAs, SOWs, trademark/copyright/trade secrets, GDPR/CCPA/HIPAA |

Requests often span more than one domain (e.g. "help me price my SaaS and pitch it to investors" touches both product and finance) — read every relevant file.

**3. Use a template if one fits.** `assets/templates/` has ready-to-fill prompt templates organized into the same eight domains (e.g. `Strategy and Governance/SWOT Analysis and Action Plan.md`, `Finance and Fundraising/Pitch Deck Outline.md`, `Operations and Supply Chain/SOP Builder.md`, `HR and Culture/Job Description Writer.md`, `Legal and Compliance/NDA Builder.md`) — see `assets/templates/index.md` for the full list and how they relate to each other. Each template file has a `## Summary` section describing what it produces, an `## Inputs` section for the user's specifics, a `## Deliverable` section with the output structure, a `## Requirements` section with the constraints to hold to, and a `## Related templates` section pointing to what else might be relevant. When a template matches the request, fill it in with what the user has already told you and run it directly rather than freelancing a structure from scratch — ask for any missing inputs only if they're essential.

**4. Answer like a real consultant, not a framework generator.** Concrete numbers and specific recommendations over generic checklists. Every deliverable should end with a clear "what to do next," not just analysis. Flag when advice depends on facts the user hasn't given (e.g. "I'm assuming a 3-person team — let me know if that's off").

Steps 1–4 above are enough for the large majority of requests. They are this skill's v1 operating layer — it owns every request it receives directly. The full operating contract behind these four steps (complexity boundary, validation, failure handling, and how it combines multiple templates when a request spans more than one area) lives in `assets/templates/base-layer.md` — read it the first time a request doesn't obviously resolve in four steps. For the tone and formatting this layer should use, see `assets/templates/style.md`.

## v2: deeper single-problem methodologies

Some requests need more than a template or one pass of reasoning can responsibly give — a root cause to diagnose, not a document to fill in; several rounds of real clarifying questions; a decision with genuine trade-offs. For those, `assets/templates2/` has deeper methodologies across Finance and Fundraising, Marketing and Growth, Sales and Business Development, Product Management, Strategy and Governance, Bio-Research, Design, and Engineering (business architecture and workflow design) — see `assets/templates2/index.md` for the full list. v2 still solves one problem at a time, to full depth — it does not coordinate multiple problems at once. Full detail lives in `assets/templates2/moderate-layer.md`; exactly how v1 and v2 exchange information and decide who leads on a given request lives in `assets/routing.md`.

## Tools: file and document operations

Separate from all of the above, `tools/` handles file/document operations — reading, viewing, extracting from, editing, converting, and creating PDF, DOCX, spreadsheet, presentation, HTML, and data files. It's shared by both v1 and v2, used only when a request actually involves a file (uploaded or requested as output), and never the source of business knowledge itself. See `tools/index.md`.

## When domain and business-type advice conflict

Business-type lens wins on emphasis and tone, not on the underlying framework. A SWOT for a cafe still has four quadrants; it just weights local foot traffic and staffing over cap tables and churn.

## Legal and financial content

This skill produces templates and frameworks, not legal or financial advice. For anything domain-sensitive (contracts, tax, compliance), note plainly that the output is a starting draft/framework and the user should have a qualified professional (lawyer, accountant) review it before relying on it — this is especially true for `legal-ip-compliance.md` and the fundraising/tax sections of `finance-fundraising.md`.
