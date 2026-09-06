# Selected Engineering Projects

These projects are selected for technical review because they show recurring themes in my work: bounded execution, integration, operator control, verification, and turning technical systems into usable products.

## CrossingKey Exchange
**Status:** Production / publicly reachable

**Problem:** Natural-language product discovery is useful only if it can terminate in a real merchant-controlled purchase path rather than an isolated demo.

**Built:** An agent-compatible commerce interface connecting buyer intent to merchant-scoped product discovery and Shopify checkout.

**Technical depth:** Commerce integration, structured intent handling, web delivery, checkout handoff, and the boundary between AI assistance and merchant-controlled transaction execution.

**Verification:** Public runtime and company links are listed in [README.md](README.md). Availability and external production behavior are runtime claims and are not reproduced by this documentation repository.

**Commercial relevance:** Demonstrates how AI interaction can be attached to an existing commerce system without replacing the merchant's operational boundary.

## Agentic OS
**Status:** Implemented architecture / release-candidate work

**Problem:** Agent systems become difficult to trust when goals, tool use, retries, state, and completion evidence are scattered across opaque execution paths.

**Built:** A modular agent runtime architecture covering workflows, receipts, ledgers, plugins, QA, release, and operator-visible execution.

**Technical depth:** State handling, tool orchestration, authorization boundaries, retry discipline, execution receipts, QA, and release structure.

**Verification:** The governing execution model is summarized in [docs/GOVERNED-EXECUTION.md](docs/GOVERNED-EXECUTION.md), with a runnable public-safe sample in [samples/governed-agent-loop.py](samples/governed-agent-loop.py).

**Commercial relevance:** Applies directly to AI automation, internal agents, approval workflows, and systems where useful automation must remain observable and bounded.

## CCMB
**Status:** Operational framework

**Problem:** Complex AI-assisted work degrades when instructions, context, limitations, decisions, and release evidence are not carried forward consistently.

**Built:** A structured continuity and operational framework for instruction handling, context, limitations, release receipts, manifests, checksums, and validation.

**Technical depth:** Context preservation, structured state transfer, release metadata, integrity checks, and explicit operational constraints.

**Verification:** This public review repository uses the same release discipline through [MANIFEST.sha256](MANIFEST.sha256) and [scripts/verify.sh](scripts/verify.sh).

**Commercial relevance:** Useful for long-running AI workflows, implementation handoffs, technical diligence, and reproducible release processes.

## NavigatorFS
**Status:** Implemented tooling

**Problem:** Operator-owned AI and development environments need fast local inspection without hiding system state behind a large control plane.

**Built:** Linux/Termux workspace tooling for validation, diagnostics, indexing, project inspection, configuration, and exports.

**Technical depth:** Shell/Python automation, filesystem inspection, local diagnostics, configuration handling, and export workflows.

**Verification:** Capability is represented in the public skills and experience records. Private source and system-specific operational material are intentionally outside this repository.

**Commercial relevance:** Maps to technical audits, local automation, environment repair, developer tooling, and lightweight operator-controlled AI infrastructure.

## EdgeNode-X
**Status:** Local AI provisioning/documentation framework

**Problem:** Local AI systems are often difficult to reproduce, maintain, or hand off on limited hardware.

**Built:** A provisioning and documentation framework for operator-controlled local AI environments.

**Technical depth:** Linux provisioning, local-model runtime considerations, dependency/setup automation, documentation, and resource-conscious deployment planning.

**Verification:** Public evidence is documentation-oriented; private implementation material is available only through controlled review where appropriate.

**Commercial relevance:** Useful for privacy-sensitive AI, local inference, internal tooling, and organizations that want more control over runtime cost and data exposure.

## Publication and Verification Tooling
**Status:** Active release practice

**Problem:** A polished repository is not meaningful evidence if its files, links, samples, and release contents cannot be checked reproducibly.

**Built:** Structured release tooling with documentation, manifests, checksums, executable verification, link checks, behavior tests, and controlled publication.

**Technical depth:** Git/GitHub workflows, SHA-256 integrity manifests, Python tests, Markdown link validation, safe staging, and remote-push verification.

**Verification:** Run `bash scripts/verify.sh` from the repository root. See [VERIFICATION.md](VERIFICATION.md).

**Commercial relevance:** Reduces handoff risk for client work, agency delivery, audits, release engineering, and technical due diligence.

## Additional public work

- **.xkey:** structured instruction/state concepts for operational information, workflows, state transfer, and agent interaction.
- **Terminal Control:** operator-oriented terminal interface concepts for observing and controlling structured workflows.
- **CrossingKey Open Specifications:** public conventions and scoped interface specifications intended for interoperability without exposing private implementation details.
- **CrossingKey Developer Documentation:** public integration guidance, compatibility notes, and technical references.
- **CrossingKey Web Experience:** public web/interface standards, accessibility notes, and release documentation.
