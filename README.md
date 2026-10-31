
<p align="center">
  <img src="https://i.ibb.co/9HD9Wxnn/logo.png" alt="Business Advisor logo" width="120" height="120" />
</p>
<h1 align="center">Business Advisor</h1>
 
<p align="center">
  <em>A portable AI skill that gives an AI assistant a structured business-consulting framework.<br>
  Adapted to the type of business you run, built on established business frameworks.</em>
</p>
<p align="center">
  <a href="SKILL.md">
    <img alt="Business Advisor: AI Skill" src="https://img.shields.io/badge/Business%20Advisor-AI%20Skill-0a66c2?style=flat-square" />
  </a>
  <a href="RELEASE-HISTORY.txt">
    <img alt="Version 3.2.0" src="https://img.shields.io/badge/Version-3.2.0-blue?style=flat-square" />
  </a>
  <a href="LICENSE">
    <img alt="License: MIT" src="https://img.shields.io/badge/License-MIT-green?style=flat-square" />
  </a>
  <a href="SKILL.md">
    <img alt="Format: Markdown" src="https://img.shields.io/badge/Format-Markdown-083fa1?style=flat-square&logo=markdown&logoColor=white" />
  </a>
  <a href="#-supported-business-domains">
    <img alt="Domains: 8" src="https://img.shields.io/badge/Domains-8-purple?style=flat-square" />
  </a>
  <a href="#-templates">
    <img alt="Templates: 20" src="https://img.shields.io/badge/Templates-20-orange?style=flat-square" />
  </a>
  <a href="#-deeper-methodologies">
    <img alt="Methodologies: 25" src="https://img.shields.io/badge/Methodologies-25-red?style=flat-square" />
  </a>
</p>
<p align="center">
  <a href="#-what-is-business-advisor">About</a> •
  <a href="#-key-features">Features</a> •
  <a href="#-installation">Installation</a> •
  <a href="#-usage--examples">Usage</a> •
  <a href="#-templates">Templates</a> •
  <a href="#-deeper-methodologies">Methodologies</a> •
  <a href="#-project-structure">Structure</a> •
  <a href="#-contributing">Contributing</a>
</p>
 
## 🚀 What is Business Advisor?
 
**Business Advisor is not an app, a SaaS product or a standalone chatbot.** It is a **portable AI skill**: a structured knowledge base and reasoning framework written in plain Markdown.
 
When it is loaded into a compatible AI assistant, the assistant follows a consistent process. It identifies the business type, consults domain-specific frameworks, uses a template when one fits, and applies a deeper diagnostic methodology when the problem needs one. Because it is plain text, you can also paste it into any AI model by hand.
 
**Why use it?**
A general-purpose assistant answers business questions without a fixed process. Business Advisor supplies one: it asks only the clarifying questions that change the advice, weighs competing explanations for complex problems, and ends every deliverable with a concrete next step tailored to your business model (for example, SaaS versus brick-and-mortar).
 
---
 
## ✨ Key Features
 
- 🌍 **8 business domains:** each backed by its own reference file with frameworks, formulas and deliverable formats.
- 🏢 **4 business-type lenses:** advice adapts to service, digital/SaaS, physical product or local brick-and-mortar businesses.
- 🧠 **3-tier handling:** routes requests from a single question, to deep single-problem diagnosis, to complex multi-problem cases, with a search-first rule at every tier.
- 📝 **20 fill-in templates:** ready-made structures for pitch decks, SOPs, SWOT analyses and more.
- 🔬 **25 deeper methodologies:** root-cause diagnostics for cash flow crises, stalled growth, strategic drift and more.
- 🧩 **A complex-problem framework:** 22 modules, ending in a mandatory final consistency check.
- 📂 **File and document tools:** instructions for reading, extracting and editing PDFs, spreadsheets, presentations and documents.
- ✅ **Recorded decisions, tests and checks:** 14 architecture decisions, 8 routing traces and 2 verification scripts.
- 🛡️ **Built-in caution:** legal, tax and compliance output is flagged as a starting draft for professional review.
---
 
## 🌍 Supported Business Domains
 
