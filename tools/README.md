# Tools

This directory is reserved for validators, report normalizers, and other
supporting tooling that can enforce or check phronesis standards.

Current tools:

- `validate-audits.sh`: validates audit category schema and registry consistency.

Likely future uses:

- policy-matrix validation
- exception-ledger shape validation
- audit report consistency checks
- canonical document import/diff helpers

Keep tooling here generic and cross-repo. Repo-local implementation scripts
should stay in their own source repositories.
