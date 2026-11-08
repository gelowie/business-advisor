# Multi-Problem Diagnosis

## Problem type

Several distinct problems have surfaced at once (e.g. "cash is tight, staff keep leaving, and reviews are dropping"). One blended recommendation would blur their different causes — but treating them as unrelated can miss a single cause behind several of them. This method separates them first, then tests for a shared root cause.

## Diagnostic questions

- What is the full list of problems, in the user's own words, and which one hurts most right now?
- When did each start? Did two or more start around the same time or after the same change?
- What has already been tried, and what happened?
- Which numbers exist for each problem (even rough ones)?

## Methodology

1. **List each problem separately** — one line each, with its symptom and any number attached. Don't merge.
2. **Find each problem's most likely direct cause**, stating the evidence for it and how confident that evidence is.
3. **Run the shared-cause test.** For every pair of problems ask: did they start together, do they move together, or does one plausibly produce the other? If three or more point to the same upstream factor (a pricing decision, a key hire, a supplier change, an owner bottleneck, a capital shortfall — see `references/capitals.md`), name that factor as a *candidate* root cause and say what evidence would confirm or kill it. Never declare a shared cause without evidence; a coincidence is not a cause.
4. **Give each problem its own fix** with concrete steps, an owner, and a due date — plus, if a shared cause is confirmed, one upstream fix that should shrink several problems at once.
5. **Prioritize by money and reversibility:** fix first what is costing the most cash per month or threatening survival; do cheap reversible fixes before expensive irreversible ones.
6. **Add recurrence prevention** for each fix.

## Connects to (v1)

No single v1 template. Each fix feeds whichever v1 template matches its domain (a pricing problem feeds [Pricing Strategy Builder](../../templates/Finance and Fundraising/Pricing Strategy Builder.md); a cash problem feeds [Cash Flow Forecast](../../templates/Finance and Fundraising/Cash Flow Forecast.md)).

## Deliverable

A numbered problem → cause → fix table, a short "shared root cause" verdict (confirmed / candidate / ruled out, with evidence), and a ranked action order.

## Requirements

- Unrelated problems are never merged into one vague solution
- A shared root cause is labeled confirmed only with evidence; otherwise labeled candidate
- Every fix has concrete steps and a recurrence-prevention note
- Priorities are ranked by cash impact and reversibility, not by how easy the fix sounds

## Related methodologies

- [Business Architecture](Business Architecture.md) — for a structural map once the causes are known
- [Capital Audit](../Strategy and Governance/Capital Audit.md) — when the shared cause may sit in people, relationships, IP, equipment or the environment rather than in money
- [Balance Sheet Health Diagnosis](../Finance and Fundraising/Balance Sheet Health Diagnosis.md) — when one of the problems is financial strain
