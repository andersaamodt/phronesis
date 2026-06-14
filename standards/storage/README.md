# Storage

Durable app state should be explicit, plain-text, app-owned, and easy to audit.

Rules:

- Primary durable app state defaults to `~/<appname>`.
- Standard-folder roots are acceptable only when they are app-owned and documented.
- Shared cross-app namespaces are not the default durable-root pattern.
- Durable app data is plain text by default.
- User-facing editable files prefer YAML plus Markdown-oriented text.
- JSON is acceptable for app-facing machine state, caches, typed envelopes, and ABI contracts.
