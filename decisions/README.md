# Decisions

Decision records explain why a standard exists and what future projects,
generators, audits, and fix-it batches must do.

Use `0000-template.md` for new records.

## Current Proposed Decisions

- `variance.reasoned`: meaningful unreasoned app-to-app variance is standards debt.
- `storage.app-home-default`: primary durable app state defaults to `~/<appname>`.
- `storage.plain-text`: durable app data is plain text by default.
- `format.user-yaml-md`: user-facing editable files prefer YAML plus Markdown-oriented text.
- `tests.dot-tests`: runnable tests live under `.tests/`.
- `docs.exception-ledger-shape`: repo-local AI docs enumerate local exception boundaries in a predictable shape.
- `themes.shared-catalog-authority`: apps using wizardry themes discover the real shared catalog.
- `themes.native-shared-catalog-parity`: generated native theme controls use the same discovered catalog across platform outputs.
- `bridge.backend-resolution-owned`: backend executable path resolution belongs to host/backend contracts.
- `bridge.no-shell-fragments`: frontends do not send shell fragments or `sh -c` payloads.
- `runtime.no-cargo-on-demand`: shipped runtime paths do not compile Cargo-managed helpers on demand.
- `repo.no-disposable-cruft`: source repos do not receive disposable outputs, logs, caches, package artifacts, or app-instance state.

## Open Review Questions

- Whether existing Python runtime surfaces are removal-default or documentation-plus-reduction-default.
- Whether Forge-generated apps must default to shared wizardry themes unless opted out at generation time.
- Whether generated native hosts may know packaged backend paths directly inside the host boundary.
- Whether every wizardry-family repo should import the canonical phronesis `.gitignore` verbatim or may keep documented specializations.
