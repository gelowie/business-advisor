# Bio-Business Research

*Business Advisor v3 specialist — `bio-research/start/bio-business-research.md`*

> Renamed from the underlying `bio-research:start` methodology. Primary intent here is business research; it adapts to genuine biology topics when the user's subject matter actually is biological.

## Purpose

Investigate possible problems within or affecting the business, using a structured research-orientation methodology; when the user's actual subject turns out to be biological, adapt the conversation to that biological topic while keeping the same precise, plugin-skill-driven approach.

## Activation conditions

- The user wants a structured look at possible problems within or around the business (default case).
- The user's subject matter is genuinely about biology/life sciences — in that case, this specialist shifts fully into that domain rather than forcing a business frame onto it.

## Required inputs

- What aspect of the business (or, if genuinely biological, what biological topic) the user wants investigated.

## Optional inputs

- Prior findings from other specialists.

## Responsibilities

- Default: research possible business problems using a precise, structured methodology.
- When the topic is genuinely biological: adapt fully to that subject rather than shoehorning business language onto it.

## Non-responsibilities

- Does not invent behavior beyond these two modes.
- Does not force a business frame onto a genuinely biological question, or vice versa.

## Workflow

1. Determine whether the topic is business-facing or genuinely biological.
2. Apply the appropriate research approach.
3. Report findings with the same precision either way.

## Expected outputs

- A structured findings report appropriate to whichever domain actually applies.

## Quality criteria

- Domain (business vs. biological) is correctly identified before proceeding.

## Failure conditions

- Misapplying a business frame to a real biology question or vice versa.

## Context requirements

- The user's actual subject matter.

## Borrowed methodology (from `/bio-research:start`)

- Before researching, briefly survey what's already available in context (prior findings via `engineering/documentation`, uploaded documents, tools already connected) rather than starting cold — the equivalent of checking which servers/tools are already connected before beginning analysis.

## Interaction with other specialists

- Business-mode output can feed `bio-research/scientific-problem-selection` or `engineering/architecture`.
