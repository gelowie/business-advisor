<p align="center">
  <img src="https://i.ibb.co/9HD9Wxnn/logo.png" alt="Business Advisor logo" width="120" height="120">
</p>
<h1 align="center">Business Advisor</h1>
 
<p align="center">
  <em>A portable AI skill that acts as a business consultant for owners and founders,<br>adapted to the type of business you run.</em>
</p>
<p align="center">
  <a href="SKILL.md"><img alt="Business Advisor: AI Skill" src="https://img.shields.io/badge/Business%20Advisor-AI%20Skill-0a66c2?style=flat-square"></a>
  <a href="RELEASE-HISTORY.txt"><img alt="Version 3.0.0" src="https://img.shields.io/badge/version-3.0.0-blue?style=flat-square"></a>
  <a href="LICENSE"><img alt="License: MIT" src="https://img.shields.io/badge/license-MIT-green?style=flat-square"></a>
  <a href="SKILL.md"><img alt="Format: Markdown" src="https://img.shields.io/badge/format-Markdown-083fa1?style=flat-square&logo=markdown&logoColor=white"></a>
  <a href="#supported-business-domains"><img alt="Coverage: 8 domains and 4 business types" src="https://img.shields.io/badge/coverage-8%20domains%20%C2%B7%204%20business%20types-informational?style=flat-square"></a>
</p>
<p align="center">
  <a href="#overview">Overview</a> &middot;
  <a href="#installation">Installation</a> &middot;
  <a href="#usage">Usage</a> &middot;
  <a href="#templates">Templates</a> &middot;
  <a href="#specialist-methodologies">Specialists</a> &middot;
  <a href="#limitations">Limitations</a>
</p>
Business Advisor is a set of instructions, reference files, fill-in templates and specialist methodologies, written in the `SKILL.md` format, that a compatible AI assistant or agent can load to give better business advice. It is plain Markdown and text, so it also works as a manual knowledge base for any AI model.
 
## Table of contents
 
