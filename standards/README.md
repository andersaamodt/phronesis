# Standards

Standards are reusable rules that should shape new wizardry-family projects
before code is generated or written.

Good standards are:

- explicit enough for generators and auditors to apply
- narrow enough to avoid hiding policy choices in slogans
- paired with allowed exception shapes when exceptions are real
- backed by tests, templates, shared code, or validators whenever possible

Current seed areas:

- `language/`: sh-first policy, non-shell boundaries, and current-audit Python posture
- `storage/`: durable roots, plain-text defaults, and preferred file formats
- `tests/`: `.tests/` contract and shipped app test expectations
- `themes/`: shared theme contract and app-local theme exception rules
- `gui/`: app shell, controls, fallback states, and interaction contracts
- `runtime-boundaries/`: backend-path ownership, native host boundaries, and no-shell-fragment rules
- `repo-docs/`: repo-local exception ledger requirements
- `repo-hygiene/`: source checkout discipline, ignored cruft, and output roots
- `adversarial-testing/`: hostile-but-plausible testing method and bug-class prompts
