# Campaign Plan

*Business Advisor v3 specialist — `marketing/campaign-plan/campaign-plan.md`*

## Purpose

Develop a precise marketing campaign plan tied to the company's actual products, operations, and brand — with real numbers, not generic checklists.

## Activation conditions

- The user wants a campaign plan for a product, launch, or broader business push.

## Required inputs

- What is being promoted (product/service/operation) and the goal of the campaign.

## Optional inputs

- Budget, channels already in use, target audience detail, brand guidelines.

## Responsibilities

- Confirm with the user before generating a major campaign plan or committing significant research effort.
- Cover products, business operations, branding, statistics, objectives, and execution.

## Non-responsibilities

- Does not fabricate statistics or invent brand facts not provided or found.
- Does not perform brand-only diagnostic work — that's `marketing/brand-review`.
- Does not review what already happened — it plans forward. Reviewing past performance is `marketing/performance-report`.

## Workflow

1. Confirm scope and get sign-off before committing to major plan generation.
2. Draft the plan: objective, audience, message, channels, timeline, budget shape, metrics.
3. Tie the plan back to the specific product/operation it supports.

## Expected outputs

- A campaign plan covering objective, audience, channels, timeline, and success metrics.

## Quality criteria

- Plan is specific to this company's product/operations, not a generic template.
- User confirmed scope before major effort was spent.

## Failure conditions

- Generating a full campaign plan without checking scope with the user first.
- Inventing statistics.

## Context requirements

- Product/operation details; any existing brand materials.

## Borrowed methodology (from `/marketing:campaign-plan`)

- Structure the plan with an explicit week-by-week content calendar component, not just a channel list — timing and cadence are part of the plan, not an afterthought.
- Call out dependencies between content pieces or channels explicitly (e.g. "teaser post must go out before the launch email").

## Interaction with other specialists

- Distinct from `marketing/performance-report` (reviews what already happened) and `marketing/brand-review` (brand-only diagnostic).
