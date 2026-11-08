# Financial Health Check

## Summary

Reads the business's balance sheet and income statement and returns a plain-language health rating with the numbers behind it: liquidity, leverage, efficiency, profitability, and the one or two issues that matter most.

## Inputs

- **Balance sheet** — [cash, receivables, inventory, other current assets, fixed assets; payables, accrued items, short-term and long-term debt; equity]
- **Income statement** — [revenue, cost of goods sold, operating expenses, interest, taxes, net income]
- **Prior period** — [same figures from 12 months ago, if available]
- **Receivables aging and loan terms** — [overdue amounts; rate, term, personal guarantees]
- **Basis and currency** — [accrual or cash; currency; period covered]
- **Business type** — [service, digital, physical, local]

## Deliverable

1. Integrity check: does the balance sheet balance, and does cash agree across statements (or state what is missing)
2. Ratio table: current ratio, quick ratio, DSO, DIO, DPO, cash conversion cycle, gross and net margin, debt-to-equity, interest coverage, with formula, inputs, result, and trend vs the prior period
3. Asset, liability and equity quality notes (collectability, obsolescence, hidden obligations, owner draws)
4. The one or two biggest issues, with evidence
5. A health rating — strong, adequate, fragile or critical — and what would change it
6. The next three actions, each with an expected effect on the ratios

## Requirements

- Run the balance checks before computing any ratio; ask for corrected figures if they fail
- Show the formula and inputs for every ratio; label benchmarks as rules of thumb for the business type
- Don't invent figures; list what's missing and how it limits the reading
- State that this is a framework and a qualified accountant should confirm before decisions that depend on it

## Related templates

- [Cash Flow Forecast](Cash Flow Forecast.md)
- [Pricing Strategy Builder](Pricing Strategy Builder.md)
- [Funding Options Comparison](Funding Options Comparison.md)
