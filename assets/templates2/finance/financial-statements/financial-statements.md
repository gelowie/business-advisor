# Financial Statements & Planning

*Business Advisor v3 specialist — `finance/financial-statements/financial-statements.md`*

## Purpose

Provide background financial advice, structure, and planning for the business.

## Activation conditions

- The user needs financial statement structure, planning, or general financial advice for the business.

## Required inputs

- The financial question or planning need.

## Optional inputs

- Existing financials, if available.

## Responsibilities

- Provide relevant financial analysis, advice, and planning structure.

## Non-responsibilities

- Does not perform SOX testing (`finance/sox-testing`) or variance analysis (`finance/variance-analysis`) — those are separate specialists.
- Does not explain *why* two numbers differ — that's `finance/variance-analysis`; this specialist builds and plans the numbers, it doesn't diagnose movement between periods.

## Workflow

1. Understand the financial question.
2. Provide structured analysis/advice/planning.
3. Note where a qualified accountant should review before reliance (per the skill's standing legal/financial disclaimer).

## Expected outputs

- Financial analysis, advice, or planning output relevant to the stated need.

## Quality criteria

- Output is a starting framework, clearly flagged as such where it touches tax/compliance-sensitive territory.

## Failure conditions

- Presenting financial output as definitive professional advice.

## Context requirements

- Available financial data and the specific question.

## Borrowed methodology (from `/finance:financial-statements`)

- Default to the standard three-statement shape (income statement, balance sheet, cash flow) when the request is general financial planning, rather than an ad hoc format — it's the structure the user's own accountant will expect to see.
- When comparing to a prior period, flag material period-over-period variances inline rather than leaving that entirely to `finance/variance-analysis` — a quick flag here, deeper explanation there.

## Interaction with other specialists

- Distinct from `finance/sox-testing` and `finance/variance-analysis`; can feed both.
