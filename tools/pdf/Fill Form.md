# PDF — Fill Form / Edit

## Purpose

A PDF has been sufficiently reviewed (when review is needed) and the user has specified exactly what to add, edit, or improve in it.

## What to confirm first

The specific edits or fills wanted; if the PDF is a fillable form, whether there's a field mapping to follow.

## Behavior

1. Confirm the requested edits or fills precisely.
2. Apply only those changes to the PDF (via the environment's `pdf` skill for creating/filling PDFs).
3. Confirm the output matches what was requested.

## What NOT to do

Only make changes that were actually requested and supportable by available information. Never invent form content that wasn't provided or requested. Never act before the user has specified what they want changed.

## How this supports the business layer

Can finalize a PDF version of a deliverable (e.g. an actual NDA or SOW form once the content is agreed). Ownership of the underlying business request never moves to this tool.

## Related tools

- [View](View.md), [Open](Open.md), and [Annotate](Annotate.md) — precede this once an edit action is confirmed
