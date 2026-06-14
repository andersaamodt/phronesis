# Adversarial Testing

Adversarial testing is hostile-but-plausible testing for inputs, states, files,
metadata, paths, bridges, and GUI flows that can make a project violate its own
contracts.

## Method
- Pick one narrow surface: backend arguments, profile files, bridge actions, GUI input, release metadata, packaging, or drag/drop payloads.
- Reproduce the bug with a temp-root test, fake home, stubbed tool, or GUI probe before editing code when practical.
- Add focused regression coverage for the bug class.
- Keep test output, screenshots, logs, and scratch projects outside the repo unless they are deliberate fixtures.
- Commit each completed adversarial batch before starting a different surface.

## Default Questions
- Can a path, name, config value, or imported metadata escape its intended root?
- Can hand-edited state bypass writer-side validation?
- Can shell quoting, globbing, `sh -c`, menu actions, generated files, or parser recursion execute the wrong command?
- Can missing, stale, symlinked, partial, or permission-denied filesystem state corrupt data or hide failure?
- Can fake remote metadata, package-manager output, restricted `PATH`, or hostile API fields make release tooling do the wrong thing?
- Can test harness stubs, executable bits, skips, or environment overrides make a test pass without exercising the intended behavior?
- Can GUI rows, logs, status fields, or backend `key=value` output be forged with tabs, delimiters, or line breaks?
- Can rapid repeated actions, cancellation, or stale locks leave durable state half-written?

## Regression Patterns
- Prefer backend shell tests for command contracts.
- Prefer static UI contract tests for required controls and semantics.
- Pair GUI-only regressions with a real browser or platform automation note when layout, focus, drag/drop, or host behavior matters.
- Assert both rejection message and absence of side effects.
- Test imported and hand-edited data, not only happy-path writer output.