| Domain | Reference file | Covers |
| :--- | :--- | :--- |
| 🎯 **Strategy & Governance** | [`strategy-governance.md`](references/strategy-governance.md) | Go-to-market, Blue Ocean, Porter's Five Forces, SWOT, PESTLE, OKRs, entity selection, boards, risk and crisis management |
| 💰 **Finance & Fundraising** | [`finance-fundraising.md`](references/finance-fundraising.md) | Pitch decks, VC, angel and crowdfunding, cash flow, burn rate, break-even, cap tables, budgeting, COGS, pricing models |
| 📦 **Product Management** | [`product-management.md`](references/product-management.md) | MVP scoping, roadmaps, feature prioritization, user research, product-market fit scoring, Agile and Scrum |
| 📈 **Marketing & Growth** | [`marketing-growth.md`](references/marketing-growth.md) | Brand positioning, personas, SEO and PPC, email, content calendars, CAC, LTV, conversion optimization |
| 🤝 **Sales & BizDev** | [`sales-bizdev.md`](references/sales-bizdev.md) | Funnels, lead scoring, CRM workflows, discovery scripts, objection handling, proposals, partnerships |
| ⚙️ **Operations & Supply Chain** | [`operations-supply-chain.md`](references/operations-supply-chain.md) | SOPs, workflow mapping, vendor selection, procurement, inventory, Six Sigma, SLAs, root-cause analysis |
| 👥 **HR & Culture** | [`hr-culture.md`](references/hr-culture.md) | Job descriptions, interview rubrics, onboarding, performance reviews, compensation, workplace policy |
| ⚖️ **Legal, IP & Compliance** | [`legal-ip-compliance.md`](references/legal-ip-compliance.md) | NDAs, MSAs, SOWs, trademark, copyright, trade secrets, GDPR, CCPA, HIPAA |
 
Requests often span several domains (for example, pricing a SaaS product and pitching it to investors). The skill reads every relevant reference file.
 
---
 
## 🏢 Business Types
 
The skill adapts every answer to one of four business types. If the type is unclear and would change the advice, it asks one brief question. If it can be inferred, it states its assumption in passing. The full lens for each type is in [`business-types.md`](references/business-types.md).
 
| Type | Examples | Changes the lens on... |
| :--- | :--- | :--- |
| 🛠️ **Service-based** | Agencies, consultancies, freelancers, coaches, accounting and legal firms | Proposals, retainers, billable hours, client management |
| 💻 **Digital / SaaS** | SaaS, apps, online courses, digital templates, newsletters | CAC and LTV, churn, freemium conversion, roadmap prioritization |
| 📦 **Physical / E-commerce** | Online stores, boutiques, manufacturing, dropshipping | COGS, supply chain, inventory turnover, fulfillment |
| 🏪 **Local brick-and-mortar** | Cafes, gyms, salons, dental offices, restaurants, repair shops | Local SEO, foot traffic, shift scheduling, community partnerships |
 
When domain and business-type advice conflict, the business-type lens decides emphasis and tone, not the underlying framework. A SWOT for a cafe still has four quadrants; it weights foot traffic and staffing over cap tables and churn.
 
---
 
## ⚙️ How It Works
 
`assets/routing.md` decides which tier a request belongs to, and `assets/selection.md` picks the specific resources.
 
| Tier | Handles | Resources used |
| :--- | :--- | :--- |
| **Tier 1: Everyday** | A single, straightforward business question in one domain | `assets/templates/`, with `references/` as fallback frameworks |
| **Tier 2: Diagnostic** | Deeper, multi-round diagnosis of **one problem** at a time | 25 methodologies in domain folders, plus the operating contract `moderate-layer.md` |
| **Tier 3: Complex** | Multiple connected problems, competing hypotheses, cross-domain dependencies | `assets/templates3/`, `assets/brains/` and `assets/multi-hands/` |
 
Tier 2 can use Tier 1 resources, and Tier 3 can use both. Tiers 1 and 2 never depend on Tier 3. Tier selection is a behavioral heuristic, not a guaranteed classifier.
 
**Everyday requests** follow four steps: identify the business type, identify the domain and read its reference file, use a template if one fits, then answer like a consultant with concrete numbers, flagged assumptions and a clear "what to do next".
 
**Deeper single-problem requests** take over when a root cause must be diagnosed rather than a document filled in. The skill asks several rounds of real clarifying questions, applies a methodology for the specific problem, and uses Tier 1 templates as support.
 
**Complex problems** follow the sequence in [`v3-pipeline.md`](assets/templates3/v3-pipeline.md). Not every problem runs every stage.
 
