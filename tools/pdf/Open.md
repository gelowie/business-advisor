# PDF — Open

## Purpose

The user asks to open a specific PDF, with no follow-on action assumed yet.

## What to confirm first

Which PDF should be opened.

## Behavior

1. Open the specified PDF (via the environment's `pdf` or `pdf-reading` skill, as appropriate to what's needed next).
2. Ask directly what the user wants to do with it — don't assume.

## What NOT to do

No unrequested action follows the open — no auto-summarizing, editing, or annotating.

## How this supports the business layer

Not a business capability itself — precedes work on any template or methodology sourced from a PDF's content. Ownership of the business request stays with whichever layer is already handling it; opening the PDF doesn't change that.

## Related tools

- [View](View.md) — the equivalent action for an uploaded PDF rather than one being explicitly opened
- [Annotate](Annotate.md) and [Fill Form](Fill Form.md) — the actions this can lead into once the user specifies one
