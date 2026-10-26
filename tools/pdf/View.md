# PDF — View

## Purpose

A PDF has been uploaded and the user wants to view or work with it — its content should become available as context without acting on it yet.

## What to confirm first

What was uploaded, and whether the user has stated an intent yet.

## Behavior

1. Read the PDF's content as context (via the environment's `pdf-reading` skill for inspection, or native image/text viewing if the PDF is already in context).
2. Ask what the user wants done with it.
3. Proceed only once the user specifies an action.

## What NOT to do

No action taken beyond reading until the user specifies one — never assume summarize/edit/annotate/extract/publish intent just because a PDF was uploaded.

## How this supports v1/v2

Once the user specifies an action, the PDF's content can feed directly into whichever v1 template or v2 methodology that action calls for — e.g. numbers extracted here can populate a Cash Flow Forecast or a Cash Flow Crisis Diagnosis. This tool only supplies the content; the business layer already handling the request stays the owner.

## Related tools

- [Open](Open.md) — shares this "ask first" rule
- [Annotate](Annotate.md) and [Fill Form](Fill Form.md) — the actions this leads into once confirmed
