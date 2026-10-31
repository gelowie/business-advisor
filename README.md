<p align="center">
  <img src="https://i.ibb.co/9HD9Wxnn/logo.png" alt="Business Advisor logo" width="120" height="120">
</p>

<h1 align="center">Business Advisor</h1>

<p align="center">
  <em>A portable AI skill that acts as a business consultant for owners and founders,<br>adapted to the type of business you run.</em>
</p>

<p align="center">
  <a href="SKILL.md"><img alt="Business Advisor: AI Skill" src="https://img.shields.io/badge/Business%20Advisor-AI%20Skill-0a66c2?style=flat-square"></a>
  <a href="RELEASE-HISTORY.txt"><img alt="Version 3.1.0" src="https://img.shields.io/badge/version-3.1.0-blue?style=flat-square"></a>
  <a href="LICENSE"><img alt="License: MIT" src="https://img.shields.io/badge/license-MIT-green?style=flat-square"></a>
  <a href="SKILL.md"><img alt="Format: Markdown" src="https://img.shields.io/badge/format-Markdown-083fa1?style=flat-square&logo=markdown&logoColor=white"></a>
  <a href="#supported-business-domains"><img alt="Coverage: 8 domains and 4 business types" src="https://img.shields.io/badge/coverage-8%20domains%20%C2%B7%204%20business%20types-informational?style=flat-square"></a>
</p>

<p align="center">
  <a href="#overview">Overview</a> &middot;
  <a href="#installation">Installation</a> &middot;
  <a href="#usage">Usage</a> &middot;
  <a href="#templates">Templates</a> &middot;
  <a href="#complex-problem-framework">Complex problems</a> &middot;
  <a href="#limitations">Limitations</a>
</p>

Business Advisor is a set of instructions, reference files, fill-in templates and a complex-problem reasoning framework, written in the `SKILL.md` format, that a compatible AI assistant or agent can load to give better business advice. It is plain Markdown, so it also works as a manual knowledge base for any AI model.

## Table of contents

