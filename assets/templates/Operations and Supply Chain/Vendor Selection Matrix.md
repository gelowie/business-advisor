# Vendor Selection Matrix

## Summary

Builds a weighted vendor comparison matrix, so the choice isn't decided on price alone.

## Inputs

- **What's being sourced** — [product, service, or material]
- **Candidate vendors** — [2-5 listed]
- **What matters most** — [price, lead time, quality, minimum order quantity, payment terms, reliability — ranked if possible]
- **Known information per vendor** — [pricing, lead times, references, anything gathered so far]
- **Deal-breakers** — [any non-negotiable requirements]

## Deliverable

1. Evaluation criteria with weights (summing to 100%), based on what matters most
2. A score of 1-5 per vendor per criterion, each with a one-line justification
3. A weighted total score per vendor
4. A recommended primary vendor and, if the input is critical or hard to substitute, a backup
5. Any vendor that fails a stated deal-breaker, flagged regardless of score

## Requirements

- Weights must reflect the stated priorities, not default to price unless price was ranked highest
- Score justifications must be specific, not "seems fine"
- Mark any missing information as unknown rather than guessing a score
- Present the matrix as a table

## Related templates

- [SOP Builder](SOP Builder.md)
- [SOW Builder](../Legal and Compliance/SOW Builder.md)

## Deepened by (v2)

Before the selected vendor's work actually goes live, see [Deploy Checklist](../../templates2/Engineering/Deploy Checklist.md) for a readiness gate. Full exchange rule in `assets/routing.md`.
