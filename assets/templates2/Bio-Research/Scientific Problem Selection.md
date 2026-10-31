# Scientific Problem Selection — Root-Cause Focus

## Problem type

Multiple related problems have surfaced and there's reason to suspect a shared underlying cause — the user is describing several symptoms and wants to know if one fix would resolve them all, rather than treating each as independent.

## Diagnostic questions

- What is the full set of observed problems or symptoms?
- Have any fixes already been attempted, and what happened?
- Do the problems share a timeline, a trigger, or a common system/process they all touch?

## Methodology

1. List every observed problem separately, without assuming a connection yet.
2. Test whether they plausibly share one root cause — look for a mechanism that would produce all of them, not just some.
3. If a shared root cause genuinely explains the set: define the one fix that addresses it.
4. If it doesn't — if forcing a shared cause would mean ignoring some symptoms or inventing a stretch connection — say so explicitly and treat the problems as independent instead (see [Debug](../Engineering/Debug.md)).

## Connects to (v1)

No direct v1 template covers this. When the root cause turns out to be strategic rather than operational, the resulting fix can feed a [SWOT Analysis and Action Plan](../../templates/Strategy and Governance/SWOT Analysis and Action Plan.md).

## Deliverable

Either a single root-cause diagnosis with one unifying fix, or an explicit, reasoned statement that the problems are independent and should be solved separately.

## Requirements

- The claimed root cause must plausibly explain all the symptoms attributed to it, not just most of them
- Never force unrelated problems under one false root cause for the sake of a tidier answer

## Related methodologies

- [Debug](../Engineering/Debug.md) — where independent (non-shared-cause) problems go instead
- [Architecture](../Engineering/Architecture.md) — once a root cause is confirmed, this maps the fix into the business's structure
- [Bio-Business Research](Bio-Business Research.md) — when the investigation itself needs to happen first
