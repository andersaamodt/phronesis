# Storage

Durable app state should be explicit, plain-text, app-owned, and easy to audit.

Rules:

- Primary durable app state defaults to `~/<appname>`.
- Standard-folder roots are acceptable only when they are app-owned and documented.
- Shared cross-app namespaces are not the default durable-root pattern.
- Durable app data is plain text by default.
- User-facing editable files prefer YAML plus Markdown-oriented text.
- JSON is acceptable for app-facing machine state, caches, typed envelopes, and ABI contracts.
- Browser or WebView local storage may be used as bootstrap cache only when a canonical file-backed contract can fully restore state.
- Browser-owned storage should not be the only durable home for user secrets, identity state, pending sync queues, or account recovery material.
- Passive reads, startup hydration, and status refreshes must not mutate durable state.
- Deployment paths, site names, served roots, or local bundle locations must not become the canonical durable state home for desktop apps.
