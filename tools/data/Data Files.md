# Data Files — JSON, XML

## Purpose

Reading, extracting from, editing, and creating structured data files.

## Supported formats

JSON, XML.

## Behavior

- **Reading/extracting**: pull the relevant structured data out of an uploaded file as context for whatever template or methodology needs it.
- **Creating**: when structured data output is explicitly wanted in this format (e.g. exporting a filled template's fields), produce well-formed JSON/XML matching whatever structure was requested.
- **Editing**: apply only the specific changes requested, and confirm the result is still valid, well-formed data.

## What to confirm first

Whether a raw data file is genuinely the wanted output, or whether the same information would actually serve the user better as a document or spreadsheet — JSON/XML is rare as a direct business-deliverable request.

## How this supports v1/v2

Feeds structured data into whichever v1 template or v2 methodology needs it. Never the source of business reasoning itself.

## Related tools

- [Spreadsheets](../spreadsheets/Spreadsheets.md) — when the same data is better handled as tabular content
