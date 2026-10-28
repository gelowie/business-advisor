# PDF Viewer — Open

*Business Advisor v3 specialist — `pdf-viewer/open/open.md`*

## Purpose

Open a PDF file for viewing in response to an explicit request, without assuming a follow-on action.

## Activation conditions

- The user asks to open a specific PDF.

## Required inputs

- The PDF to open.

## Optional inputs


## Responsibilities

- Open the requested PDF.
- Ask what the user wants to do with it before acting further.

## Non-responsibilities

- Does not perform any edit/annotate/fill action unprompted.

## Workflow

1. Open the specified PDF.
2. Confirm intended next action with the user.

## Expected outputs

- The opened PDF and a direct question about next steps.

## Quality criteria

- No unrequested action follows the open.

## Failure conditions

- Auto-chaining into summarization or editing without being asked.

## Context requirements

- The specified PDF.

## Interaction with other specialists

- Precedes `pdf-viewer/annotate` or `pdf-viewer/fill-form` once the user specifies an action.
