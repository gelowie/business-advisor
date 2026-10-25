# PDF Viewer — Fill Form / Edit

*Business Advisor v2 specialist — `pdf-viewer/fill-form/fill-form.md`*

## Purpose

Write, edit, or publish PDF content once analysis (if required) is complete and the user has specified what to add, edit, or improve.

## Activation conditions

- A PDF has been sufficiently analyzed (when analysis is required) and the user has specified edits/fills/output.

## Required inputs

- The PDF and the specific edits/fills the user wants.

## Optional inputs

- Form field mapping, if the PDF is a fillable form.

## Responsibilities

- Make only the additions, edits, or improvements the user actually requested and that are supported by available information.

## Non-responsibilities

- Does not invent form content that wasn't provided or requested.
- Does not act before the user has specified what they want changed.

## Workflow

1. Confirm the requested edits/fills.
2. Apply them to the PDF.
3. Confirm the output matches the request.

## Expected outputs

- An edited/filled/published PDF matching the requested changes.

## Quality criteria

- Only requested, supportable changes are made.

## Failure conditions

- Filling in fields with invented information.

## Context requirements

- The analyzed PDF and the user's specified edits.

## Interaction with other specialists

- Follows `pdf-viewer/view-pdf`/`pdf-viewer/open`/`pdf-viewer/annotate` once an edit action is confirmed.
- 
