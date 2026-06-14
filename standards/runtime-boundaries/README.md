# Runtime Boundaries

Path ownership and bridge ownership should be explicit at the right layer.

Rules:

- Frontends do not infer backend executable paths from document locations or served asset paths.
- Backend path resolution belongs to the host or backend contract.
- Frontends do not send shell fragments or `sh -c` bridge payloads.
- Generated native hosts may know packaged backend and resource paths inside the host-owned native boundary.
- Development fallbacks and environment overrides are allowed only when documented and tested.
- Shipped runtime paths do not compile Cargo-managed helpers on demand.
- Native host behavior such as boot splash, drag regions, menu bar items, file-drop bridges, and platform menus stays host-owned.
- Cross-platform app shells should not reimplement native/runtime concerns ad hoc inside each app.
