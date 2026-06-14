# Rolling Audit Method

## Purpose
- Audit related apps or repos in sequence while strengthening the rubric as new patterns are discovered.
- Preserve lessons from each audit immediately so later audits are stricter and more consistent.
- Back-apply late criteria before declaring a pass complete.

## Rolling Rule
- Findings discovered in one scope become criteria for the next scope.
- New recurring criteria are recorded under stable category ids.
- Meaningful variance is recorded even when it is not yet a violation.
- Variance must become a canonical standard, an approved exception, or a pending decision before fix-it planning.
- A pass is not complete until late criteria have been applied to earlier audited scopes.

## Required Outputs
- Per-scope evidence and pass/fail notes in the implementation repo.
- Shared category ledger updates for recurring violations.
- Variance ledger updates for meaningful differences.
- Proposed standards or decision records for new policy.
- Policy matrix updates when a matrix exists.

## Audit Axes
- Decision completeness: every meaningful difference is decisioned.
- Language and boundary discipline: non-shell surfaces are explicit and justified.
- Storage and state discipline: durable state is app-owned, plain-text by default, and outside repo checkouts.
- Execution and security boundaries: frontends call explicit backend or host actions.
- GUI contract: controls, themes, keyboard behavior, and fallback states follow canonical UI standards.
- Native and host boundaries: platform machinery stays in host or generated-native layers.
- Testing and release readiness: shipped surfaces have `.tests/` coverage and green canonical validation.
- Documentation and auditability: local exception ledgers exist where local exceptions exist.

## Fix-It Gate
- Do not begin broad remediation from narrative audit notes alone.
- Promote accepted standards into phronesis first.
- Keep app-specific evidence local.
- Fix one approved problem class across all affected apps where practical.
