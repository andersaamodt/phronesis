# Runtime Boundaries

Path ownership and bridge ownership should be explicit at the right layer.

Rules:

- Frontends do not infer backend executable paths from document locations or served asset paths.
- Backend path resolution belongs to the host or backend contract.
- Frontends do not send shell fragments or `sh -c` bridge payloads.
- Timeout-sensitive runtime probes call the authoritative helper directly rather than nesting an additional shell status wrapper around it.
- Generated native hosts may know packaged backend and resource paths inside the host-owned native boundary.
- Generated native desktop artifacts should minimize launch-assessed executables; avoid app-to-wrapper-to-helper chains when the host can dispatch the runtime contract directly.
- macOS app packaging must treat Gatekeeper and code-signing assessment as a scarce platform resource: stable bundles, explicit signing, no arbitrary identity auto-discovery, no repeated executable churn.
- Development fallbacks and environment overrides are allowed only when documented and tested.
- Shipped runtime paths do not compile Cargo-managed helpers on demand.
- Native host behavior such as boot splash, drag regions, menu bar items, file-drop bridges, and platform menus stays host-owned.
- Cross-platform app shells should not reimplement native/runtime concerns ad hoc inside each app.