- [Overview](#overview)
- [Key features](#key-features)
- [Supported business domains](#supported-business-domains)
- [Business types](#business-types)
- [How it works](#how-it-works)
- [Installation](#installation)
- [Usage](#usage)
- [Templates](#templates)
- [Specialist methodologies](#specialist-methodologies)
- [Project structure](#project-structure)
- [Limitations](#limitations)
- [Contributing](#contributing)
- [Version history](#version-history)
- [Disclaimer](#disclaimer)
- [License](#license)
## Overview
 
Business Advisor gives an AI assistant a structured way to answer business questions the way a careful consultant would: identify the type of business, read the right domain reference, use a ready-made template when one fits, and finish with a concrete next step. Advice for a solo consultant, a SaaS founder, an e-commerce brand and a local cafe owner is deliberately not interchangeable.
 
It is for business owners, founders, managers, consultants and students who want consistent, structured guidance from an AI assistant.
 
This repository contains the skill itself, not an application. There is nothing to build or run.
 
## Key features
 
- **Eight business domains**, each backed by its own reference file with frameworks, formulas and deliverable formats.
- **Four business-type lenses** (service, digital/SaaS, physical product/e-commerce, local brick-and-mortar) that change which metrics and advice matter most.
- **20 fill-in templates** for common deliverables, such as an SOP, a cash flow forecast, a pitch deck outline or an NDA draft.
- **30 specialist methodologies** for complex, multi-step or cross-domain problems, coordinated by a written orchestration flow (Multi-Brain and Multi-Hands).
- **Evidence and assumption labeling:** the orchestration rules ask the advisor to keep confirmed facts, user-provided information, research findings, assumptions and unknowns distinct.
- **A final answer standard:** a ten-point silent check before a complex answer is sent.
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
 
### Everyday requests
 
For a single-domain request, `SKILL.md` runs four steps:
 
1. **Identify the business type** from the conversation, or ask once if it changes the advice.
2. **Identify the domain or domains** and read the matching reference file.
3. **Use a template** from [`assets/templates/`](assets/templates) if one fits.
4. **Answer like a consultant:** concrete numbers and recommendations, flagged assumptions, and a clear "what to do next".
When domain and business-type advice conflict, the business-type lens decides emphasis and tone, not the underlying framework. A SWOT for a cafe still has four quadrants; it weights foot traffic and staffing over cap tables and churn.
 
### Complex requests
 
Multi-step or cross-domain problems use the specialist layer in [`assets/templates2/`](assets/templates2). Simple requests never need it.
 
```text
User request
   |
   v
Session bootstrap   (only when returning to standing context)
   |
   v
Learn               (context intake: only the questions that change the advice)
   |
   v
Multi-Brain         (Core Advisor + Brainstorm decide what is actually needed)
   |
   v
Decompose           (a broad symptom is never treated as a single problem)
   |
   v
Multi-Hands         (select only the specialists whose activation conditions are met)
   |
   v
Specialists, then risk and quality review, then Multi-Brain review
   |
   v
Core Advisor assembles one coherent answer (checked against the final answer standard)
```
 
The full flow, the specialist directory, evidence labeling and the boundaries between specialists are documented in [`orchestration.md`](assets/templates2/orchestration.md).
 
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
Complex requests, which engage the specialist layer:
 
- "Our sales are declining and cash is tight. What should we do?"
- "Review my company's brand and marketing performance and tell me what to fix first."
### Using a template directly
 
Each template is a text file with four tags. Fill in the `<inputs>` block with your details and give the template to your assistant. This is the structure of [`SOP Builder.txt`](assets/templates/Operations%20and%20Supply%20Chain/SOP%20Builder.txt):
 
```text
<summary>
What the template produces.
</summary>
 
<inputs>
Process name: [what this covers]
Who performs it: [a role, not a specific person's name]
...
</inputs>
 
<deliverable>
1. Purpose
2. Trigger
...
</deliverable>
 
<requirements>
- Steps must be numbered and specific
...
</requirements>
```
 
You can also just describe what you need; the skill picks a matching template when one fits.
 
## Templates
 
`assets/templates/` holds 20 templates in the same eight domains as the reference files.
 
### Finance and Fundraising
 
| Template | What it produces |
|---|---|
| [Cash Flow Forecast](assets/templates/Finance%20and%20Fundraising/Cash%20Flow%20Forecast.txt) | Builds a rolling cash flow forecast and states the runway and risk picture in plain terms. |
| [Pitch Deck Outline](assets/templates/Finance%20and%20Fundraising/Pitch%20Deck%20Outline.txt) | Drafts a fundable pitch deck outline slide by slide, with actual content on each slide rather than just headers. |
| [Pricing Strategy Builder](assets/templates/Finance%20and%20Fundraising/Pricing%20Strategy%20Builder.txt) | Designs a pricing or tier structure grounded in the value delivered, rather than guesswork or matching competitor prices. |
 
### HR and Culture
 
| Template | What it produces |
|---|---|
| [Job Description Writer](assets/templates/HR%20and%20Culture/Job%20Description%20Writer.txt) | Writes a job description that leads with real first-90-days ownership rather than a generic list of responsibilities. |
| [Structured Interview Rubric](assets/templates/HR%20and%20Culture/Structured%20Interview%20Rubric.txt) | Builds a structured interview scoring rubric tied to the competencies that actually predict success in the role. |
 
### Legal and Compliance
 
| Template | What it produces |
|---|---|
| [NDA Builder](assets/templates/Legal%20and%20Compliance/NDA%20Builder.txt) | Drafts a starting NDA, mutual or one-way, with every key term flagged for confirmation. This is a starting point for review, not a substitute for an attorney. |
| [SOW Builder](assets/templates/Legal%20and%20Compliance/SOW%20Builder.txt) | Drafts a Statement of Work with enough specificity to avoid scope-creep disputes. This is a starting point for review, not a substitute for an attorney. |
 
### Marketing and Growth
 
| Template | What it produces |
|---|---|
| [Brand Positioning Statement](assets/templates/Marketing%20and%20Growth/Brand%20Positioning%20Statement.txt) | Produces a specific, defensible brand positioning statement and a supporting persona sketch — not generic marketing language. |
| [Content Calendar Builder](assets/templates/Marketing%20and%20Growth/Content%20Calendar%20Builder.txt) | Builds a content calendar organized around recurring pillars, so output stays consistent instead of a scramble for one-off ideas. |
 
### Operations and Supply Chain
 
| Template | What it produces |
|---|---|
| [SOP Builder](assets/templates/Operations%20and%20Supply%20Chain/SOP%20Builder.txt) | Turns a process description into a clear, numbered standard operating procedure that a first-time reader could follow unaided. |
| [Vendor Selection Matrix](assets/templates/Operations%20and%20Supply%20Chain/Vendor%20Selection%20Matrix.txt) | Builds a weighted vendor comparison matrix, so the choice isn't decided on price alone. |
 
### Product Management
 
| Template | What it produces |
|---|---|
| [MVP Scope Document](assets/templates/Product%20Management/MVP%20Scope%20Document.txt) | Scopes a minimum viable product around the single riskiest assumption, cutting everything that doesn't test it. |
| [Roadmap Prioritization Worksheet](assets/templates/Product%20Management/Roadmap%20Prioritization%20Worksheet.txt) | Scores and ranks a list of features or initiatives using RICE or ICE, so priority is decided by data rather than by whoever asked loudest. |
 
### Sales and Business Development
 
| Template | What it produces |
|---|---|
| [Client Proposal Writer](assets/templates/Sales%20and%20Business%20Development/Client%20Proposal%20Writer.txt) | Writes a client proposal that opens with the client's problem in their own words and ties pricing to value rather than a line-item list. |
| [Sales Discovery Call Script](assets/templates/Sales%20and%20Business%20Development/Sales%20Discovery%20Call%20Script.txt) | Writes a discovery call script that surfaces real pain and gets it quantified before any pitching happens. |
 
### Strategy and Governance
 
| Template | What it produces |
|---|---|
| [Competitive Landscape Analysis](assets/templates/Strategy%20and%20Governance/Competitive%20Landscape%20Analysis.txt) | Produces a strategic competitive analysis — positioning, market gaps, and specific moves to make, not a feature checklist. |
| [Executive Summary Builder](assets/templates/Strategy%20and%20Governance/Executive%20Summary%20Builder.txt) | Distills raw data, notes, or findings into a one-page executive summary with a clear bottom line and a recommended action. |
| [Market Entry Strategy](assets/templates/Strategy%20and%20Governance/Market%20Entry%20Strategy.txt) | Builds a realistic market entry plan — sizing, beachhead targeting, a first-90-days plan, and clear kill criteria. |
| [Quarterly Business Review Prep](assets/templates/Strategy%20and%20Governance/Quarterly%20Business%20Review%20Prep.txt) | Prepares a quarterly business review that leads with the narrative, faces misses honestly, and closes with clear asks. |
| [SWOT Analysis and Action Plan](assets/templates/Strategy%20and%20Governance/SWOT%20Analysis%20and%20Action%20Plan.txt) | Runs a SWOT analysis that goes past the obvious four lists — every point gets a strategic "so what" and a concrete "now what." |
 
## Specialist methodologies
 
`assets/templates2/` holds 30 specialist methodologies and [`orchestration.md`](assets/templates2/orchestration.md), which explains how they work together. Each specialist file defines its purpose, activation conditions, inputs, responsibilities, non-responsibilities, workflow, outputs, quality criteria and failure conditions, and how it interacts with neighboring specialists. The advisor reads only the files relevant to the request; it does not run every specialist by default.
 
Group and folder names reflect the specialists' origins, so some are applied to business problems rather than technical ones (for example, `engineering/architecture` maps a business problem end to end, and `engineering/system-design` designs a business workflow).
 
### Context and session
 
| Specialist | What it does |
|---|---|
| [Learn](assets/templates2/learn/learn.md) | Context intake. Gets to a working understanding of the situation with the fewest questions that would change the advice. Runs first on complex requests. |
| [Start](assets/templates2/productivity/start/start.md) | Session bootstrap. Re-establishes known context and decodes shorthand when the user returns to an ongoing engagement. |
 
### Reasoning
 
| Specialist | What it does |
|---|---|
| [Brainstorm](assets/templates2/product-management/brainstorm/brainstorm.md) | The second reasoning component. Challenges assumptions and surfaces alternatives; never overrides the core advisor. |
 
### Strategy and product
 
| Specialist | What it does |
|---|---|
| [Roadmap Update](assets/templates2/product-management/roadmap-update/roadmap-update.md) | Creates and maintains a business roadmap: objectives, initiatives, sequencing and reprioritization. |
| [Write Spec](assets/templates2/product-management/write-spec/write-spec.md) | Turns identified problems into feature ideas and specification-oriented guidance. |
| [Scientific Problem Selection](assets/templates2/bio-research/scientific-problem-selection/scientific-problem-selection.md) | Finds the single root problem whose resolution also resolves related downstream problems. |
| [Bio-Business Research](assets/templates2/bio-research/start/bio-business-research.md) | Structured investigation of problems within or affecting the business; adapts if the subject is biological. |
 
### Finance
 
| Specialist | What it does |
|---|---|
| [Financial Statements and Planning](assets/templates2/finance/financial-statements/financial-statements.md) | Background financial advice, structure and planning. |
| [Variance Analysis](assets/templates2/finance/variance-analysis/variance-analysis.md) | Explains differences in the business's numbers, their significance and likely causes. |
| [SOX Testing](assets/templates2/finance/sox-testing/sox-testing.md) | Sample selections, testing approaches, workpapers and assessments for SOX-related testing, when applicable. |
| [Research Synthesis](assets/templates2/design/research-synthesis/research-synthesis.md) | Synthesizes financial and statistical research for a specific project into a usable summary. |
 
### Marketing and sales
 
| Specialist | What it does |
|---|---|
| [Campaign Plan](assets/templates2/marketing/campaign-plan/campaign-plan.md) | A campaign plan tied to the company's actual products, operations and brand, with real numbers. |
| [Brand Review](assets/templates2/marketing/brand-review/brand-review.md) | Reviews the brand specifically: weaknesses, inconsistencies, leaks and positioning gaps. |
| [Email Sequence](assets/templates2/marketing/email-sequence/email-sequence.md) | Multi-email sequences with copy, timing, branching and performance considerations. |
| [Performance Report](assets/templates2/marketing/performance-report/performance-report.md) | A detailed review of problems, performance and what to improve, from the user's full business background. |
| [Account Research](assets/templates2/sales/account-research/account-research.md) | Describes the relevant company or account and identifies improvements and opportunities. |
| [Pipeline Review](assets/templates2/sales/pipeline-review/pipeline-review.md) | Reviews risks that emerge after a solution or sales approach is developed, with fixable mitigations. |
 
### Design
 
| Specialist | What it does |
|---|---|
| [Design Critique](assets/templates2/design/design-critique/design-critique.md) | Critiques how the business presents itself visually and structurally and recommends a better approach. |
| [Design System](assets/templates2/design/design-system/design-system.md) | A detailed design solution for one specific, scoped design problem. |
 
### Problem solving and operations
 
| Specialist | What it does |
|---|---|
| [Architecture](assets/templates2/engineering/architecture/architecture.md) | Maps a business problem end to end: cause, fix, resources, operation and prevention. |
| [Debug](assets/templates2/engineering/debug/debug.md) | Splits a messy set of problems into individually diagnosed issues, each with its own fix. |
| [System Design](assets/templates2/engineering/system-design/system-design.md) | Designs a precise, resilient workflow for how the business should operate to solve the problem. |
| [Testing Strategy](assets/templates2/engineering/testing-strategy/testing-strategy.md) | Drafts a clearly labeled preliminary version first, so the user has something concrete to react to. |
| [Deploy Checklist](assets/templates2/engineering/deploy-checklist/deploy-checklist.md) | Confirms objectives, steps, dependencies, checks and risks before a plan is executed. |
| [Documentation](assets/templates2/engineering/documentation/documentation.md) | Keeps a running record of research, findings, decisions and solutions as the conversation develops. |
 
### PDF handling
 
| Specialist | What it does |
|---|---|
| [View](assets/templates2/pdf-viewer/view-pdf/view-pdf.md) | Reads an uploaded PDF as context and asks what to do with it before acting. |
| [Open](assets/templates2/pdf-viewer/open/open.md) | Opens a PDF for viewing on explicit request. |
| [Annotate](assets/templates2/pdf-viewer/annotate/annotate.md) | Annotates a PDF once the user has asked for annotation. |
| [Fill Form / Edit](assets/templates2/pdf-viewer/fill-form/fill-form.md) | Writes or edits PDF content once the user has specified what to add or change. |
| [Sign](assets/templates2/pdf-viewer/sign/sign.md) | Places a signature or initials image once the user has asked and approved the placement. |
 
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
    ├── templates/           20 fill-in templates in 8 domain folders (.txt)
    └── templates2/          Specialist layer
        ├── orchestration.md
        ├── learn/  productivity/  product-management/  finance/
        ├── marketing/  sales/  design/  engineering/
        └── bio-research/  pdf-viewer/
```
 
## Limitations
 
- **Not professional advice.** Output is a framework or starting draft. Contracts, tax and compliance material should be reviewed by a qualified professional before you rely on it.
- **Quality depends on your inputs and on the AI model** that loads the skill. The skill improves structure; it cannot verify your numbers.
- **US-leaning examples.** Several references use US concepts, such as LLC and C-Corp entity types, and the CCPA and HIPAA privacy laws. Adapt them to your country and check local rules.
- **No automated tests or benchmarks** accompany the skill.
- **Specialists depend on the host.** The PDF specialists describe how to handle PDFs, but your AI tool must be able to open and edit PDFs for them to work. SOX testing applies only where it is relevant.
- **The specialist layer is for complex requests.** Simple single-domain requests use the references and templates only.
## Contributing
 
Corrections and suggestions are welcome. Please keep to these rules:
 
- Follow the existing template structure (`<summary>`, `<inputs>`, `<deliverable>`, `<requirements>`).
- Keep reference content concrete and avoid invented statistics or unsourced figures.
- Do not include real client names, real financial figures or other private data in examples.
- Keep legal and tax content framed as a starting draft for professional review.
## Version history
 
See [`RELEASE-HISTORY.txt`](RELEASE-HISTORY.txt) for what changed in each version. This README describes version 3.0.0.
 
## Disclaimer
 
This project provides frameworks and starting drafts. It is **not** legal, tax, accounting, investment or financial advice. Have a qualified professional (accountant, attorney, lender) review anything before you rely on it. The authors accept no liability for decisions made using it.
 
## License
 
Released under the [MIT License](LICENSE).
