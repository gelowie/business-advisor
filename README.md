# Business Advisor

> A portable AI skill that acts as a business consultant for owners and founders, adapted to the type of business you run.

![License: MIT](https://img.shields.io/badge/license-MIT-green.svg)
![Version](https://img.shields.io/badge/version-2.3.0-blue.svg)

Business Advisor is a set of instructions, reference files, fill-in templates and deeper methodologies (the `SKILL.md` format) that a compatible AI assistant or agent can load to give better business advice. It is plain Markdown and text, so it also works as a manual knowledge base for any AI model.

## What it covers

| Domain | Topics |
|---|---|
| Strategy and governance | Go-to-market, SWOT, PESTLE, OKRs, entity choice, risk |
| Finance, accounting and fundraising | Pitch decks, cash flow, burn rate, break-even, pricing |
| Product management | MVP scoping, roadmaps, prioritization, product-market fit |
| Marketing and growth | Positioning, personas, SEO and ads, email, CAC and LTV |
| Sales and business development | Funnels, discovery, objections, proposals, partnerships |
| Operations and supply chain | SOPs, vendors, inventory, root-cause analysis |
| HR and culture | Job descriptions, interviews, onboarding, reviews, policy |
| Legal, IP and compliance | NDAs, MSAs, SOWs, IP basics, privacy rules |

## Adapts to your business type

Service-based, digital product/SaaS, physical product/e-commerce, and local brick-and-mortar. Each type changes which metrics and advice matter most.

## Two levels of help

- **Templates:** 20 fill-in templates for single tasks, such as an SOP, a cash flow forecast or a pitch deck outline.
- **Deeper methodologies:** step-by-step methods for complex single problems, organized by domain, such as a cash flow crisis diagnosis or a stalled growth diagnosis.
- **Routing and selection:** written rules for deciding when a request needs a template, a methodology, or just a direct answer.

## Installation

The skill is a folder with `SKILL.md` at its top level.

**Option A: AI tools that support skills.** Download this repository, place it in a folder named `business-advisor` inside your tool's skills location (or use its skill-upload feature), and enable it. Each tool names and locates its skills folder differently, so check your tool's documentation.

**Option B: any AI model.** Paste the contents of `SKILL.md` into your assistant as instructions. When a task needs a specific area, paste the matching file from `references/` or `assets/`. For fixed formats, `tools/` holds guidance for PDFs, documents, presentations, spreadsheets, data files and web documents.

## Repository layout

```
├── SKILL.md               Entry point: how the skill works
├── LICENSE                MIT license
├── CHANGELOG.md           Development log of the project
├── RELEASE-HISTORY.txt    Version-by-version release history
├── DECISIONS.md           Record of design decisions
├── TESTS.md               Routing and selection test cases
├── references/            Domain knowledge and an index
├── assets/                Routing, selection, templates and deeper methodologies
├── tools/                 File-handling guidance
└── scripts/               Verification scripts (link check and layer-separation check)
```

## Verification

Run `bash scripts/verify-links.sh` to confirm that every relative Markdown link resolves. The other script in `scripts/` checks that the layers stay cleanly separated. Both are described at the top of each file.

## Example prompts

- "Help me price my SaaS and outline a pitch deck."
- "Write a one-page SOP for handling customer returns."
- "Draft a structured interview rubric for a sales hire."
- "Do a SWOT analysis for my cafe and turn it into an action plan."

## Disclaimer

This project provides frameworks and starting drafts. It is **not** legal, tax, accounting, investment or financial advice. Have a qualified professional review anything before you rely on it.

## License

Released under the [MIT License](LICENSE).
