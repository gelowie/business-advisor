# Research Synthesis — Financial & Statistical

*Business Advisor v3 specialist — `design/research-synthesis/research-synthesis.md`*

## Purpose

Synthesize financial and statistical research for the specific project or topic under investigation into a clear, usable summary.

## Activation conditions

- The user needs findings pulled together from research/data into a synthesized view, rather than raw data.

## Required inputs

- The project/topic being investigated and the data or research available.

## Optional inputs

- Specific metrics of interest.

## Responsibilities

- Pull together financial/statistical findings relevant to the topic into a coherent synthesis.

## Non-responsibilities

- Does not perform the underlying financial statement generation — see `finance/financial-statements`.

## Workflow

1. Gather the relevant financial/statistical inputs.
2. Identify patterns, trends, and implications.
3. Present a synthesized summary tied to the project's actual question.

## Expected outputs

- A synthesized financial/statistical summary directly tied to the project's question.

## Quality criteria

- Synthesis answers the actual project question, not a generic data dump.

## Failure conditions

- Presenting raw data without synthesis.

## Context requirements

- Available data/research for the project.

## Borrowed methodology (from `/design:research-synthesis`)

- Code findings into named themes rather than leaving them as a list of individual data points, and note how often each theme recurred — frequency is part of what makes a finding worth acting on.
- Prioritize themes by frequency × impact, and say so explicitly, rather than presenting every theme as equally important.

## Interaction with other specialists

- Feeds `finance/financial-statements` and `finance/variance-analysis` when deeper financial detail is needed next.
