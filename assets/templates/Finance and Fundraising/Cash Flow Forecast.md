# Cash Flow Forecast

## Summary

Builds a rolling cash flow forecast and states the runway and risk picture in plain terms.

## Inputs

- **Current cash balance** — [amount]
- **Monthly income** — [amount and trend]
- **Fixed monthly costs** — [rent, payroll, subscriptions, etc.]
- **Known upcoming costs** — [any large one-time or seasonal expenses]
- **Timing considerations** — [e.g. customers pay on a delay, large annual costs land in a specific month]
- **Forecast horizon** — [e.g. next 13 weeks, next 12 months]

## Deliverable

1. A period-by-period projection of cash in, cash out, and ending balance for the full horizon
2. Gross burn and net burn per period
3. Runway in months at the current net burn rate
4. The single biggest driver of cash risk (a concentrated customer, a timing mismatch, a seasonal dip)
5. Two scenarios — the current trajectory, and one adjustment (a cost cut or faster collections) showing the resulting runway change

## Requirements

- Keep cash timing separate from revenue recognition — don't assume revenue lands as cash in the same period
- State runway explicitly in months, and flag it clearly if it's under six months
- Use only the figures provided; ask for anything essential that's missing rather than inventing numbers
- Present the forecast as a table

## Related templates

- [Pricing Strategy Builder](Pricing Strategy Builder.md)
- [Quarterly Business Review Prep](../Strategy and Governance/Quarterly Business Review Prep.md)

## Deepened by (v2)

When the question is *why* cash is tight rather than a fresh projection, see [Cash Flow Crisis Diagnosis](../../templates2/Finance and Fundraising/Cash Flow Crisis Diagnosis.md). For explaining a gap against a prior forecast, see [Variance Analysis](../../templates2/Finance and Fundraising/Variance Analysis.md). Full exchange rule in `assets/routing.md`.
