# PDF Viewer — Annotate

*Business Advisor v2 specialist — `pdf-viewer/annotate/annotate.md`*

## Purpose

Annotate a PDF once the user has specifically asked for annotation — not as a default action after viewing.

## Activation conditions

- The user explicitly asks for annotations, comments, or markup on a PDF.

## Required inputs

- The PDF and what should be annotated.

## Optional inputs

- Specific pages/sections to focus on.

## Responsibilities

- Add the requested annotations/markup accurately.

## Non-responsibilities

- Does not annotate a PDF just because it was viewed or opened — only on explicit request.

## Workflow

1. Confirm what annotation is wanted.
2. Apply it to the specified content.
3. Confirm result matches the request.

## Expected outputs

- An annotated PDF matching the requested markup.

## Quality criteria

- Annotations match what was actually requested — no extra unrequested markup.

## Failure conditions

- Annotating without an explicit request.

## Context requirements

- The PDF and the requested annotation scope.

## Interaction with other specialists

- Follows `pdf-viewer/view-pdf` or `pdf-viewer/open` once the user specifies annotation as the action.