```text
Routing
  -> Resource selection (Tier 3 first, then Tier 2, then Tier 1 as support)
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
 
---
 
## 📦 Installation
 
The skill is a folder with `SKILL.md` at its top level. The `name` field in `SKILL.md` is `business-advisor`, so name the folder `business-advisor`.
 
### Option A: AI tools that support skills
1. Download this repository and rename the folder to `business-advisor`.
2. Place it in your tool's skills location, or use the tool's skill-upload feature if it has one.
3. Enable the skill, then ask a business question.
Each tool names and locates its skills folder differently, so check your tool's documentation.
 
### Option B: any AI model (manual use)
1. Paste the contents of [`SKILL.md`](SKILL.md) into your assistant as instructions.
2. When a task needs a specific area, paste the matching file from [`references/`](references/index.md) or `assets/` as context.
---
 
## 💡 Usage & Examples
 
### Example prompts
- **Single-domain:** *"Help me price my SaaS and outline a pitch deck."*
- **Template-driven:** *"Write a one-page SOP for handling customer returns."*
- **Deep diagnostic:** *"We are profitable on paper, but there is never any cash. Why?"*
- **Complex multi-problem:** *"Sales are down, cash is tight and two key staff are leaving. Where do I start?"*
- **Decision between options:** *"We are deciding between a second location and investing in online sales. Compare the options and give me a sequenced plan."*
- **File analysis:** *"Read this PDF contract and summarize the payment terms."*
### Using a template directly
Every template is a Markdown file with the same five sections: **Summary, Inputs, Deliverable, Requirements, Related templates**. Fill in the Inputs and give the template to your assistant, or just describe what you need and the skill picks a matching template when one fits. This is the structure of [`SOP Builder.md`](<assets/templates/Operations and Supply Chain/SOP Builder.md>):
 
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
 
---
 
## 📝 Templates
 
`assets/templates/` holds 20 templates in the same eight domains as the reference files. Supporting files sit beside them:
 
- [`index.md`](assets/templates/index.md): the template map and how templates relate to each other
- [`base-layer.md`](assets/templates/base-layer.md): the operating contract, covering scope, validation, failure handling and how multiple templates are combined
- [`style.md`](assets/templates/style.md): tone and formatting
- [`references/index.md`](references/index.md): connects each domain reference to the templates in that domain
#### Finance and Fundraising
 
| Template | What it produces |
|---|---|
| [Cash Flow Forecast](<assets/templates/Finance and Fundraising/Cash Flow Forecast.md>) | Builds a rolling cash flow forecast and states the runway and risk picture in plain terms. |
| [Pitch Deck Outline](<assets/templates/Finance and Fundraising/Pitch Deck Outline.md>) | Drafts a fundable pitch deck outline slide by slide, with actual content on each slide rather than just headers. |
| [Pricing Strategy Builder](<assets/templates/Finance and Fundraising/Pricing Strategy Builder.md>) | Designs a pricing or tier structure grounded in the value delivered, rather than guesswork or matching competitor prices. |
 
#### HR and Culture
 
| Template | What it produces |
|---|---|
| [Job Description Writer](<assets/templates/HR and Culture/Job Description Writer.md>) | Writes a job description that leads with real first-90-days ownership rather than a generic list of responsibilities. |
| [Structured Interview Rubric](<assets/templates/HR and Culture/Structured Interview Rubric.md>) | Builds a structured interview scoring rubric tied to the competencies that actually predict success in the role. |
 
#### Legal and Compliance
 
| Template | What it produces |
|---|---|
| [NDA Builder](<assets/templates/Legal and Compliance/NDA Builder.md>) | Drafts a starting NDA, mutual or one-way, with every key term flagged for confirmation. This is a starting point for review, not a substitute for an attorney. |
| [SOW Builder](<assets/templates/Legal and Compliance/SOW Builder.md>) | Drafts a Statement of Work with enough specificity to avoid scope-creep disputes. This is a starting point for review, not a substitute for an attorney. |
 
#### Marketing and Growth
 
| Template | What it produces |
|---|---|
| [Brand Positioning Statement](<assets/templates/Marketing and Growth/Brand Positioning Statement.md>) | Produces a specific, defensible brand positioning statement and a supporting persona sketch — not generic marketing language. |
| [Content Calendar Builder](<assets/templates/Marketing and Growth/Content Calendar Builder.md>) | Builds a content calendar organized around recurring pillars, so output stays consistent instead of a scramble for one-off ideas. |
 
#### Operations and Supply Chain
 
| Template | What it produces |
|---|---|
| [SOP Builder](<assets/templates/Operations and Supply Chain/SOP Builder.md>) | Turns a process description into a clear, numbered standard operating procedure that a first-time reader could follow unaided. |
| [Vendor Selection Matrix](<assets/templates/Operations and Supply Chain/Vendor Selection Matrix.md>) | Builds a weighted vendor comparison matrix, so the choice isn't decided on price alone. |
 
#### Product Management
 
| Template | What it produces |
|---|---|
| [MVP Scope Document](<assets/templates/Product Management/MVP Scope Document.md>) | Scopes a minimum viable product around the single riskiest assumption, cutting everything that doesn't test it. |
| [Roadmap Prioritization Worksheet](<assets/templates/Product Management/Roadmap Prioritization Worksheet.md>) | Scores and ranks a list of features or initiatives using RICE or ICE, so priority is decided by data rather than by whoever asked loudest. |
 
#### Sales and Business Development
 
| Template | What it produces |
|---|---|
| [Client Proposal Writer](<assets/templates/Sales and Business Development/Client Proposal Writer.md>) | Writes a client proposal that opens with the client's problem in their own words and ties pricing to value rather than a line-item list. |
| [Sales Discovery Call Script](<assets/templates/Sales and Business Development/Sales Discovery Call Script.md>) | Writes a discovery call script that surfaces real pain and gets it quantified before any pitching happens. |
 
#### Strategy and Governance
 
| Template | What it produces |
|---|---|
| [Competitive Landscape Analysis](<assets/templates/Strategy and Governance/Competitive Landscape Analysis.md>) | Produces a strategic competitive analysis — positioning, market gaps, and specific moves to make, not a feature checklist. |
| [Executive Summary Builder](<assets/templates/Strategy and Governance/Executive Summary Builder.md>) | Distills raw data, notes, or findings into a one-page executive summary with a clear bottom line and a recommended action. |
| [Market Entry Strategy](<assets/templates/Strategy and Governance/Market Entry Strategy.md>) | Builds a realistic market entry plan — sizing, beachhead targeting, a first-90-days plan, and clear kill criteria. |
| [Quarterly Business Review Prep](<assets/templates/Strategy and Governance/Quarterly Business Review Prep.md>) | Prepares a quarterly business review that leads with the narrative, faces misses honestly, and closes with clear asks. |
| [SWOT Analysis and Action Plan](<assets/templates/Strategy and Governance/SWOT Analysis and Action Plan.md>) | Runs a SWOT analysis that goes past the obvious four lists — every point gets a strategic "so what" and a concrete "now what." |
 
---
 
## 🔬 Deeper Methodologies
 
Tier 2 holds 25 methodologies that handle one problem at a time, in depth. They sit in domain folders under `assets/`, with an index that maps them and a `moderate-layer.md` that defines how the tier operates: how a request qualifies, how diagnostic questioning works, how Tier 1 templates are used as support, and when to hand off to the complex-problem framework.
 
| Domain | Methodologies |
|---|---|
| Finance and Fundraising (4) | Cash flow crisis diagnosis, financial statements and planning, SOX testing, variance analysis |
| Marketing and Growth (5) | Stalled growth diagnosis, brand review, campaign plan, email sequence design, performance report |
| Sales and Business Development (2) | Account research, pipeline review |
| Product Management (2) | Roadmap update, specification writing |
| Strategy and Governance (2) | Strategic drift diagnosis, draft-first strategy validation |
| Bio-Research (2) | Scientific problem selection, business-focused research |
| Design (3) | Design critique, design system, research synthesis |
| Engineering (5) | Business-architecture mapping, problem debugging, deploy checklist, documentation, system design |
 
The Engineering folder applies engineering methods to business problems, such as mapping a business problem end to end or designing an operating workflow. It does not cover software engineering.
 
---
 
## 🧩 Complex-Problem Framework
 
Tier 3 is a set of 22 modules: an 11-module process, 10 reasoning modules and one domain-coordination module. Multi-Hands decides which domains participate in a problem; Multi-Brains reconciles different methodologies once they do.
 
#### Process modules (`assets/templates3/`)
 
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
 
#### Reasoning modules (`assets/brains/`)
 
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
 
#### Domain coordination (`assets/multi-hands/`)
 
| Module | What it does |
|---|---|
| [Domain Coordination (Multi-Hands)](assets/multi-hands/domain-coordination.md) | Decides which domains participate in a complex problem. Multi-Brains then reconciles the methodologies. |
 
---
 
## 📂 File & Document Tools
 
[`tools/`](tools/index.md) covers file operations only: reading, viewing, extracting from, editing, converting and creating files. It is not a source of business knowledge, and it is used only when a request involves a file.
 
| Folder | File types |
|---|---|
| `pdf/` | PDF: open, view, annotate, fill and edit |
| [`documents/`](tools/documents/Documents.md) | DOC, DOCX, TXT, Markdown |
| [`spreadsheets/`](tools/spreadsheets/Spreadsheets.md) | XLS, XLSX, CSV |
| [`presentations/`](tools/presentations/Presentations.md) | PPT, PPTX |
| [`web-documents/`](<tools/web-documents/Web Documents.md>) | HTML |
| [`data/`](<tools/data/Data Files.md>) | JSON, XML |
 
---
 
## ✅ Verification & Records
 
Two scripts in `scripts/` check the project's own consistency. Run them from the project root with `bash`:
 
- `bash scripts/verify-links.sh` confirms that every relative Markdown link resolves to a real file.
- The second script confirms that Tier 1 and the tools remain fully usable on their own, with no dependency on the deeper layers.
Both report PASS or FAIL and list any offending lines. Beyond the scripts:
 
- [`TESTS.md`](TESTS.md) documents 8 routing and selection traces.
- [`DECISIONS.md`](DECISIONS.md) records 14 architecture decisions with their reasons.
- [`CHANGELOG.md`](CHANGELOG.md) is the project's development log.
---
 
## 📁 Project Structure
 
```text
business-advisor/
├── SKILL.md                 # Entry point: how the skill works
├── LICENSE                  # MIT license
├── README.md                # This file
├── CHANGELOG.md             # Development log
├── RELEASE-HISTORY.txt      # Version-by-version release history
├── DECISIONS.md             # Record of architecture decisions
├── TESTS.md                 # Routing and selection traces
├── references/              # 10 files: 8 domain references, business types, index
├── scripts/                 # 2 verification scripts
├── tools/                   # File and document operations (10 files)
└── assets/
    ├── routing.md           # Which tier owns a request
    ├── selection.md         # How resources are chosen
    ├── templates/           # 20 templates in 8 domain folders, plus index, base layer and style
    ├── (Tier 2 folder)      # 25 methodologies in domain folders, plus index and moderate-layer.md
    ├── templates3/          # Complex-problem process (11 modules)
    ├── brains/              # Reasoning modules (10)
    └── multi-hands/         # Domain coordination (1)
