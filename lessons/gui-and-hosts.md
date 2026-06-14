# GUI And Hosts

- Native host drag geometry should stay host-owned; transparent overlays or CSS-only drag regions can steal clicks from real controls.
- Desktop startup sizing belongs before first visible paint; if the window visibly resizes after launch, treat that as a startup regression.
- Splash correctness includes the first native frame, not only the later web frame; host background and splash palette must agree before the web UI is ready.
- GUI refresh loops should pause during high-risk interactions and preserve current selection whenever the selected item still exists.
- Theme controls need keyboard parity, authoritative ordering, and immediate application; click-only or fallback-only behavior is contract drift.
