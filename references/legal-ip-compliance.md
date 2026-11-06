# Legal, Intellectual Property & Compliance

**Standing caveat for this entire domain:** every document and framework here is a starting draft, not legal advice, and should be reviewed by a licensed attorney (and, for tax-adjacent items, a CPA) before being relied on or sent to a counterparty. Say this explicitly whenever producing a contract-like deliverable — don't let the polish of the output imply it's been legally vetted.

## Contract Templates

- **Non-Disclosure Agreements (NDAs):** Mutual (both sides share confidential info) vs. one-way (only one side discloses) — pick based on who's actually sharing what. Key terms to always confirm with the user before drafting: what counts as confidential, how long the obligation lasts (2-5 years is typical, indefinite for trade secrets), and any carve-outs (info that was already public, already known, or independently developed).
- **Master Service Agreements (MSAs):** The MSA holds the terms that don't change per project (payment terms, IP ownership, liability limits, termination rights); individual Statements of Work sit underneath it for project-specific scope. Drafting an MSA without a clear SOW process to pair it with usually creates ambiguity about what's actually been agreed to for any given engagement.
- **Statements of Work (SOW):** Should always include: specific deliverables (not vague outcomes), timeline/milestones, acceptance criteria (how "done" is judged), payment schedule tied to milestones, and what happens on scope change (change-order process). Vague SOWs are the single biggest driver of client disputes in service businesses.

## IP Protection

- **Trademark filing checklists:** Clear the mark first (search existing federal/state trademarks and common-law use) before filing or investing in branding around it. File in the relevant classes for actual current and near-term planned use — overly broad class filing adds cost without corresponding protection.
- **Copyright strategies:** Copyright exists automatically on creation for original creative work, but registration is required before suing for infringement (in the US) and unlocks statutory damages — worth doing for core creative/brand assets, not necessarily everything produced.
- **Trade secret protocols:** Requires demonstrating reasonable steps to maintain secrecy (access controls, NDAs, marking materials confidential) — a "trade secret" with no protective measures around it is weak to unenforceable if ever challenged.

## Data Privacy

- **GDPR (EU):** Applies if the business processes personal data of anyone in the EU, regardless of where the business is based. Requires a lawful basis for processing, a clear privacy policy, data subject rights (access, deletion, portability), and breach notification within 72 hours.
- **CCPA/CPRA (California):** Applies based on revenue/data-volume thresholds for businesses handling California residents' data. Requires disclosure of data collected/sold, an opt-out mechanism ("Do Not Sell or Share My Personal Information"), and honoring deletion requests.
- **HIPAA (US healthcare):** Applies to "covered entities" and their "business associates" handling protected health information (PHI). Requires specific administrative, physical, and technical safeguards, and Business Associate Agreements (BAAs) with any vendor touching PHI — this one has real regulatory teeth and should be flagged early if the business touches health data at all, even indirectly.

## Deliverable formats this domain commonly needs

NDA builder, SOW builder — templates in `assets/templates/Legal and Compliance/`.
