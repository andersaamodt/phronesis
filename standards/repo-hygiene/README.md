# Repo Hygiene

Source repositories are canonical source and development contexts. They are not
runtime homes, package-output shelves, cache directories, log sinks, browser
profiles, app-instance state roots, or scratch workspaces.

## Rules

- Keep disposable outputs outside source repos unless the file is an intentional checked-in fixture.
- Put transient outputs in `${TMPDIR:-/tmp}` or another explicit external build root.
- Put durable operator-local state in app-owned user-local roots, not in a checkout.
- Treat repo-local cruft as a tooling bug to fix at the source, not as a mess to tolerate.
- Track generated source only when it is a deliberate reviewable artifact.
- Do not track package outputs, dependency caches, local logs, compiled helper outputs, or build intermediates.
- Generated staging trees should be disposable and rerender-safe after ordinary local tool artifacts appear.
- Scripts, test harnesses, and verification surfaces must target the canonical external generated-output root rather than assuming a repo-local `generated/` tree still exists.
- Empty placeholder logs are repo cruft, not source.
- If a path must remain near the repo for tooling reasons, ignore it and document the reason.

## Canonical Ideal Document

- `wizardry-general.gitignore` is the canonical comprehensive wizardry-family `.gitignore`.
- Projects import it verbatim unless an explicit exemption is documented.
