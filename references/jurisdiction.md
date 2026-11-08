# Jurisdiction Layer — which rules apply

Legal, tax, employment, privacy and fundraising rules depend on where the business, its owners, its staff, its customers and its investors are. This file sets the default (United States) and the procedure for anything else. It supports `legal-ip-compliance.md` and the fundraising and tax parts of `finance-fundraising.md` and `financial-core.md`.

## The rule

1. **Whenever an answer touches legal, tax, employment, privacy, securities or licensing, state the jurisdiction assumed** in one line — e.g. "Assuming US federal law plus [state]; tell me if that's wrong."
2. **Infer it from the conversation** (or memory, if available). If it is unclear and it would change the answer, ask once: "Which country (and state or province) is the business registered in?"
3. **Default to the US layer below** only when nothing indicates otherwise. If the business, owners, staff, customers or investors are elsewhere, use the non-US procedure.
4. **Never quote a current threshold, rate, filing deadline, cap or exemption from memory.** These change. Verify with a web search of official sources when search is available, give the source and the date, and otherwise label the figure "unverified — confirm before relying."
5. Everything here is a framework, not legal or tax advice. Say so plainly for contract-like or filing-like output, and recommend a licensed attorney or CPA (or the local equivalent).

## US layer (default)

**Entity choice** — compare on liability, taxation, fundraising fit, admin burden:
- *Sole proprietorship / general partnership:* no separation of owner and business; personal liability.
- *LLC:* liability protection; pass-through taxation by default; flexible management; may elect corporate tax treatment.
- *S corporation:* a **tax election**, not a separate entity type; pass-through; limits on shareholders and share classes (including no nonresident alien shareholders); owner-employees must be paid a reasonable salary — a frequent audit issue.
- *C corporation:* separate taxpayer (corporate tax, then tax on dividends); the usual structure for venture-backed companies; Delaware is common for fundraising, but the company is still registered and taxed where it operates. Qualified-small-business-stock treatment may be relevant — verify current rules.
- State registration, annual fees and foreign-qualification when operating in other states.

**Tax layers to check:** federal income tax; state income or franchise tax; self-employment tax for owners of pass-through businesses; payroll taxes (federal and state unemployment, Social Security and Medicare withholding); sales and use tax (economic-nexus rules mean remote sellers can owe tax in states where they have no office — thresholds vary by state); estimated quarterly payments; local taxes and licenses.

**Fundraising (securities law):** selling equity or convertible instruments requires a registration or an exemption. Common routes: Regulation D Rule 506(b) (no general solicitation; mostly accredited investors), Rule 506(c) (general solicitation allowed; all buyers must be accredited and verified), Regulation Crowdfunding (through a registered portal; annual raise cap — verify), Regulation A, plus state "blue sky" notice filings and Form D. Instruments: SAFEs, convertible notes, priced equity rounds. Option grants need a defensible valuation (409A). The accredited-investor definition and caps change — verify.

**Employment:** employee vs independent-contractor classification (federal tests plus stricter state tests such as the ABC test in some states) — misclassification is a major exposure; minimum wage and overtime rules, with exempt vs non-exempt status; onboarding forms, workers' compensation, state leave laws; non-compete enforceability varies sharply by state and has been in flux — verify.

**IP:** trademark rights arise from use but federal registration strengthens them; copyright exists on creation but registration is generally required before suing and affects remedies; patents are time-sensitive (filing deadlines after public disclosure); trade secrets need reasonable secrecy measures. **Contractors and employees must sign IP-assignment agreements** or the business may not own what they create.

**Privacy, marketing and sector rules:** state privacy laws (e.g. California's) apply by revenue/data thresholds — verify; HIPAA for health data handled by covered entities and their associates; COPPA for children's data; CAN-SPAM and TCPA for email and texting; PCI-DSS for card data; ADA accessibility for customer-facing sites and premises; industry licenses and permits. Federal beneficial-ownership reporting rules have changed repeatedly — verify current status.

**Contracts:** governing law and venue, indemnity, limitation of liability, termination, assignment, IP ownership, payment terms, dispute resolution.

## Non-US procedure

Do not substitute US rules and do not guess local law. Instead:

1. Ask for the **country and subnational region** (state, province, prefecture, emirate, etc.), the entity type, and where customers, staff and investors are.
2. Run the **jurisdiction question set** below, using official sources found by web search (tax authority, company registry, labor ministry, data-protection regulator, securities regulator) and state the source and date.
3. Present the answer as: what the local rule is, what it means for this business, what to confirm with a **local** professional.

**Jurisdiction question set**
- Entity forms: which exist, liability protection, minimum capital, registration steps, foreign-ownership limits
- Taxes: corporate and personal income, VAT/GST/consumption tax (registration thresholds, invoicing or e-invoicing mandates), withholding on payments to and from abroad, payroll and social contributions
- Employment: contract types, notice and severance, mandatory benefits, working-time rules, contractor classification
- Data protection: the governing regime and its cross-border transfer rules
- Fundraising: who may raise from whom, crowdfunding and private-placement rules, foreign-investor approvals
- Licensing: sector permits, import/export, professional registrations
- IP: registration systems (first-to-file vs first-to-use), enforcement, language requirements
- Accounting and reporting: local GAAP vs IFRS vs US GAAP, filing deadlines, audit thresholds
- Money: currency controls, banking access, payment-processor availability

## Cross-border businesses

If the business sells, hires, holds assets or raises money in more than one country, flag: tax residence and permanent-establishment risk, treaty and withholding effects, transfer pricing between related entities, cross-border data transfers, sanctions and export controls, and conflicting contract-law choices. These need a professional with cross-border experience; give a structured list of questions to bring to them.
