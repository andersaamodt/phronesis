# phronesis

`phronesis` is the wizardry-family standards and practical-wisdom repository.
It turns hard-won project lessons into reusable policy, decision records,
exception ledgers, audit methods, templates, and canonical ideal documents.

The immediate audience is wizardry, wizardry-apps, theurgy, and apps generated
from them. The broader audience is developers who want a project culture where
defaults are explicit, variance is reasoned, and humane technical standards can
be enforced without copying corporate compliance values.

## Founding Rule

Unreasoned app-to-app variance is standards debt. A meaningful difference
between projects should become one of:

- a canonical standard
- an approved exception with rationale and evidence
- a pending decision with a re-audit trigger

## Repository Map

- `standards/`: canonical policy and ideal documents.
- `policies/`: stable policy IDs and machine-readable compliance schemas.
- `templates/`: standard repo-local documents and exception-ledger shapes.
- `decisions/`: decision records explaining why standards exist.
- `exceptions/`: exception schema and future approved exception registries.
- `audits/`: rolling-audit method and category-first reporting rules.
- `lessons/`: promoted lessons from wizardry-family audits.
- `tools/`: future validators and report consistency checks.

## Seed Standards

The first seed is repo hygiene: source repositories are not app-instance
directories, package-output shelves, cache homes, log sinks, or scratch spaces.
The canonical comprehensive `.gitignore` is in
`standards/repo-hygiene/wizardry-general.gitignore`.

## License

This repository is licensed under OWL 3.1. See `LICENSE`.
