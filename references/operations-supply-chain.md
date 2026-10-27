# Operations & Supply Chain

## Process Automation

- **SOP documentation:** Write for the person who's never done the task before — numbered steps, screenshots/examples where useful, and an explicit "done" state so there's no ambiguity about completion. An SOP that only makes sense to the person who wrote it has failed its purpose.
- **Workflow mapping:** Map the process as it actually happens today before proposing the improved version — most inefficiency is discovered in the gap between how people think a process works and how it actually runs.
- **AI tool integration:** Target repetitive, rule-based, high-volume tasks first (data entry, first-draft content, categorization/triage) — these have the clearest ROI and lowest risk. Save judgment-heavy or customer-facing-without-review tasks for later, after trust in the tooling is established.

## Logistics

- **Vendor selection matrix:** Score candidate vendors on the criteria that actually matter for this business (price, lead time, quality/defect rate, minimum order quantity, payment terms, reliability track record) — weighted, not just a gut pick on price alone.
- **Procurement strategies:** Balance single-sourcing (better pricing/relationship, higher risk) against multi-sourcing (resilience, more admin overhead) based on how critical and how substitutable the input is. Critical + hard-to-substitute inputs justify the overhead of a backup supplier even at a cost premium.
- **Inventory management models:** Economic Order Quantity (EOQ) for stable-demand items to minimize ordering + holding costs; just-in-time for low storage capacity or perishable goods (accepts more supply risk for less holding cost); safety stock buffers sized to demand variability and supplier lead-time reliability, not a flat arbitrary number.

## Quality Assurance

- **Six Sigma / DMAIC:** Define the problem and goal, Measure current performance with real data, Analyze root causes, Improve with a tested change, Control by monitoring so the improvement sticks. Most quality initiatives fail at "Control" — the fix works, gets adopted, then drifts back without ongoing monitoring.
- **Customer service SLAs:** Set response-time and resolution-time targets by severity tier, not a single blanket number — a critical outage and a minor cosmetic question shouldn't have the same SLA.
- **Root-cause analysis:** Use "5 Whys" for straightforward issues (ask "why" iteratively until you reach a systemic cause, not just the immediate trigger) or a fishbone/Ishikawa diagram for issues with several plausible contributing factors across categories (people, process, equipment, materials).

## Deliverable formats this domain commonly needs

SOP builder, vendor selection matrix — templates in `assets/templates/Operations and Supply Chain/`.
