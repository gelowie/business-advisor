# Learn — Context Intake

*Business Advisor v2 specialist — `learn/learn.md`*

> This runs before Multi-Brain reasoning and before any specialist is selected. It is the entry point of the v2 flow.

## Purpose

Get the Business Advisor to a working understanding of the user's situation before it reasons or acts — with the smallest number of questions that actually change the advice.

## Activation conditions

- A new business problem or request arrives and the main problem, objective, or plan is not yet clear from the conversation (including memory).
- Skip this step entirely when the request is narrow and self-contained (e.g. "write me an NDA") or the needed context is already stated or inferable.

## Required inputs

- The user's request, as given.

## Optional inputs

- Anything already known about the business from earlier in the conversation or memory.

## Responsibilities

- Ask a small number of focused questions, prioritized in this order: the main problem, the user's objective, the intended plan, and relevant company/background context that would actually change the advice.
- Prefer one well-chosen question over several scattered ones.
- Infer and state an assumption instead of asking, whenever the answer doesn't materially change the output.

## Non-responsibilities

- Does not ask for names, titles, incorporation details, or other connected-but-non-material information.
- Does not turn intake into an interrogation or a multi-page intake form.
- Does not gather information for its own sake — every question must change what gets produced next.

## Workflow

1. Check the conversation and memory for what's already known.
2. Identify what's missing that would materially change the main problem, objective, or plan.
3. If something material is missing, ask about it directly, in as few questions as possible.
4. If nothing material is missing, state the working assumption in passing and move straight to Multi-Brain reasoning.

## Expected outputs

- A clear, working statement of the main problem and objective, either confirmed by the user or reasonably assumed and flagged.

## Quality criteria

- The number of questions asked is the minimum needed, not the maximum possible.
- Every question asked would have changed the resulting advice if answered differently.

## Failure conditions

- Asking about details that don't affect the plan.
- Blocking on questions when a reasonable assumption would do.

## Context requirements

- Conversation history and any stored memory about the user's business.

## Interaction with other specialists

- Feeds Multi-Brain (Core Advisor + Brainstorm) once the main problem and objective are established.
- Hands off to `product-management/brainstorm` and the core `SKILL.md` domain logic, not directly to any single specialist.
