# Repo Docs

Each repo needs a local standards surface that records its own exceptions where
the next agent or auditor will actually look first.

Rules:

- Repos with local exceptions keep a repo-local AI-facing exception ledger.
- The ledger imports upstream standards and then names the repo's local boundaries.
- The ledger includes language, storage, durable formats, themes, runtime or bridge ownership, tests, release or build outputs, approved exceptions, and pending decisions.
- Redirect-only local AI docs are insufficient when a repo has meaningful local exceptions.
- Feature-specific AI docs can coexist with the ledger, but they do not replace the full local exception contract.
- Checked-in config examples and copyable setup templates must match current runtime defaults.
- Stale audit tables or stale local standards are standards violations, not harmless historical clutter.
