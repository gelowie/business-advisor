# Tools — file and document capabilities

This folder is a different kind of thing from everything else in this skill. `references/` is business knowledge. `assets/templates/` (v1) and `assets/templates2/` (v2) are business methodologies. This folder is neither — it's **operational capability**: opening, reading, viewing, extracting from, editing, converting, and creating files. It contains no business advice and should never be asked to give any.

## Structure

- `pdf/` — PDF: open, view, annotate, fill/edit
- `documents/` — DOC, DOCX, TXT, Markdown/MD: read, extract, create, edit
- `spreadsheets/` — XLS, XLSX, CSV: read, extract, create, edit
- `presentations/` — PPT, PPTX: read, extract, create, edit
- `web-documents/` — HTML: read, extract, create
- `data/` — JSON, XML: read, extract, create, edit

## What belongs here vs. everywhere else

| | Contains | Example |
|---|---|---|
| `references/` | Business knowledge, by domain | "what makes a good pricing strategy" |
| `assets/templates/` (v1) | Business documents/methodologies | "fill in a Pricing Strategy Builder" |
| `assets/templates2/` (v2) | Deep business diagnosis | "why is our pricing not working" |
| `tools/` (this folder) | File/document operations | "read the numbers out of this PDF" |

A file in `tools/` that starts giving business lessons about its format ("here's how to structure a great pitch deck PDF") has drifted out of scope — that content belongs in a template or reference file, not here. `tools/pdf/` is about *working with* PDFs, never about what should be *inside* one.

## How this integrates with the host environment

This skill runs inside an environment that already has dedicated, general-purpose skills for these formats — a `pdf` skill, a `docx` skill, a `pptx` skill, an `xlsx` skill, plus `pdf-reading` and `file-reading` skills for inspecting uploaded files. This folder does **not** reimplement any of that. Each file here defines *when* a business-advisor task actually needs a file operation and *what business context* should flow in and out of it — the mechanical work of actually parsing or generating the file is the existing platform skill's job, invoked normally. If a needed skill isn't available in a given session, say so plainly rather than improvising a workaround.

## Tool-use behavior — invoked only when actually needed

Tools are **supporting capabilities**, never the primary source of business knowledge, and never invoked automatically:

- A pure knowledge question ("what is market segmentation?") never touches this folder — it goes straight to `references/`, a template, or a v2 methodology.
- A file is uploaded or requested only when the task genuinely involves one — reading data out of a provided PDF, producing a report as a DOCX, inspecting a provided spreadsheet or HTML file.
- Using a tool never transfers ownership of the request. The v1 or v2 layer that owns the request stays the owner; a tool contributes extracted content or a finished file, the same way a v1 template or v2 methodology contributes its own output, per each layer's own "Ownership & support" rule.
- Don't reach for a tool "just in case" — if the request has no file involved and asks for no file as output, this folder has nothing to do with it.

## Which layer can use tools

Both. `tools/` is shared, exactly like `references/` — available to v1 (`assets/templates/base-layer.md`) and v2 (`assets/templates2/moderate-layer.md`) equally, and orthogonal to the v1/v2 negotiation in `assets/routing.md`. Whether a request needs a *file operation* and whether it needs *v1 vs. v2 depth* are two separate questions — a request can need both, either, or neither.
