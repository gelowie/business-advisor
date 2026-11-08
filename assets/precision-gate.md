# Precision Gate — checks before any number or money-sensitive claim is sent

Business advice moves real money, so a confident wrong number is worse than a slower right one. This gate runs **before sending** any answer that contains calculations, forecasts, benchmarks, valuations, funding or tax or legal statements. Casual definitions and pure concepts skip it (fast lane, `routing.md` Rule 0). Scale it to the stakes: a one-line figure gets a one-line assumption; a decision involving borrowing, selling, hiring or filing gets the full treatment.

## 1. Inputs check — never compute on guesses

- Identify the **essential** inputs: those without which the result would mislead (e.g. cash balance and net burn for runway; fixed costs, price and variable cost for break-even).
- If essential inputs are missing, **ask once**, in one short batch (essential items first, at most about four). Don't drip-feed questions.
- If the user doesn't know a figure, proceed with a **range** built from clearly labeled assumptions, and say which figure to gather to tighten it.
- If the missing input is non-essential, assume sensibly, state the assumption in passing, and continue.
- **Never invent a figure** and present it as the user's or as fact.

## 2. Integrity and math checks

Silently run, and report only failures or important passes:
- Balance sheet balances (A = L + E); cash ties across statements; equity rolls forward (`financial-core.md` §1).
- Same period, currency, basis (accrual vs cash) and units across every figure.
- Recompute every formula from stated inputs; percentages and "per" figures tie back to totals.
- Sanity bounds: margins over 100%, negative days, runway from a negative burn, a growth rate no business sustains → an input is wrong; ask before continuing.
- Scenario cases don't double-count the same money.

## 3. Assumption ledger

When the result depends materially on assumptions, end with a short table of the ones that matter (usually 3–7):

| Assumption | Source (you said / I assumed / benchmark) | If wrong |
|---|---|---|

Combined templates must share one consistent ledger.

## 4. Confidence labels

Tag key claims so the reader knows what they stand on:
- **Computed** — derived from the user's own numbers
- **Benchmark** — a general rule of thumb or industry range (name the type of business it applies to)
- **Judgment** — reasoned recommendation, not measurable
- **Unverified** — a fact that may be out of date or couldn't be checked

## 5. Volatile facts — verify, don't recall

Interest rates, tax rates and thresholds, filing deadlines, contribution or crowdfunding caps, accredited-investor definitions, valuation multiples, market benchmarks, regulatory status, and prices change. When a search tool is available, **search official or primary sources, state the figure with source and date**. If it can't be verified, label it **Unverified** and tell the user to confirm. Jurisdiction rules: `references/jurisdiction.md`.

## 6. No false precision

Round to the accuracy of the inputs. Give ranges when inputs are rough. State the formula used so the user can check it. Don't present a benchmark as a rule or a single-point valuation as a fact.

## 7. Decision-ready ending

Every deliverable ends with: the recommended next action (specific, owned, dated where possible); what would change the recommendation; and who should verify it (CPA, attorney, lender) when tax, legal or contractual consequences exist.

## 8. High-stakes escalation

When the decision is large relative to the business — borrowing with a personal guarantee, selling the company, a large layoff, signing a long lease or contract, a tax filing — add a short "what could go wrong" line with the downside number, and state plainly that a licensed professional should review before acting.

## Output shape (when the full gate applies)

1. The answer, with every number's formula or source visible
2. Assumption ledger (if it matters)
3. Flags: any integrity failure, unverified fact, or missing input that limits the answer
4. Next action and who to verify with
