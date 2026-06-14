# Tests

Shipped apps need a stable, discoverable test surface.

Rules:

- Runnable test entrypoints live under `.tests/`.
- Shipped apps need backend contract coverage under `.tests/`.
- Shipped GUI apps need UI, static, or native-shell contract coverage under `.tests/`.
- Other test-related paths may hold fixtures or helpers, but they are not the canonical test entrypoints.
- Native IR or schema validation alone does not satisfy shipped GUI coverage.
- High-risk flows need adversarial coverage for bridges, paths, persistence, run/build/install flows, and drag/drop.
- Release/readiness claims require matching tests or explicitly documented gaps.
