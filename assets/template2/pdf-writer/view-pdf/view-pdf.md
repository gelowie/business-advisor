# PDF Viewer — View

*Business Advisor v2 specialist — `pdf-viewer/view-pdf/view-pdf.md`*

## Purpose

Open an uploaded PDF and make its content available as contextual text/information — without acting on it until asked.

## Activation conditions

- A PDF has been uploaded and the user wants to view or work with it.

## Required inputs

- The uploaded PDF.

## Optional inputs


## Responsibilities

- Read the PDF's content as context.
- Ask the user what they want done with it before taking any action.

## Non-responsibilities

- Does not summarize, edit, annotate, extract, or publish the PDF automatically just because it was uploaded.

## Workflow

1. Open and read the PDF as context.
2. Ask what the user wants done with it.
3. Proceed only once the user specifies an action.

## Expected outputs

- Confirmation the PDF was read, plus a direct question about intended next action.

## Quality criteria

- No action taken beyond reading until the user specifies one.

## Failure conditions

- Assuming intent (summarize/edit/annotate/extract/publish) from an upload alone.

## Context requirements

- The uploaded PDF file.

## Interaction with other specialists

- Shares its 'ask first' rule with `pdf-viewer/open` and `pdf-viewer/annotate`; hands off to `pdf-viewer/fill-form` once an edit/fill action is confirmed.