- [Overview](#overview)
- [Key features](#key-features)
- [Supported business domains](#supported-business-domains)
- [Business types](#business-types)
- [How it works](#how-it-works)
- [Installation](#installation)
- [Usage](#usage)
- [Templates](#templates)
- [Complex-problem framework](#complex-problem-framework)
- [Project structure](#project-structure)
- [Limitations](#limitations)
- [Contributing](#contributing)
- [Version history](#version-history)
- [Disclaimer](#disclaimer)
- [License](#license)

## Overview

Business Advisor gives an AI assistant a structured way to answer business questions the way a careful consultant would: identify the type of business, read the right domain reference, use a ready-made template when one fits, and finish with a concrete next step. For problems that involve several connected issues, it adds a full reasoning process: decompose the problem, form and test hypotheses, plan the investigation, compare options, sequence the actions, verify the result and check the whole answer for consistency before it is delivered.

It is for business owners, founders, managers, consultants and students who want consistent, structured guidance from an AI assistant.

This repository contains the skill itself, not an application. There is nothing to build or run.

## Key features

- **Eight business domains**, each backed by its own reference file with frameworks, formulas and deliverable formats.
- **Four business-type lenses** (service, digital/SaaS, physical product/e-commerce, local brick-and-mortar) that change which metrics and advice matter most.
- **Three tiers of handling**, chosen by `routing.md`: single questions, single-problem diagnosis and complex multi-problem cases.
- **Search-first resource lookup:** `selection.md` finds the matching resource at the chosen tier before any answer is written, and does not fall back to generic reasoning.
- **20 fill-in templates**, plus a base layer that sets the operating contract and a style guide that sets the tone.
- **A complex-problem framework** of 21 modules: an 11-module process (`assets/templates3/`), 10 reasoning modules (`assets/brains/`) and a domain-coordination module (`assets/multi-hands/`).
- **A mandatory final consistency check** at the end of every complex-problem run.
- **Built-in caution** on legal, tax and compliance content: output is a starting draft for professional review.

## Supported business domains

| Domain | Reference file | Covers |
|---|---|---|
| Strategy and corporate governance | [`strategy-governance.md`](references/strategy-governance.md) | Go-to-market, Blue Ocean, Porter's Five Forces, SWOT, PESTLE, OKRs, entity selection, boards, risk and crisis management |
| Finance, accounting and fundraising | [`finance-fundraising.md`](references/finance-fundraising.md) | Pitch decks, VC, angel and crowdfunding, cash flow, burn rate, break-even, cap tables, budgeting, COGS, pricing models |
| Product management and innovation | [`product-management.md`](references/product-management.md) | MVP scoping, roadmaps, feature prioritization, user research, product-market fit scoring, Agile and Scrum |
| Marketing and growth | [`marketing-growth.md`](references/marketing-growth.md) | Brand positioning, personas, SEO and PPC, email, content calendars, CAC, LTV, conversion optimization |
| Sales and business development | [`sales-bizdev.md`](references/sales-bizdev.md) | Funnels, lead scoring, CRM workflows, discovery scripts, objection handling, proposals, partnerships |
| Operations and supply chain | [`operations-supply-chain.md`](references/operations-supply-chain.md) | SOPs, workflow mapping, vendor selection, procurement, inventory, Six Sigma, SLAs, root-cause analysis |
| HR and organizational culture | [`hr-culture.md`](references/hr-culture.md) | Job descriptions, interview rubrics, onboarding, performance reviews, compensation and retention, workplace policy |
| Legal, IP and compliance | [`legal-ip-compliance.md`](references/legal-ip-compliance.md) | NDAs, MSAs, SOWs, trademark, copyright, trade secrets, GDPR, CCPA, HIPAA |

Requests often span several domains (for example, pricing a SaaS product and pitching it to investors). The skill reads every relevant reference file.

## Business types

The skill adapts every answer to one of four business types. The full lens for each type, including how it reframes all eight domains, is in [`references/business-types.md`](references/business-types.md).

| Type | Examples | Changes the lens on |
|---|---|---|
| Service-based | Agencies, consultancies, freelancers, coaches, accounting and legal firms | Proposals, retainers, billable hours, client management |
| Digital product / SaaS | SaaS, apps, online courses, digital templates, newsletters | CAC and LTV, churn, freemium conversion, roadmap prioritization |
| Physical product / e-commerce | Online stores, boutiques, manufacturing, dropshipping | COGS, supply chain, inventory turnover, fulfillment |
| Local brick-and-mortar | Cafes, gyms, salons, dental offices, repair shops, restaurants | Local SEO, foot traffic, shift scheduling, community partnerships |

If the type is unclear and would change the advice, the skill asks one brief question. If it can be inferred, or does not matter (for example, "write me an NDA"), it states its assumption in passing instead.

## How it works

### Three tiers

`assets/routing.md` decides which tier a request belongs to, and `assets/selection.md` then picks the specific resource files.

| Tier | Handles | Resources |
|---|---|---|
| First | A single, straightforward business question in one domain | [`assets/templates/`](assets/templates) |
| Second | Deeper diagnosis of one problem at a time | [`assets/templates2/`](assets/templates2), supported by the first-tier templates |
| Third | Multiple connected problems, competing hypotheses, cross-domain dependencies or explicit complexity signals | [`assets/templates3/`](assets/templates3), [`assets/brains/`](assets/brains) and [`assets/multi-hands/`](assets/multi-hands), which may consult the lower tiers |

Tier determination is a behavioral heuristic, not a guaranteed classifier. Lower tiers never consult the third tier.

### Everyday requests

1. **Identify the business type** from the conversation, or ask once if it changes the advice.
2. **Identify the domain or domains** and read the matching reference file.
3. **Use a template** from [`assets/templates/`](assets/templates) if one fits.
4. **Answer like a consultant:** concrete numbers and recommendations, flagged assumptions, and a clear "what to do next".

When domain and business-type advice conflict, the business-type lens decides emphasis and tone, not the underlying framework. A SWOT for a cafe still has four quadrants; it weights foot traffic and staffing over cap tables and churn.

### Complex problems

Third-tier requests follow the sequence in [`v3-pipeline.md`](assets/templates3/v3-pipeline.md). Not every problem runs every stage; the pipeline decides which stages the problem actually needs.

```text
Routing
  -> Resource selection (third tier first, then second, then first as support)
  -> State initialization
  -> Decomposition
  -> Problem selection and sequencing
  -> Brainstorm            (only if there is no obvious explanation)
  -> Hypotheses and evidence
  -> Investigation planning
  -> Dependencies and constraints
  -> Multi-Hands           (only if the problem spans several domains)
  -> Multi-Brains          (only if methodologies genuinely conflict or overlap)
  -> Trade-off comparison
  -> Decision
  -> Action sequencing
  -> Verification          (loops back to the flagged stage if it fails)
  -> Contingency or escalation (only when triggered)
  -> Final consistency check   (mandatory)
  -> Final answer
```

## Installation

The skill is a folder with `SKILL.md` at its top level. The `name` field in `SKILL.md` is `business-advisor`, so name the folder `business-advisor` when you install it.

**Option A: AI tools that support skills**

1. Download this repository and rename the folder to `business-advisor`.
2. Place it in your tool's skills location, or use the tool's skill-upload feature if it has one.
3. Enable the skill, then ask a business question.

Each tool names and locates its skills folder differently, so check your tool's documentation.

**Option B: any AI model (manual use)**

1. Paste the contents of [`SKILL.md`](SKILL.md) into your assistant as instructions.
2. When a task needs a specific area, paste the matching file from [`references/`](references) or [`assets/`](assets) as context.

## Usage

### Example prompts

Single-domain requests:

- "Help me price my SaaS and outline a pitch deck."
- "Write a one-page SOP for handling customer returns."
- "Draft a structured interview rubric for a sales hire."
- "Do a SWOT analysis for my cafe and turn it into an action plan."
- "Draft a mutual NDA for a supplier I am about to work with."

Complex requests, which use the complex-problem framework:

- "Sales are down, cash is tight and two key staff are leaving. Where do I start?"
- "We are deciding between expanding to a second location and investing in online sales. Compare the options and give me a sequenced plan."

### Using a template directly

Every template is a Markdown file with the same five sections. Fill in the **Inputs** and give the template to your assistant. This is the structure of [`SOP Builder.md`](assets/templates/Operations%20and%20Supply%20Chain/SOP%20Builder.md):

```markdown
# SOP Builder

## Summary
What the template produces.

## Inputs
- **Process name** — [what this covers]
- **Who performs it** — [a role, not a specific person's name]
...

## Deliverable
1. Purpose — one sentence on why this process exists
2. Trigger — when this process should be used
...

## Requirements
- Steps must be numbered and specific
...

## Related templates
- Vendor Selection Matrix
```

You can also just describe what you need; the skill picks a matching template when one fits.

## Templates

`assets/templates/` holds 20 templates in the same eight domains as the reference files. Three supporting files sit beside them:

- [`index.md`](assets/templates/index.md): the template map and how templates relate to each other
- [`base-layer.md`](assets/templates/base-layer.md): the operating contract, covering scope, validation, failure handling and how multiple templates are combined
- [`style.md`](assets/templates/style.md): tone and formatting

### Finance and Fundraising

| Template | What it produces |
|---|---|
| [Cash Flow Forecast](assets/templates/Finance%20and%20Fundraising/Cash%20Flow%20Forecast.md) | Builds a rolling cash flow forecast and states the runway and risk picture in plain terms. |
| [Pitch Deck Outline](assets/templates/Finance%20and%20Fundraising/Pitch%20Deck%20Outline.md) | Drafts a fundable pitch deck outline slide by slide, with actual content on each slide rather than just headers. |
| [Pricing Strategy Builder](assets/templates/Finance%20and%20Fundraising/Pricing%20Strategy%20Builder.md) | Designs a pricing or tier structure grounded in the value delivered, rather than guesswork or matching competitor prices. |

### HR and Culture

| Template | What it produces |
|---|---|
| [Job Description Writer](assets/templates/HR%20and%20Culture/Job%20Description%20Writer.md) | Writes a job description that leads with real first-90-days ownership rather than a generic list of responsibilities. |
| [Structured Interview Rubric](assets/templates/HR%20and%20Culture/Structured%20Interview%20Rubric.md) | Builds a structured interview scoring rubric tied to the competencies that actually predict success in the role. |

### Legal and Compliance

| Template | What it produces |
|---|---|
| [NDA Builder](assets/templates/Legal%20and%20Compliance/NDA%20Builder.md) | Drafts a starting NDA, mutual or one-way, with every key term flagged for confirmation. This is a starting point for review, not a substitute for an attorney. |
| [SOW Builder](assets/templates/Legal%20and%20Compliance/SOW%20Builder.md) | Drafts a Statement of Work with enough specificity to avoid scope-creep disputes. This is a starting point for review, not a substitute for an attorney. |

### Marketing and Growth

| Template | What it produces |
|---|---|
| [Brand Positioning Statement](assets/templates/Marketing%20and%20Growth/Brand%20Positioning%20Statement.md) | Produces a specific, defensible brand positioning statement and a supporting persona sketch — not generic marketing language. |
| [Content Calendar Builder](assets/templates/Marketing%20and%20Growth/Content%20Calendar%20Builder.md) | Builds a content calendar organized around recurring pillars, so output stays consistent instead of a scramble for one-off ideas. |

### Operations and Supply Chain

| Template | What it produces |
|---|---|
| [SOP Builder](assets/templates/Operations%20and%20Supply%20Chain/SOP%20Builder.md) | Turns a process description into a clear, numbered standard operating procedure that a first-time reader could follow unaided. |
| [Vendor Selection Matrix](assets/templates/Operations%20and%20Supply%20Chain/Vendor%20Selection%20Matrix.md) | Builds a weighted vendor comparison matrix, so the choice isn't decided on price alone. |

### Product Management

| Template | What it produces |
|---|---|
| [MVP Scope Document](assets/templates/Product%20Management/MVP%20Scope%20Document.md) | Scopes a minimum viable product around the single riskiest assumption, cutting everything that doesn't test it. |
| [Roadmap Prioritization Worksheet](assets/templates/Product%20Management/Roadmap%20Prioritization%20Worksheet.md) | Scores and ranks a list of features or initiatives using RICE or ICE, so priority is decided by data rather than by whoever asked loudest. |

### Sales and Business Development

| Template | What it produces |
|---|---|
| [Client Proposal Writer](assets/templates/Sales%20and%20Business%20Development/Client%20Proposal%20Writer.md) | Writes a client proposal that opens with the client's problem in their own words and ties pricing to value rather than a line-item list. |
| [Sales Discovery Call Script](assets/templates/Sales%20and%20Business%20Development/Sales%20Discovery%20Call%20Script.md) | Writes a discovery call script that surfaces real pain and gets it quantified before any pitching happens. |

### Strategy and Governance

| Template | What it produces |
|---|---|
| [Competitive Landscape Analysis](assets/templates/Strategy%20and%20Governance/Competitive%20Landscape%20Analysis.md) | Produces a strategic competitive analysis — positioning, market gaps, and specific moves to make, not a feature checklist. |
| [Executive Summary Builder](assets/templates/Strategy%20and%20Governance/Executive%20Summary%20Builder.md) | Distills raw data, notes, or findings into a one-page executive summary with a clear bottom line and a recommended action. |
| [Market Entry Strategy](assets/templates/Strategy%20and%20Governance/Market%20Entry%20Strategy.md) | Builds a realistic market entry plan — sizing, beachhead targeting, a first-90-days plan, and clear kill criteria. |
| [Quarterly Business Review Prep](assets/templates/Strategy%20and%20Governance/Quarterly%20Business%20Review%20Prep.md) | Prepares a quarterly business review that leads with the narrative, faces misses honestly, and closes with clear asks. |
| [SWOT Analysis and Action Plan](assets/templates/Strategy%20and%20Governance/SWOT%20Analysis%20and%20Action%20Plan.md) | Runs a SWOT analysis that goes past the obvious four lists — every point gets a strategic "so what" and a concrete "now what." |

## Complex-problem framework

### Process modules (`assets/templates3/`)

| Module | What it does |
|---|---|
| [Action Sequencing](assets/templates3/action-sequencing.md) | The order of actions once a decision is final. |
| [Contingency Planning](assets/templates3/contingency-planning.md) | What happens if the primary solution does not work, and which conditions trigger the fallback. |
| [Decomposition](assets/templates3/decomposition.md) | Breaks a complex or multi-issue problem into meaningful sub-problems before solving begins. |
| [Dependency Impact](assets/templates3/dependency-impact.md) | Maps relationships between components, decisions, resources or stakeholders, and what a change could affect. |
| [Escalation Conditions](assets/templates3/escalation-conditions.md) | The mid-process rule for when the evidence or process is not sufficient to continue responsibly. |
| [Final Consistency Check](assets/templates3/final-consistency-check.md) | The single mandatory gate at the end of the process, covering the whole answer. |
| [Hypothesis and Evidence](assets/templates3/hypothesis-evidence.md) | What is currently believed and which evidence supports or contradicts it. |
| [Investigation Planning](assets/templates3/investigation-planning.md) | What still needs to be found out, and how. |
| [Trade-off Comparison](assets/templates3/tradeoff-comparison.md) | Compares viable options against constraints, evidence, risk and dependencies without automatically declaring a winner. |
| [Verification Loop](assets/templates3/verification-loop.md) | How to tell whether an action worked, and what happens if it did not. |
| [Pipeline](assets/templates3/v3-pipeline.md) | The stage order and the conditions for moving between stages. It contains sequencing only; the reasoning lives in the modules. |

### Reasoning modules (`assets/brains/`)

| Module | What it does |
|---|---|
| [Core Advisor](assets/brains/core-advisor.md) | The default single-methodology reasoning voice for complex problems that do not need multi-domain coordination. |
| [Brainstorm](assets/brains/brainstorm.md) | Divergent thinking before hypotheses are narrowed: a wide, not yet evidence-checked set of candidate causes, options and angles. |
| [Problem Selection](assets/brains/problem-selection.md) | Which sub-problem is worked first, which can run in parallel, and which are blocked. |
| [Decision Making](assets/brains/decision-making.md) | How a decision is finalized once the options have been compared. |
| [Brain Coordination (Multi-Brains)](assets/brains/brain-coordination.md) | Reconciles different methodologies when they overlap or conflict. |
| [Conflict Resolution](assets/brains/conflict-resolution.md) | Resolves disagreement between two reasoning outputs. |
| [State Management](assets/brains/state-management.md) | The structure, update rules and ownership rules for the working state of a session. |
| [Context Management](assets/brains/context-management.md) | Tracks which information is active right now, as distinct from the full durable state. |
| [Quality Control](assets/brains/quality-control.md) | Lightweight sanity checks that run during the process, before the final gate. |
| [Reasoning Rules](assets/brains/reasoning-rules.md) | The logical discipline every reasoning module follows, stated once. |

### Domain coordination (`assets/multi-hands/`)

| Module | What it does |
|---|---|
| [Domain Coordination (Multi-Hands)](assets/multi-hands/domain-coordination.md) | Decides which domains participate in a complex problem. Multi-Brains then reconciles the methodologies. |

### Second tier (`assets/templates2/`)

[`index.md`](assets/templates2/index.md) maps the second tier. Single-problem diagnosis requests are supported by the first-tier templates.

## Project structure

```text
business-advisor/
├── SKILL.md                 Entry point: how the skill works
├── LICENSE                  MIT license
├── README.md                This file
├── RELEASE-HISTORY.txt      Version-by-version release history
├── references/              9 reference files
│   ├── business-types.md    The four business-type lenses
│   └── <domain>.md          One file per business domain (8)
└── assets/
    ├── routing.md           Which tier owns a request
    ├── selection.md         How resources are chosen
    ├── templates/           20 templates in 8 domain folders, plus index, base-layer and style
    ├── templates2/          Second-tier index
    ├── templates3/          Complex-problem process (11 modules)
    ├── brains/              Reasoning modules (10)
    └── multi-hands/         Domain coordination (1)
```

## Limitations

- **Not professional advice.** Output is a framework or starting draft. Contracts, tax and compliance material should be reviewed by a qualified professional before you rely on it.
- **Quality depends on your inputs and on the AI model** that loads the skill. The skill improves structure; it cannot verify your numbers.
- **Routing is a heuristic.** Tier selection and search-first lookup are workflow requirements written into the skill. They are not a technical guarantee that a model will follow them every time.
- **US-leaning examples.** Several references use US concepts, such as LLC and C-Corp entity types, and the CCPA and HIPAA privacy laws. Adapt them to your country and check local rules.
- **Second tier is an index.** Single-problem diagnosis requests are handled with the first-tier templates.
- **No file-handling guidance.** The skill does not include instructions for working with PDFs, spreadsheets or presentations.
- **No automated tests or benchmarks** accompany the skill.

## Contributing

Corrections and suggestions are welcome. Please keep to these rules:

- Follow the existing template structure (Summary, Inputs, Deliverable, Requirements, Related templates).
- Keep reference content concrete and avoid invented statistics or unsourced figures.
- Do not include real client names, real financial figures or other private data in examples.
- Keep legal and tax content framed as a starting draft for professional review.

## Version history

See [`RELEASE-HISTORY.txt`](RELEASE-HISTORY.txt) for what changed in each version. This README describes version 3.1.0.

## Disclaimer

This project provides frameworks and starting drafts. It is **not** legal, tax, accounting, investment or financial advice. Have a qualified professional (accountant, attorney, lender) review anything before you rely on it. The authors accept no liability for decisions made using it.

## License

Released under the [MIT License](LICENSE).
