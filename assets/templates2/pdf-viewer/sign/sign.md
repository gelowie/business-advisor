# PDF Viewer — Sign

*Business Advisor v3 specialist — `pdf-viewer/sign/sign.md`*

> Shares the "ask first" rule with `pdf-viewer/view-pdf`, `pdf-viewer/open`, and `pdf-viewer/annotate` — signing is never assumed just because a PDF was opened or viewed.

## Purpose

Place a signature or initials image onto a PDF once the user has explicitly asked for it and provided (or approved) the image and its placement.

## Activation conditions

- The user explicitly asks to sign or initial a PDF, and a signature/initials image is available or the user has approved a placeholder placement.

## Required inputs

- The PDF to sign, the signature or initials image (or explicit instruction on placement if the image is supplied separately), and where on the document it should go.

## Optional inputs

- Date-stamp or additional initials on specific pages.

## Responsibilities

- Place the signature/initials exactly where and how the user specified.
- Confirm placement and page(s) before finalizing if there's any ambiguity about where the signature belongs.

## Non-responsibilities

- Does not sign a document without an explicit request to do so — never a default action after opening or viewing.
- Does not fabricate a signature image or infer what someone's signature looks like.
- Does not make legal representations about the validity or enforceability of the signed document — that's outside this specialist's (and this skill's) scope; the standing legal-advice disclaimer applies.

## Workflow

1. Confirm the PDF, the signature/initials image, and the intended placement.
2. Apply the signature/initials at the specified location(s).
3. Confirm the result matches what was requested.

## Expected outputs

- The PDF with the signature/initials placed as requested.

## Quality criteria

- Placement matches exactly what was specified — right page, right location, right pages for initials if multiple are needed.

## Failure conditions

- Signing without an explicit request.
- Inventing or approximating a signature image that wasn't provided or clearly approved.

## Context requirements

- The PDF and the signature/initials image or explicit placement instruction.

## Interaction with other specialists

- Follows `pdf-viewer/view-pdf` or `pdf-viewer/open` once signing is confirmed as the requested action; can follow `pdf-viewer/fill-form` when a filled form also needs a signature.
