# GUI

GUI standards apply when a wizardry-family project has an app shell, desktop
surface, web UI, or native generated UI.

Rules:

- GUI capabilities map to backend or host actions rather than GUI-only side paths.
- Built-in app settings live in the main app shell unless the app is intentionally a document multiplexer.
- Passive reads, startup hydration, and status refreshes do not mutate durable state.
- Fallback states use guided inline status instead of alerts or send-away instructions.
- Controls fit their content unless the layout genuinely requires full-width fields.
- Dense admin and control surfaces favor rows, tabs, split panes, drawers, menus, and compact icon controls over decorative card grids.
- Primary navigation uses semantic controls and keyboard-visible focus states.
- Busy write actions disable overlapping triggers until the command finishes.
- Background refresh pauses during high-risk interactions and preserves current selection when possible.
- Release or self-update surfaces show published release notes before applying an update.
