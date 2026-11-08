# Financial Statements and Planning

## Problem type

The user needs financial statements built, read or projected, or a financial plan for the next 12–36 months — broader than one cash shortfall ([Cash Flow Crisis Diagnosis](Cash Flow Crisis Diagnosis.md)), one budget gap ([Variance Analysis](Variance Analysis.md)), or one structural weakness ([Balance Sheet Health Diagnosis](Balance Sheet Health Diagnosis.md)). Read `references/financial-core.md` first.

## Diagnostic questions

- What decision will this plan inform (raise money, hire, expand, sell, survive a downturn)?
- Do actual financials exist? Which periods, accrual or cash basis, and who prepared them?
- Starting numbers: cash, receivables, inventory, payables, debt, equity; revenue and cost run-rates.
- Key drivers: price, volume, retention or repeat rate, headcount, collection and payment terms, capital spending plans.
- Planning horizon, and how much downside the owner can absorb?

## Methodology

1. **Establish the opening position.** Build or confirm an opening balance sheet; run the integrity checks (A = L + E, cash ties, equity rolls forward).
2. **Build the revenue driver model** from volume × price (or customers × retention × average revenue), not from a flat growth percentage; state each driver as an explicit assumption.
3. **Model costs by behavior** (fixed, variable, step) and by function (COGS vs operating expenses); separate owner pay.
4. **Project the three statements together:** income statement → retained earnings; working-capital drivers (DSO, DIO, DPO) → cash flow; capital spending and financing → balance sheet. The balance sheet must balance in every period; if it doesn't, an assumption is inconsistent — fix it, don't plug it.
5. **Read the result:** margins, cash conversion, minimum cash point, debt service coverage, break-even, and the month the plan is most fragile.
6. **Run scenarios:** base, downside (revenue −20%, collections +30 days), upside; report the break point and runway in each.
7. **Translate into decisions:** what to do if the downside appears, and the trigger that tells the owner.
8. **Flag tax and compliance items** for a CPA (jurisdiction per `references/jurisdiction.md`).

## Connects to (v1)

Feeds a [Cash Flow Forecast](../../templates/Finance and Fundraising/Cash Flow Forecast.md) for the short-term view, a [Financial Health Check](../../templates/Finance and Fundraising/Financial Health Check.md) for a snapshot reading, and the financial slides of a [Pitch Deck Outline](../../templates/Finance and Fundraising/Pitch Deck Outline.md).

## Deliverable

Opening position with integrity checks; assumption ledger; projected income statement, balance sheet and cash flow (summary form, table); key metrics; three scenarios with break points; decision triggers.

## Requirements

- All three statements reconcile in every period; no plugging
- Every assumption is visible and changeable; no invented numbers
- Downside case is always shown, with runway
- Output is labeled a planning framework, not professional advice; tax/compliance items go to a qualified professional

## Related methodologies

- [Balance Sheet Health Diagnosis](Balance Sheet Health Diagnosis.md) — when the opening position itself looks weak
- [Profitability and Unit Economics Diagnosis](Profitability and Unit Economics Diagnosis.md) — when margins are the problem
- [Funding Decision](Funding Decision.md) — when the plan shows a funding gap
- [Variance Analysis](Variance Analysis.md) — comparing actuals to this plan later
- [Research Synthesis](Research Synthesis.md) — pulling external research into assumptions
