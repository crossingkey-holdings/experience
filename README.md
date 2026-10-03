# Jeremy Paul Allen / crossingkey_

## AI Systems & MCP Engineer · Agent Infrastructure · Verification

This repository is the canonical public review surface for my work at CrossingKey Intelligence. It is organized for employers, contract teams, technical partners, and diligence reviewers who need a fast, evidence-oriented view of what I design, build, operate, test, and document.

My strongest focus is the layer between human intent and machine execution: explicit tool contracts, permissions, state, failure handling, observability, verification, recovery, and human authority.

> **Core engineering principle:** Capability does not imply authority.

## Production proof

### CrossingKey MCP

I design and operate a public Model Context Protocol service for governed machine commerce.

- Source: https://github.com/crossingkey-holdings/crossingkey-mcp
- Live MCP: https://mcp.crossingkeyintelligence.com/mcp
- Canonical identity: `com.crossingkeyintelligence/crossingkey-mcp`
- Public source release: **3.0.1**
- Production runtime documented by the MCP repository: **3.0.0**

The public source exposes free commercial discovery, marketplace discovery, payment- or credit-gated capability execution, MCP resources for agent comprehension, and authenticated verification/role-gated operations. Its engineering boundaries include human authorization, idempotency, replay protection, settlement verification, entitlements, receipts, and a receiver-only seller-wallet policy.

### Verification work

Public and portfolio evidence includes contract/regression testing, post-deployment verification, persistent state, and deliberate recovery testing around interrupted transaction states. I treat observable runtime state, logs, persistence, network behavior, permissions, and resulting state as evidence rather than treating generated output as proof.

### HAAR research

The public HAAR paper describes my proposed High-Agency Agentic Runtime architecture for bounded, verifiable AI execution:

https://github.com/crossingkey-holdings/crossingkey-public-research/blob/main/research/HAAR.md

It is explicitly published as research rather than a claim that the complete architecture is deployed or benchmarked.

## Review in 10 minutes

1. Read [REVIEWER-GUIDE.md](REVIEWER-GUIDE.md).
2. Inspect [PROJECTS.md](PROJECTS.md) and [EXPERIENCE.md](EXPERIENCE.md).
3. Review [docs/GOVERNED-EXECUTION.md](docs/GOVERNED-EXECUTION.md).
4. Inspect [EVIDENCE.md](EVIDENCE.md) and [VERIFICATION.md](VERIFICATION.md).
5. Review [TECHNICAL-SKILLS.md](TECHNICAL-SKILLS.md).
6. Inspect the live/public MCP source and HAAR research above.

## What this repo demonstrates

- MCP servers/tools, JSON-RPC, Streamable HTTP, agent workflows, and machine-readable interfaces
- Agent/tool orchestration with bounded authority and explicit approval boundaries
- JavaScript/TypeScript, Python, Linux, terminal automation, APIs, webhooks, SQLite, Git/GitHub
- Cloudflare deployment, systemd service operation, Stripe/Shopify integration, x402/Base payment verification
- Idempotency, replay protection, receipts, entitlements, failure recovery, and deterministic verification
- AI-assisted engineering evaluated against observable system behavior
- Product architecture and conversion of technical systems into commercial assets

## Public engineering network

- MCP: https://github.com/crossingkey-holdings/crossingkey-mcp
- Research: https://github.com/crossingkey-holdings/crossingkey-public-research
- Specifications: https://github.com/crossingkey-holdings/crossingkey-open-specifications
- Developer documentation: https://github.com/crossingkey-holdings/crossingkey-developer-documentation
- Web experience: https://github.com/crossingkey-holdings/crossingkey-web-experience
- Design language: https://github.com/crossingkey-holdings/crossingkey-design-language
- Product catalog: https://github.com/crossingkey-holdings/crossingkey-product-catalog

## Public-safety boundary

This repository contains reviewable evidence, architecture, documentation, and public links. Credentials, customer information, private source, security-sensitive configuration, unreleased research, and proprietary operational material remain outside the public surface.

For deeper technical, contract, partnership, or acquisition diligence, see [PRIVATE-ACCESS.md](PRIVATE-ACCESS.md).

## Contact

**founder@crossingkeyintelligence.com**  
https://crossingkeyintelligence.com
