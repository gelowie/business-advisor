# Balance Sheet Health Diagnosis

## Problem type

The user wants to know whether the business is financially sound — or something feels off (stretched payables, growing debt, "profitable but broke," a lender or investor asking questions) — and the answer lies in what the business owns and owes, not just in the income statement. Read `references/financial-core.md` sections 1–4 and 7.

## Diagnostic questions

- Latest balance sheet (and the one from 12 months ago, if available), plus the income statement for the same period?
- Receivables aging, inventory by age, list of loans (rate, term, collateral, personal guarantees, covenants)?
- Any unpaid taxes, payroll arrears, disputes, leases or guarantees not on the books?
- Owner draws/loans in and out during the period?
- What triggered the concern?

## Methodology

1. **Run integrity checks** (balance, cash tie-out, equity roll-forward). If they fail, stop and fix the inputs first.
2. **Assets — quality review:** receivables aging and collectability, inventory age and obsolescence, equipment condition, idle assets, truly free cash vs committed cash.
3. **Liabilities — obligation review:** separate operating vs financing vs contingent/hidden; check maturity match, rates, covenants, personal guarantees; flag stretched payables and tax arrears as hidden borrowing.
4. **Equity — claim review:** contributed capital, retained earnings, draws; compare book equity to likely value; note negative-equity meaning.
5. **Compute the core ratios** (current, quick, DSO/DIO/DPO and cash conversion cycle, debt-to-equity, interest coverage, DSCR) for both periods; show formula, inputs, result, trend.
6. **Rule causes in or out:** liquidity squeeze (timing), solvency problem (too much debt for the earnings), asset-quality problem (assets worth less than booked), or distribution problem (owner draws exceeding profit).
7. **Name the one or two dominant weaknesses** and the evidence; don't list every metric equally.
8. **Prescribe fixes tied to the cause:** collections, inventory reduction, refinancing/term-out, equity injection, asset sale, owner-draw policy, cost restructuring — each with estimated effect on the ratios.
9. **Rate overall health** (strong / adequate / fragile / critical) and state what would change the rating.

## Connects to (v1)

Produces a filled [Financial Health Check](../../templates/Finance and Fundraising/Financial Health Check.md) as its summary format, and feeds a [Cash Flow Forecast](../../templates/Finance and Fundraising/Cash Flow Forecast.md) for the recovery plan.

## Deliverable

Integrity-check results; asset, liability and equity quality findings; ratio table with trend; dominant-cause verdict with evidence; ranked fixes with projected ratio impact; health rating.

## Requirements

- No ratio is computed from inputs that failed integrity checks
- Findings are prioritized — one or two dominant causes, not a metric dump
- Hidden and contingent liabilities are asked about explicitly, never assumed absent
- Benchmarks are labeled rules of thumb and checked against the business type

## Related methodologies

- [Cash Flow Crisis Diagnosis](Cash Flow Crisis Diagnosis.md) — when the live problem is a cash shortfall
- [Working Capital Optimization](Working Capital Optimization.md) — when the weakness is cash tied up in receivables and stock
- [Funding Decision](Funding Decision.md) — when the fix requires new capital
- [Capital Audit](../Strategy and Governance/Capital Audit.md) — when the cause may lie outside money
