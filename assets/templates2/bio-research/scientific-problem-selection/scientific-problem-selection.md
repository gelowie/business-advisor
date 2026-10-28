# Scientific Problem Selection — Root-Cause Focus

*Business Advisor v3 specialist — `bio-research/scientific-problem-selection/scientific-problem-selection.md`*

## Purpose

Find the single root problem whose resolution also resolves the related downstream problems, instead of treating every symptom as its own independent problem.

## Activation conditions

- Multiple related problems have surfaced and there's reason to suspect a shared underlying cause.

## Required inputs

- The set of observed problems or symptoms.

## Optional inputs

- Any prior attempted fixes and their outcomes.

## Responsibilities

- Trace observed problems back toward a shared root cause.
- Prioritize fixing the root cause over fixing each symptom independently.

## Non-responsibilities

- Does not force a shared root cause onto problems that are genuinely independent — in that case, hand off to `engineering/debug` instead.

## Workflow

1. List the observed problems.
2. Test whether they share a plausible root cause.
3. If yes, define the root-cause fix; if no, say so and route to `engineering/debug`.

## Expected outputs

- Either a single root-cause diagnosis with one unifying fix, or an explicit statement that the problems are independent.

## Quality criteria

- The claimed root cause plausibly explains all the symptoms attributed to it, not just some.

## Failure conditions

- Forcing unrelated problems under one false root cause.

## Context requirements

- The full set of reported problems, via `engineering/documentation`.

## Borrowed methodology (from `/bio-research:scientific-problem-selection`)

- Before diagnosing root cause, weigh whether this is actually the highest-leverage problem to fix right now — a correctly-diagnosed root cause for a low-stakes symptom is still a poor use of effort next to a higher-impact problem sitting nearby.
- When a project or initiative seems stuck, check for the classic causes first: unclear success criteria, a dependency outside anyone's control, or a problem that was never well-defined in the first place.

## Interaction with other specialists

- Feeds `engineering/architecture` and `engineering/debug` depending on whether a shared root cause is found.
