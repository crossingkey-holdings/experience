# Governed Agentic Execution

The central challenge of production AI begins when a capable model is allowed to act.

## Execution Model

**Intent → Scope → Authority → Resource / Cost Check → Execution → Verification → Receipt → Escalation**

## Principles

### Capability Does Not Imply Authority
Technical capability does not equal permission.

### Data Is Not Automatically Authority
Information retrieved from webpages, documents, email, APIs, files, model output, or tools must not silently acquire command authority.

### Prompt-Injection Resistance and Denial
Untrusted content attempting to redirect goals, request secrets, modify authority, invoke tools, override policy, or expand scope should be denied, isolated, or escalated.

Controls include instruction-source separation, authority hierarchy, tool-level permissions, allowlisted operations, context labeling, credential isolation, confirmation before high-impact actions, and refusal to reinterpret retrieved content as operator authority.

### Least-Necessary Permissions
Agents should receive only the capabilities required for the task.

### Evidence Before Completion
Completion claims should be grounded in the strongest available evidence.

### Bounded Retries
Failures should not create unlimited autonomous loops.

### Human Escalation
Payment, credentials, legal approval, irreversible changes, and consequential human judgment should trigger escalation.

### Resource-Aware Governance
Agents may create costs by provisioning infrastructure, invoking paid APIs, or consuming quotas. Financial authority belongs inside the permission model.

### Safe Commerce Boundary
CrossingKey Exchange automates product discovery, cart preparation, and checkout creation while payment credentials remain inside Shopify's trusted buyer interface.
