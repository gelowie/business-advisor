# Cash Flow Crisis Diagnosis

## Problem type

The user says something like "we're always tight on cash," "I don't know why we keep running low," or "revenue looks fine but I can't pay bills on time." This is not a request to *project* cash flow (that's v1's Cash Flow Forecast) — it's a request to explain *why* cash is tight when the surface numbers don't obviously say.

## Diagnostic questions

Ask what's actually needed to rule causes in or out — typically most, not all, of these come up:

- Is revenue growing, flat, or shrinking, and does that match how tight cash feels?
- How do you get paid — upfront, net-30/60, subscription, installments — and how often do customers pay late?
- Has anything changed recently: pricing, headcount, a big new customer, a new expense, seasonality?
- Are you spending ahead of revenue on purpose (growth bet) or is spending drifting without a clear reason?
- Do you know your burn rate and runway right now, even roughly?

## Methodology

1. **Separate the symptom from the mechanism.** "Cash is tight" can come from slow collections, thin margins, front-loaded costs, overspending relative to actual (not hoped-for) revenue, or rapid growth outpacing cash even while profitable. Don't accept the user's own theory uncritically — check it against the answers above.
2. **Rule candidates in or out** using the diagnostic answers: e.g. long payment terms + late-paying customers points to collections, not spending; healthy margins + high fixed costs relative to revenue points to overhead, not pricing.
3. **Identify the one or two causes that actually explain most of the gap** — resist naming every plausible factor equally; a real diagnosis prioritizes.
4. **Reason through realistic fixes for the actual cause**, not generic cash-flow advice (e.g. if the cause is collections: deposits, shorter terms, or invoicing sooner — not "cut costs," which wouldn't fix a collections problem).
5. **State the trade-off honestly** — e.g. shortening payment terms may cost a deal or two; front-loading invoices may strain a client relationship.

## Connects to (v1)

Once the cause is diagnosed and a fix direction is chosen, produce the result as a filled [Cash Flow Forecast](../../templates/Finance and Fundraising/Cash Flow Forecast.md) reflecting the fix (e.g. "with 15-day terms and a 20% deposit," not the generic version) — the diagnosis feeds the projection, it doesn't replace it. If pricing turns out to be the actual cause, connect to [Pricing Strategy Builder](../../templates/Finance and Fundraising/Pricing Strategy Builder.md) instead.

## Deliverable

1. **What's actually causing it** — the one or two real mechanisms, not a list of everything that could theoretically matter
2. **Why** — the reasoning tying the diagnostic answers to the cause
3. **The fix** — specific, tied to the actual cause
4. **The trade-off** — what the fix costs or risks
5. **The updated forecast** — via the connected v1 template, reflecting the fix

## Requirements

- Never recommend a generic "cut costs and raise prices" answer without the diagnosis actually pointing there
- If the diagnostic answers don't clearly point to one cause, say so and name what additional information would resolve it, rather than guessing
- Numbers used in the connected Cash Flow Forecast must be consistent with what the user has stated, not invented

## Related methodologies

- [Stalled Growth Diagnosis](../Marketing and Growth/Stalled Growth Diagnosis.md) — when tight cash and stalled growth are mentioned together, work through this one first (cash mechanics), then that one, in sequence per `moderate-layer.md`
- [Financial Statements and Planning](Financial Statements and Planning.md) — broader planning once the immediate crisis is diagnosed
- [Variance Analysis](Variance Analysis.md) — if the "crisis" is actually a one-off variance rather than an ongoing mechanism
