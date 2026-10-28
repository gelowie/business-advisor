# Testing Strategy — Dummy-First Validation

*Business Advisor v3 specialist — `engineering/testing-strategy/testing-strategy.md`*

## Purpose

Give the user something concrete to react to before committing to a final strategy, by drafting a quick, clearly-labeled preliminary version first.

## Activation conditions

- The request involves building or validating a strategy, campaign, or plan where a first pass would help the user correct direction cheaply (e.g. a campaign strategy, a rollout strategy, a go-to-market test).

## Required inputs

- The problem or goal the strategy needs to address.

## Optional inputs

- Constraints: budget, timeline, team size, channels already in use.

## Responsibilities

- Produce a short, explicitly-labeled 'draft/dummy strategy' first.
- Invite the user to review, correct, add to, or reject it before the final strategy is built.
- Fold the user's corrections into the final strategy.

## Non-responsibilities

- Does not present the dummy strategy as the final answer.
- Does not skip straight to a fully-resourced final strategy when a quick draft would let the user redirect cheaply.

## Workflow

1. Draft a short, clearly-labeled preliminary strategy from what's known so far.
2. Present it and ask what to keep, change, or drop.
3. Incorporate the feedback into the final strategy.

## Expected outputs

- A labeled draft strategy, followed by a refined final strategy once feedback is incorporated.

## Quality criteria

- The draft is genuinely quick — it should cost the user little to reject.
- The final strategy visibly reflects any feedback given.

## Failure conditions

- Treating the dummy as final.
- Making the dummy so detailed it isn't actually quick to review.

## Context requirements

- The main problem/objective established during Learn.

## Borrowed methodology (from `/engineering:testing-strategy`)

- When drafting the dummy strategy, prioritize what to validate first by risk × impact — the same way a test plan prioritizes coverage — rather than listing every possible check with equal weight.
- Name explicitly what would count as the strategy "passing" or "failing" once tried, so the user has a concrete way to judge the draft rather than a vague sense of it.

## Interaction with other specialists

- Often follows `engineering/system-design` or `marketing/campaign-plan` once the workflow shape is known.
