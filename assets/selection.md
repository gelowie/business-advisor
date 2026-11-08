# Resource Selection — choosing what to use without being told

`routing.md` decides **who** answers (v1, v2, v3). This file decides **what they use**. It governs v1 and v2 only; v3 selects through `templates3/v3-pipeline.md` Stage 1.

## Pipeline

1. **Name the one objective** the request serves; every later step stays anchored to it.
2. **Ownership** (`routing.md`): fast lane, v1, v2, or hand-off to v3. Never pick a version because it sounds more sophisticated.
3. **Selection levels** below, in order, stopping at the first that resolves the request.
4. **Precision gate** (`precision-gate.md`) before any numeric or legal-sensitive answer is sent.

A template the user names explicitly is handled before step 3 (see below).

## Governing principle

Select by what the problem needs solved, not by the words used. A request need not name a domain, template or file; and using a domain's vocabulary doesn't make a request belong to it.
- *"Our sales rise every month but we have less money to pay suppliers."* never says "cash flow" but is a *why* question → Cash Flow Crisis Diagnosis, not the Cash Flow Forecast template.
- *"People buy once and rarely return."* could be product, pricing, service or marketing — find the actual driver before choosing a resource.

Priority when signals conflict: **problem relevance > correct layer > methodology relevance > file relevance > cross-domain usefulness > convenience.** Never select by filename keyword, position in a folder, or availability.

## When the user names a template

Treat the name as a strong preference, not an override. If it fits, use it. If clearly mismatched (e.g. "use the Pricing Strategy Builder — we're running out of cash"), say so in one non-argumentative sentence, then proceed with the right fit. Don't lecture, ask permission, or swap silently.

## Selection levels

Use the smallest set that is sufficient; if a problem genuinely needs many files, use many.

1. **Exact match** — a template's `## Summary` or a method's problem type matches.
2. **Strong related match** — no exact topic, but an existing resource clearly supplies the capability (e.g. no "fundraising strategy" template, but Pitch Deck Outline + Funding Decision + the finance references cover it).
3. **Multi-file match** — more than one file in the same domain folder is needed (see below).
4. **Multi-folder match** — one problem draws on several domains; synthesize into one answer.
5. **v1 + v2 combination** (v2 only) — see below.
6. **No match** — reason directly; never force an unrelated resource and never say the request can't be handled.
7. **Beyond the boundary** — several interacting problems → confirm the limit per `templates/base-layer.md` / `templates2/moderate-layer.md`, then hand off to `templates3/v3-pipeline.md`.

## Multi-file domains

A domain match is not a file match. Judge each file by its stated purpose (`templates2/index.md`, `templates/index.md`), not its filename; select every file that materially contributes — neither one by default nor all reflexively. Files used together share numbers and conclusions rather than re-deriving them. Examples in Finance: late payments plus "what is it doing to our numbers" → Cash Flow Crisis Diagnosis + Financial Statements and Planning; "are we in good shape?" → Balance Sheet Health Diagnosis; "where does our margin go?" → Profitability and Unit Economics Diagnosis; "should we borrow or sell equity?" → Funding Decision. Always check the index for the current file list.

Reference files: pair `references/financial-core.md` with any numeric finance request; `references/capitals.md` when the cause may lie outside money; `references/jurisdiction.md` for any legal, tax, employment, privacy or fundraising point.

## v2 using v1

v2 may use a v1 template as the shape of the final deliverable or as supporting structure mid-diagnosis:
- **v2 alone** — its method fully covers it (Case A).
- **v2 + v1 template** — the template improves the answer (Case B).
- **v1 alone** — the problem is simple enough that v2's depth would be forced (Case C; see `templates2/moderate-layer.md` "No forced depth").

Never do the same work twice with both. **v2 may use v1; v1 never depends on v2** — relationship data lives here and in `routing.md`, never inside a v1 template.

## Coverage gaps are real

HR and Culture has no v2 method, and Legal and Compliance has only one narrow connection (SOW Builder ↔ Pipeline Review). When only v1 covers a topic, v1 answers up to the point real diagnostic depth appears, then flags it per `templates/base-layer.md` rather than inventing a v2 method. Never imply a method that isn't in `templates2/`.

## One problem, one answer

When several resources are used, produce one coherent answer organized around the main objective — never a stitched list of "Finance says… Operations says…". If it can't be synthesized because it is really several problems, that is level 7.

## Keep selection invisible

Don't narrate which template or file was used unless the user asks how the answer was built.

## Worked examples

- **L1:** "I need an NDA for a contractor." → NDA Builder.
- **L2:** "What should I charge for my new service?" → Pricing Strategy Builder.
- **L3:** "Invoices are paid later and later; what is it doing to our numbers?" → Cash Flow Crisis Diagnosis + Financial Statements and Planning.
- **L3 (finance):** "Is my business in good financial shape? Here's my balance sheet." → Balance Sheet Health Diagnosis with the Financial Health Check as its summary, plus `financial-core.md`.
- **L4:** "My restaurant has good sales but keeps losing money." → Profitability and Unit Economics Diagnosis + Operating Workflow Design (waste, staffing) if the diagnosis points there; one profitability answer.
- **L5:** a cash-flow diagnosis delivered *as* a filled Cash Flow Forecast.
- **L5 (capital):** "Margins fell and staff keep quitting" → Capital Audit (human capital) feeding Profitability and Unit Economics Diagnosis.
- **L6:** "What's a normal profit margin for a coffee shop?" → answer directly (fast lane), labeling the range a rule of thumb.
- **L7:** a restaurant case with segmentation, pricing, staffing, inventory and an investment decision all interacting → multi-problem coordination, hand off to v3.
- **Named, wrong template:** "Use the Pricing Strategy Builder — we're running out of cash." → note the mismatch in one sentence; answer as a cash-flow problem.
