# Evidence Index

This index separates public proof from capability statements so reviewers can see what is directly inspectable and what requires controlled diligence.

| Capability | Public evidence | Evidence level | Notes |
| --- | --- | --- | --- |
| Governed agent execution | [docs/GOVERNED-EXECUTION.md](docs/GOVERNED-EXECUTION.md), [samples/governed-agent-loop.py](samples/governed-agent-loop.py), [tests/test_governed_agent_loop.py](tests/test_governed_agent_loop.py) | Reproducible in this repo | Authorization, retry limits, receipts, escalation behavior |
| Human–AI interaction design | [docs/HUMAN-AI-INTERACTION.md](docs/HUMAN-AI-INTERACTION.md), [samples/evaluation-rubric.md](samples/evaluation-rubric.md) | Directly inspectable | Context, correction, evaluation, interaction boundaries |
| Release verification | [VERIFICATION.md](VERIFICATION.md), [scripts/verify.sh](scripts/verify.sh), [MANIFEST.sha256](MANIFEST.sha256) | Reproducible in this repo | Integrity, behavior tests, relative-link validation |
| Commerce / agent-compatible buying | CrossingKey Exchange links in [README.md](README.md) | Public runtime claim | Runtime availability is external to this repository |
| API / automation / integration capability | [TECHNICAL-SKILLS.md](TECHNICAL-SKILLS.md), [PROJECTS.md](PROJECTS.md) | Portfolio evidence | Deeper implementation evidence may require controlled review |
| Operational AI architecture | Agentic OS and CCMB entries in [PROJECTS.md](PROJECTS.md) | Architecture + sample evidence | Public-safe subset only |
| Linux / local AI tooling | NavigatorFS and EdgeNode-X entries in [PROJECTS.md](PROJECTS.md) | Portfolio evidence | Private/system-specific implementation intentionally excluded |
| Public specifications and developer documentation | Public GitHub repositories linked in [README.md](README.md) | External public repositories | Review linked repositories directly |

## External public repositories

- https://github.com/crossingkey-holdings/crossingkey-open-specifications
- https://github.com/crossingkey-holdings/crossingkey-developer-documentation
- https://github.com/crossingkey-holdings/crossingkey-web-experience
- https://github.com/crossingkey-holdings/crossingkey-design-language
- https://github.com/crossingkey-holdings/crossingkey-public-research

## Evidence boundary

Credentials, private source, customer data, unreleased research, and security-sensitive implementation details are deliberately excluded from the public review surface. See [PRIVATE-ACCESS.md](PRIVATE-ACCESS.md) and [PUBLIC-SAFETY.md](PUBLIC-SAFETY.md).
