# Spreadsheets — XLS, XLSX, CSV

## Purpose

Reading, extracting from, editing, and creating spreadsheet and tabular data files.

## Supported formats

XLS, XLSX, CSV.

## Behavior

- **Reading/extracting**: pull the relevant numbers, rows, or structure out of an uploaded spreadsheet as context — e.g. actuals for a [Variance Analysis](../../assets/templates2/Finance and Fundraising/Variance Analysis.md), or historical numbers for a [Cash Flow Forecast](../../assets/templates/Finance and Fundraising/Cash Flow Forecast.md).
- **Creating**: when a business deliverable is explicitly wanted as a spreadsheet, use the environment's `xlsx` skill for XLS/XLSX so formulas and formatting are handled properly; write CSV directly for plain tabular output.
- **Editing**: apply only the specific changes requested; confirm the result matches what was asked, including that formulas (if any) still compute correctly.

## What to confirm first

Whether a spreadsheet file is actually the wanted output, or whether the numbers are better delivered inline in the conversation or inside a document/template.

## How this supports v1/v2

Feeds real numbers into whichever v1 template or v2 methodology needs them (most of Finance and Fundraising's methodologies expect this), and can package either one's numeric output as a spreadsheet. Never performs the financial reasoning itself — that's the template's or methodology's job.

## Related tools

- [Documents](../documents/Documents.md) — when the source or output should be prose instead of tabular
- [Data](../data/Data Files.md) — when the underlying data is structured as JSON/XML rather than tabular
