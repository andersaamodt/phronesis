# Decisions

Decision records explain why a standard exists and what future projects,
generators, audits, and fix-it batches must do.

Use `0000-template.md` for new records.

## Current Canonical Decisions

- `variance.reasoned`: meaningful unreasoned app-to-app variance is standards debt.
- `language.exception-ledger`: wizardry-family projects are strongly POSIX `sh`-first. Rust is the preferred non-shell language when another language is necessary. C, C++, and Python are acceptable when necessary or explicitly retained, but Python remains non-preferred for future work. Any meaningful non-shell boundary belongs in the local exception ledger. Existing audited Python runtime surfaces are removal-default unless explicitly re-approved.
- `storage.app-home-default`: primary durable app state defaults to `~/<appname>`.
- `storage.plain-text`: durable app data is plain text by default.
- `format.user-yaml-md`: user-facing editable files prefer YAML plus Markdown-oriented text.
- `tests.dot-tests`: runnable tests live under `.tests/`.
- `docs.exception-ledger-shape`: repo-local AI docs enumerate local exception boundaries in a predictable shape.
- `themes.app-local-documented`: apps may use app-local themes or fixed palettes only when that decision is explicitly documented as app identity.
- `themes.shared-catalog-authority`: apps that use wizardry themes discover the real shared catalog.
- `themes.native-shared-catalog-parity`: generated native theme controls use the same discovered catalog across platform outputs.
- `bridge.native-host-boundary`: generated native hosts may know packaged backend and resource paths inside the host-owned native boundary. Frontends and web surfaces may not infer those paths.
- `bridge.backend-resolution-owned`: backend executable path resolution belongs to host/backend contracts.
- `bridge.no-shell-fragments`: frontends do not send shell fragments or `sh -c` payloads.
- `runtime.no-cargo-on-demand`: shipped runtime paths do not compile Cargo-managed helpers on demand.
- `repo.canonical-gitignore`: repos import the canonical phronesis `.gitignore` verbatim unless an explicit exemption is documented.
- `repo.no-disposable-cruft`: source repos do not receive disposable outputs, logs, caches, package artifacts, or app-instance state.

## Open Review Questions

- None currently recorded.
