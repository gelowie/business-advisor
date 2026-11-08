# Financial Core — the structure behind every money question

Read this before any answer that uses balance-sheet, income-statement, cash-flow, funding or valuation numbers. `finance-fundraising.md` covers fundraising mechanics and pitch material; this file is the accounting and analysis engine underneath them. Ratio thresholds below are **general rules of thumb, not laws** — they vary by industry, size and period, so state them as such and check current benchmarks when stakes are high.

## 1. The equation and how the statements connect

**Assets = Liabilities + Equity.** Every transaction keeps this balanced. The five account types:

| Type | Meaning | Statement |
|---|---|---|
| Assets | What the business owns or is owed (resources) | Balance sheet |
| Liabilities | What it owes (obligations) | Balance sheet |
| Equity (owner's equity / net worth) | The owners' residual claim = Assets − Liabilities | Balance sheet |
| Revenue / income | Inflows earned from operations | Income statement |
| Expenses & costs | Outflows consumed to earn revenue | Income statement |

**The linkage that catches most errors:**
- Net income (revenue − expenses) flows into **retained earnings** (equity), minus owner draws or dividends.
- The cash flow statement starts from net income, adds back non-cash items (depreciation), adjusts for working-capital changes, then adds investing and financing flows. Its result must equal the **change in the cash line** of the balance sheet.
- Borrowing raises cash *and* liabilities; it does not raise income. Buying equipment lowers cash and raises assets; it is not an expense (until depreciated).

**Integrity checks to run on any set of numbers (state results):**
1. Does the balance sheet balance (A = L + E)?
2. Does ending cash on the cash-flow statement equal the balance-sheet cash?
3. Does the change in retained earnings equal net income minus draws/dividends?
4. Are all figures the same period, currency, and basis (accrual vs cash)?
5. Is any ratio impossible (margin above 100%, negative days, runway of a negative number)? If so, an input is wrong — ask, don't compute on.

**Profit is not cash.** A profitable business can run out of cash (customers pay late, inventory is bought upfront, debt principal is repaid from after-tax cash, owner takes draws). Always separate the two.

## 2. Assets — quality, not just amount

Current (converts to cash within ~12 months: cash, receivables, inventory, prepaids) vs non-current (equipment, property, intangibles, long-term investments).
Test each asset class for:
- **Receivables:** aging buckets (0–30, 31–60, 61–90, 90+); anything past 90 days is at real risk; concentration in one customer.
- **Inventory:** turnover, slow-moving or obsolete stock, damage; cash trapped as stock.
- **Equipment/property:** remaining useful life, replacement cost, whether it actually produces revenue (idle assets are cost without return).
- **Intangibles:** only purchased or capitalized intangibles appear on the books; self-built brand, know-how and relationships usually do not (see `capitals.md`).
- **Cash:** how much is truly free versus committed (payroll in 5 days, tax due, customer deposits owed back).

## 3. Liabilities — the obligations

- **Operating:** payables, accrued payroll, taxes owed, deferred revenue (cash received for work not yet delivered — an obligation to deliver, not income).
- **Financing:** loans, credit lines, leases, owner loans — check rate, term, collateral, **personal guarantees**, and covenants (conditions the lender can enforce).
- **Contingent / hidden:** pending disputes, warranty or refund exposure, unpaid payroll or sales taxes, lease commitments, guarantees given.
- **Warning pattern:** stretching supplier payments or skipping tax deposits to fund operations is borrowing at a hidden and often punitive cost.
- Match **maturity to purpose**: short-term debt financing a long-term asset creates a refinancing trap.

## 4. Equity / net worth — the owners' claim

Components: contributed capital (money put in), retained earnings (profit kept), less draws/distributions, plus any option pool or preferred terms.
- **Book value ≠ market value.** Equity on the books is historical; what the business is worth is a valuation question (section 11).
- **Negative equity** means liabilities exceed assets — not automatically fatal for an early-stage or buyback-heavy business, but a lender or investor will read it as stress.
- **Dilution:** investor ownership % = investment ÷ post-money valuation; post-money = pre-money + investment. Model the option pool before the round (see `finance-fundraising.md`).
- **Owner pay vs profit:** separate a fair market salary for the owner's work from true profit; many "profitable" owner-run businesses are not once the owner is paid.

## 5. Revenue / income — quality of the inflow

- **Recognition:** revenue belongs to the period it is earned, not necessarily the period it is paid.
- **Decompose changes:** revenue change = price effect + volume effect + mix effect. Don't celebrate growth until you know which.
- **Quality tests:** recurring vs one-time; repeat-customer rate; customer concentration (one customer above ~20% of revenue is a risk to state); seasonality; gross vs net of refunds, discounts, platform fees.

## 6. Expenses & costs — behavior matters more than category

- **By behavior:** fixed, variable, semi-variable, step costs (jump at capacity thresholds).
- **By function:** COGS (directly tied to delivering the product/service) vs operating expenses (selling, admin, rent).
- **CapEx vs OpEx:** capital spend creates an asset depreciated over time; operating spend is expensed now. Misclassifying distorts both profit and cash planning.
- **Decision logic:** use marginal cost for "should we take this extra order," average cost for pricing floors, ignore sunk costs, name opportunity cost.
- **Normalize:** strip one-time items and owner-specific costs before judging run-rate profitability.

## 7. Core ratios

| Metric | Formula | What it tells you | Common flag |
|---|---|---|---|
| Current ratio | Current assets ÷ current liabilities | Can short-term obligations be met | Below 1.0 needs explanation |
| Quick ratio | (Cash + receivables + marketable securities) ÷ current liabilities | Liquidity without inventory | Below ~1.0 for inventory-light firms |
| DSO | Receivables ÷ revenue × days | Days to collect | Rising trend, or well above stated terms |
| DIO | Inventory ÷ COGS × days | Days stock sits | Rising trend |
| DPO | Payables ÷ COGS × days | Days to pay suppliers | Falling (suppliers tightening) or stretched beyond terms |
| Cash conversion cycle | DSO + DIO − DPO | Days cash is tied up | Lengthening |
| Gross margin | (Revenue − COGS) ÷ revenue | Margin per unit of delivery | Compare per product/service line |
| Operating margin | Operating income ÷ revenue | Profit after running costs | Below covers-cost-of-capital level |
| Net margin | Net income ÷ revenue | Bottom line | Check one-offs |
| Debt-to-equity | Total (or interest-bearing — state which) liabilities ÷ equity | Leverage | Rising without matching cash flow |
| Interest coverage | EBIT ÷ interest expense | Ability to pay interest | Below ~1.5 is dangerous; ~3+ is usually comfortable |
| DSCR | Net operating income ÷ total debt service | Ability to pay interest **and** principal | Lenders commonly require ~1.25+ |
| ROE | Net income ÷ average equity | Return on owners' capital | Compare to alternatives and risk |
| ROA | Net income ÷ average assets | Efficiency of assets | Industry-specific |
| ROIC | NOPAT ÷ (debt + equity − excess cash) | Return on all capital deployed | Should exceed cost of capital |
| Inventory turnover | COGS ÷ average inventory | Stock velocity | Falling |
| Burn / runway | Net burn = cash out − cash in; runway = cash ÷ net burn | Months of life | Under 6 months = act now |
| Break-even units | Fixed costs ÷ (price − variable cost per unit) | Volume needed to cover costs | Compare to realistic volume |
| Operating leverage | Contribution margin ÷ operating income | Sensitivity of profit to sales | High = small sales drop hurts profit a lot |

Always give the formula used, the inputs, the result, and the reading. If an input is estimated, say so.

## 8. Unit economics by business type

- **Service:** utilization (billable ÷ available hours), effective hourly rate (revenue ÷ all hours worked including admin), margin per client, client concentration, retainer vs project mix.
- **Digital / SaaS:** MRR/ARR, gross revenue churn and net revenue retention, CAC (fully loaded sales + marketing ÷ new customers), LTV (gross-margin-adjusted), CAC payback months. Commonly cited targets — LTV:CAC around 3 or better, payback under ~12–18 months — depend heavily on segment and stage; present as reference points, not rules.
- **Physical / e-commerce:** contribution margin per order after COGS, shipping, payment fees, returns and ad cost; inventory turns; cash conversion cycle; stock-out vs overstock cost; marketplace-fee drag.
- **Local brick-and-mortar:** revenue per seat, chair, bay or square foot; labor % and, for food, prime cost (food + labor — often cited around 60–65% of sales as a target band to verify for the concept); occupancy cost as % of revenue; same-store trend; fixed-cost coverage on the slowest week.

## 9. Working capital and cash conversion

Working capital = current assets − current liabilities, but the actionable view is the **cash conversion cycle**. Levers: collect faster (deposits, milestone billing, tighter terms, automated reminders), hold less stock (reorder points, smaller batches, cut dead lines), pay later *within agreed terms*, shift to prepayment or subscription. **Growth consumes cash** — a business growing 30% with 60-day collections and 45 days of stock must fund that gap before it is paid back; model it explicitly.

## 10. Capital structure and cost of capital

Sources: owner equity, retained earnings, term debt, credit line, asset-based or equipment financing, leases, revenue-based financing, angel/VC equity, crowdfunding, grants, customer deposits, supplier terms.
- **Cost of debt** = interest (plus fees, minus any tax shield where interest is deductible). **Cost of equity** = the return owners/investors require, which is higher because it bears more risk.
- **WACC** = E/(D+E) × cost of equity + D/(D+E) × cost of debt × (1 − tax rate). Use it as a hurdle rate, not a precise number.
- **Fit rule:** debt suits stable, predictable cash flow and hard collateral; equity suits uncertain, high-growth, asset-light ventures. Debt that the cash flow cannot service (DSCR below ~1.0–1.25) is a liquidity risk; equity given away cheaply is a permanent cost.
- **Always show** the all-in cost, who bears downside, what control or guarantees are surrendered, and repayment or dilution effect on owners' take-home at the base and downside cases.

## 11. Valuation — sanity level

| Method | Best for | Watch out for |
|---|---|---|
| Earnings multiple (SDE for small owner-operated; EBITDA for larger) | Profitable, stable businesses | Multiples shift with market, size and owner dependence |
| Revenue multiple | High-growth or recurring-revenue software | Ignores profitability; compresses fast in down markets |
| Discounted cash flow | Predictable cash flows, long horizon | Extremely sensitive to discount rate and terminal value |
| Asset-based | Asset-heavy or distressed businesses; floor value | Ignores earning power |
| Comparable transactions | Any, if good comps exist | Thin or stale comps |

Rules: triangulate with at least two methods; present a **range**, not a point; apply discounts for owner dependence, customer concentration and weak records; **verify current multiples and comps with a live search** rather than recall — they change.

## 12. Scenarios and sensitivity

Build base, downside and upside cases around the two or three drivers that move results most. Standard stress tests: revenue −20%, collections +30 days, key cost +10%, largest customer lost. For each, report the effect on cash, runway, DSCR/covenants, and the **break point** (the level at which the business can no longer meet obligations).

## 13. Common advisor errors to avoid

Treating revenue growth as health; confusing profit with cash; ignoring owner pay; mixing accrual and cash figures; applying a SaaS benchmark to a cafe; quoting a multiple or rate from memory; recommending debt without computing debt service; double-counting the same dollar in two scenarios.
