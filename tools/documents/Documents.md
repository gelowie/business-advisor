# Documents — DOC, DOCX, TXT, Markdown

## Purpose

Reading, extracting from, editing, and creating plain-text and Word-style documents.

## Supported formats

DOC, DOCX, TXT, Markdown/MD.

## Behavior

- **Reading/extracting**: pull the relevant text or data out of an uploaded document as context for whatever business capability needs it.
- **Creating**: when a business deliverable is explicitly wanted as a Word document, use the environment's `docx` skill to produce it properly formatted — don't hand-roll document structure that skill already handles. For plain-text or Markdown output, write the file directly.
- **Editing**: apply only the specific changes requested to an existing document; confirm the result matches what was asked.

## What to confirm first

Whether a specific file format is actually wanted for the output, or whether the answer is just meant to be read in the conversation — don't create a file when a direct answer would do (see `../index.md`'s "Tool-use behavior").

## How this supports v1/v2

Feeds extracted content into whichever v1 template or v2 methodology needs it, and can package either one's finished output as a requested document format. Never the source of the business reasoning itself.

## Related tools

- [Spreadsheets](../spreadsheets/Spreadsheets.md) — when the document actually contains tabular data better handled there
- [PDF](../pdf/Open.md) — when the source or requested output is a PDF instead
