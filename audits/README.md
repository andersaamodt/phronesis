# Audits

Audits for the wizardry family are category-first and rolling.

Rules:

- Findings discovered in one app become criteria for the next app.
- Late criteria must be back-applied before a pass is considered complete.
- Recurring violations use stable category IDs.
- Reports should sort by severity, recurrence, and shared-template impact.
- Meaningful non-violating variance is recorded until decisioned.

Audit outputs should include:

- local evidence in the app repo
- shared category ledger updates
- variance ledger updates
- proposed standards for later promotion
- policy-matrix status updates when the matrix exists

Canonical method files:

- `rolling-audit.md`
- `compliance-framework.md`
- `category-ledger-schema.yaml`
- `category-registry.yaml`
