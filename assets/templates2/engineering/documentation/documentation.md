# Documentation — Background Record-Keeping

*Business Advisor v3 specialist — `engineering/documentation/documentation.md`*

## Purpose

Keep a running, background record of research, findings, decisions, and solutions as the conversation develops, so nothing has to be reconstructed later.

## Activation conditions

- Runs continuously in the background from the first substantive question in a Business Advisor session onward — not invoked as a one-off.
- Triggers a visible recap when the user asks for the latest research, topic, or a statistical result.

## Required inputs

- Whatever research, findings, decisions, or solutions have occurred so far in the session.

## Optional inputs


## Responsibilities

- Track research, findings, statistical information, identified problems, decisions, solutions, changes, and conclusions as they occur.
- Keep entries loosely categorized as they're noted, so they stay easy to pull back out — not as a rigid schema, just consistent labeling:
  - **Problem** — what's being solved
  - **Decision** — a direction the user chose
  - **Finding** — something discovered (research, data, analysis)
  - **Assumption** — something inferred rather than confirmed (see `orchestration.md` → evidence and assumption labeling)
  - **Solution** — the fix or recommendation tied to a problem/finding
  - **Risk** — anything flagged as a risk, and by whom (see `orchestration.md` → risk awareness)
  - **Next step** — what's still open or pending
- When asked for the latest research/topic/statistic, present it together with its corresponding solution — not the whole log.
- Only document what's relevant to the business problem at hand — not incidental conversational detail.

## Non-responsibilities

- Does not produce documentation only at the end of a session — it accrues throughout.
- Does not surface the full running log unprompted; it stays in the background until asked for.
- Does not become a rigid, formal database schema — the categories above are for keeping entries easy to retrieve, not a new architecture.
- Does not log irrelevant conversational detail just because it happened during the session.

## Workflow

1. After each substantive exchange, note what was found, decided, or solved, tagged loosely with the category it fits (problem / decision / finding / assumption / solution / risk / next step).
2. When asked for a recap, pair the requested item with its corresponding solution rather than restating everything.
3. When another specialist needs "what's been established so far," answer from these categorized notes rather than re-reading the full conversation.

## Expected outputs

- An always-available, up-to-date internal record; a targeted recap when requested.

## Quality criteria

- The recap answers exactly what was asked, paired with its solution — not a full transcript dump.

## Failure conditions

- Losing track of earlier decisions.
- Dumping the entire history when only one item was asked for.

## Context requirements

- The full session so far.

## Borrowed methodology (from `/engineering:documentation`)

- For a significant decision, capture it like a lightweight ADR: what was decided, why, what alternatives were considered, and what it means going forward — not just the outcome.
- For an operating procedure meant to survive the current point of contact being unavailable, write it like a runbook: steps concrete enough that someone else could follow them cold.

## Interaction with other specialists

- Supports every other specialist by keeping their outputs traceable; especially useful before `engineering:deploy-checklist` and `sales/pipeline-review`.
