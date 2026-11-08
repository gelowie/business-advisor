# Profitability and Unit Economics Diagnosis

## Problem type

Revenue exists but profit is thin, falling or uneven, or the user can't say which products, customers or channels actually make money. The question is "where does the margin go?" — answered at the level of the single unit (an order, a client, a seat, a subscriber), not the whole company. Read `references/financial-core.md` sections 5–8.

## Diagnostic questions

- Revenue and costs by product/service line, customer segment and channel (even rough)?
- Price history, discounting, returns/refunds, platform and payment fees?
- Direct cost per unit or per hour; labor hours actually spent per job or order?
- Has margin moved recently — when, and what changed (price, mix, supplier, wages, rent)?
- For SaaS/subscription: churn, CAC, payback; for service: utilization; for retail/food: prime cost, occupancy.

## Methodology

1. **Compute margin at three levels:** gross margin by line, contribution margin per unit (after all variable costs including fees, shipping, returns, sales commission), and operating margin after fixed costs. Use the business-type unit metrics in `financial-core.md` §8.
2. **Decompose any margin change** into price, volume, mix and cost effects; state which one explains most of it.
3. **Rank offerings and customers by contribution**, not revenue; identify the bottom segment that consumes more cost or time than it returns, and the top segment that deserves more effort.
4. **Find the cost behavior problem:** costs that are fixed but treated as variable (or the reverse), step costs near a threshold, creeping overhead, unpaid owner time.
5. **Compute break-even** (units and revenue) and the margin of safety; show operating leverage.
6. **Test the levers with numbers:** price change and its volume risk, cost reduction, mix shift, minimum order or minimum fee, fee pass-through, dropping or fixing the worst line. Report the profit effect of each, not just direction.
7. **Pick the one or two highest-impact moves** and give concrete steps, owner and timeframe, and the risk of each.

## Connects to (v1)

Feeds the [Pricing Strategy Builder](../../templates/Finance and Fundraising/Pricing Strategy Builder.md) when the fix is price; feeds a [Cash Flow Forecast](../../templates/Finance and Fundraising/Cash Flow Forecast.md) to show how the profit improvement lands as cash.

## Deliverable

Margin table by level and by line, change decomposition, contribution ranking, break-even and margin of safety, lever table with quantified profit effect, and the recommended moves.

## Requirements

- Margins are shown after all variable costs, not just COGS
- Every lever is quantified with the user's numbers or labeled assumptions
- Unit metrics match the business type (no SaaS metrics for a cafe)
- Owner time is costed

## Related methodologies

- [Variance Analysis](Variance Analysis.md) — when the question is budget vs actual rather than structural margin
- [Stalled Growth Diagnosis](../Marketing and Growth/Stalled Growth Diagnosis.md) — when the margin problem is really an acquisition-cost problem
- [Working Capital Optimization](Working Capital Optimization.md) — when profit is fine but cash isn't