```
 
---
 
## ⚠️ Limitations & Disclaimer
 
- 🚨 **Not professional advice.** Output is a framework or starting draft. Contracts, tax and compliance material should be reviewed by a qualified professional (accountant, attorney, lender) before you rely on it. The authors accept no liability for decisions made using it.
- 🎲 **Routing is a heuristic.** Tier selection and search-first lookup are workflow requirements written into the skill, not a technical guarantee that a model will follow them every time.
- 🧪 **Tests are documented traces.** `TESTS.md` records 8 reasoning traces that confirm the rules do not contradict each other. They do not prove that every real request is handled identically, and they do not cover the complex-problem framework.
- 📉 **Uneven coverage.** HR and Culture and Legal and Compliance have templates and references but few or no deeper methodologies. Requests there are handled with Tier 1.
- 🇺🇸 **US-leaning examples.** Several references use US concepts (LLC, C-Corp, CCPA, HIPAA). Adapt them to your country and check local rules.
- 📄 **File tools depend on the host.** Working with PDFs and other files requires an AI tool that can open and edit them.
- 🤖 **Quality depends on your inputs and on the AI model** that loads the skill. The skill improves structure; it cannot verify your numbers.
---
 
## 🤝 Contributing
 
Corrections and suggestions are welcome. Please keep to these rules:
 
- Follow the existing template structure (Summary, Inputs, Deliverable, Requirements, Related templates).
- Keep reference content concrete and avoid invented statistics or unsourced figures.
- Do not include real client names, real financial figures or other private data in examples.
- Keep legal and tax content framed as a starting draft for professional review.
- Run both scripts in `scripts/` after editing and make sure both report PASS.
---
 
## 🕑 Version History
 
See [`RELEASE-HISTORY.txt`](RELEASE-HISTORY.txt) for what changed in each version. This README describes version 3.2.0.
 
---
 
## 📜 License
 
Released under the [MIT License](LICENSE).
