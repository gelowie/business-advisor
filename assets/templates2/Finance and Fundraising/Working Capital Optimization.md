# Working Capital Optimization

## Problem type

The business is profitable or growing but cash is trapped — in unpaid invoices, unsold stock, or prepayments — or growth itself is draining cash. The question is how to shorten the cash conversion cycle without damaging customers or suppliers. Read `references/financial-core.md` §7 and §9.

## Diagnostic questions

- Payment terms offered to customers vs actual days to collect; top 10 overdue accounts?
- Inventory by age and turnover; lead time and minimum order sizes from suppliers?
- Supplier payment terms and whether they are being used or exceeded?
- Seasonality: when does cash peak and trough?
- Growth plan for the next 12 months (growth increases the cash requirement)?

## Methodology

1. **Measure the cycle:** DSO, DIO, DPO and cash conversion cycle now and 12 months ago; translate each day of improvement into dollars of cash (daily revenue or daily COGS × days).
2. **Locate the biggest pool of trapped cash:** receivables, inventory, or short supplier terms — whichever is largest in dollars, not in percentage.
3. **Receivables levers:** deposits, milestone billing, tighter terms, invoice at delivery, automated reminders, late fees where enforceable, early-payment discount (cost it as an annualized rate before offering), concentration limits, factoring or credit insurance (price it).
4. **Inventory levers:** reorder points by item, cut dead stock, smaller more frequent orders where supplier terms allow, drop-ship or pre-order for slow lines, consolidate suppliers for terms.
5. **Payables levers:** use full agreed terms, negotiate longer terms on large suppliers, avoid stretching beyond terms (damages supply and credit).
6. **Quantify the growth funding gap:** extra revenue × cycle days ÷ 365 = cash needed; show where the money comes from.
7. **Sequence the moves** by cash released per effort and by relationship risk; set a target cycle in days and a review cadence.
8. **If still short**, hand the remaining gap to [Funding Decision](Funding Decision.md).

## Connects to (v1)

Produces the timing inputs for a [Cash Flow Forecast](../../templates/Finance and Fundraising/Cash Flow Forecast.md); for retail/e-commerce also informs [Vendor Selection Matrix](../../templates/Operations and Supply Chain/Vendor Selection Matrix.md) (terms and minimums).

## Deliverable

Cycle metrics with dollar value per day, pool-of-cash ranking, lever table with cash released and risk, target cycle, growth funding gap, and a sequenced action plan.

## Requirements

- Every lever shows cash released in dollars
- Early-payment discounts and factoring are costed as annualized rates
- No lever damages supplier terms or key customers without saying so
- Growth is modeled as a cash user, not only a revenue source

## Related methodologies

- [Cash Flow Crisis Diagnosis](Cash Flow Crisis Diagnosis.md) — when the cause of tightness is still unknown
- [Balance Sheet Health Diagnosis](Balance Sheet Health Diagnosis.md) — wider solvency picture
- [Funding Decision](Funding Decision.md) — when optimization isn't enough
