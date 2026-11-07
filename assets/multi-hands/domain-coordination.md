---
name: domain-coordination
layer: multi-hands
---

# Multi-Hands: Domain Coordination

Responsibility: this IS Multi-Hands. Its job is domain/specialist
coordination — determining WHO/WHICH DOMAIN participates in a complex
problem, as distinct from brains/brain-coordination.md (Multi-Brains),
which determines HOW differing methodologies are reconciled once domains
have weighed in.

Owns:
- Recognizing when a problem spans more than one genuinely distinct domain —
  domain identity is derived from the package's actual resource folder
  structure (the top-level folders under `templates/` and `templates2/`),
  not a fixed, closed list. The current package's folders include the 8
  core business domains (Strategy and Governance, Finance and Fundraising,
  Product Management, Marketing and Growth, Sales and Business Development,
  Operations and Supply Chain, HR and Culture, Legal and Compliance) plus
  specialist domains present in `templates2/` (Engineering, Design,
  Bio-Research). The rule is structural, not enumerated: different resource
  folder → potential Multi-Hands participation. If a future package adds or
  removes a folder, this file's behavior updates with it automatically —
  nothing here needs editing to recognize a new domain, only the folder
  needs to exist.
- Selecting which domain resource(s) should analyze their slice of the
  problem. Domain-specific resources currently live in `templates2/` (V2,
  moderate-depth domain methodologies) and `templates/` (V1, basic domain
  templates) — those are the folders Multi-Hands draws domain resources
  from. `templates3/` is not a domain-methodology repository: it holds V3's
  complex-problem reasoning/process modules (decomposition,
  hypothesis/evidence, investigation, dependency/impact, trade-offs, action
  sequencing, verification, and so on), which run the overall V3 process
  rather than supply a domain's specialist content. Multi-Hands therefore
  does not search `templates3/` for domain-specific resources; the V3
  process modules remain part of the full resource ecosystem and are
  applied by the pipeline itself, not selected per-domain by Multi-Hands.
- Collecting each domain's findings and integrating them into one coherent
  set of domain findings, and reporting its Domains determination to
  v3-pipeline.md. Multi-Hands DETERMINES which domains participate; it does
  not write the Domains field itself. COMMITMENT to shared state is done by
  v3-pipeline.md's Stage 3, the single writer (see
  brains/state-management.md).
- Identifying DOMAIN-level conflicts (e.g. Finance's recommendation
  undermines an Operations constraint) and handing METHODOLOGICAL conflicts
  (not domain conflicts) to brain-coordination.md.

Does not own:
- Reconciling two different reasoning methodologies within the same domain
  (that is Multi-Brains' job).
- Holding the state itself.

Example flow:
  Multi-Hands identifies Engineering + Finance + Operations are all relevant
  -> each domain's relevant resource (from templates2/ or templates/, as
  fits that domain's available coverage) produces findings -> Multi-Hands
  integrates the findings and reports its Domains determination to
  v3-pipeline.md, whose Stage 3 commits it to shared state -> if two
  domains' findings use conflicting REASONING approaches (not just
  conflicting facts), that specific conflict is escalated to
  brain-coordination.md.

Before each domain specialist resource runs, consults
brains/context-management.md so it receives only its relevant state slice,
not the full record.

Called by: v3-pipeline.md's Stage 2 (Resource Coordination) — evaluated at
CANDIDATE-comparison time, right after v3-pipeline.md's Stage 1 identifies
candidates and before Decomposition runs, not only as a reaction once sub-problems
already exist. The trigger is mechanical: it checks which domain folder
each candidate resource actually lives under. If every candidate comes from
the same domain folder, Multi-Hands does not activate even if multiple
resources or methodologies are involved within that one domain (that case
is Multi-Brains-only, per brain-coordination.md). Once Multi-Hands'
decision is made, it is locked (v3-pipeline.md Stage 3) — Multi-Hands may
be called again only through the bounded Resource Re-evaluation mechanism
(Stage 2a), never as a fresh, unbounded re-check triggered informally
mid-reasoning.
