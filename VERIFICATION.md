# Verification

This repository ships with a small reproducible verification surface.

Run from the repository root:

```bash
bash scripts/verify.sh
```

The verifier checks:

1. Python sample syntax.
2. Five behavioral tests for authorization, success, retry, exhaustion, and receipt state.
3. Relative Markdown links inside the repository.
4. The SHA-256 manifest for every tracked package file except the manifest itself.
5. Absence of packaged Python bytecode and `__pycache__` directories.

A passing run verifies this public package only. It does not independently prove external production availability, private infrastructure behavior, or historical deployment claims.
