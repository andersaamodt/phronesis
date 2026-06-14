# Themes

Apps that use themes should follow one standardized theme contract rather than
drifting app by app.

Rules:

- Apps that use wizardry themes discover the real shared theme catalog.
- Shared theme lists are alphabetized at the authoritative contract source.
- Closed theme pickers still honor up and down arrow theme cycling.
- Theme application should be deep and complete across the app shell.
- App-local themes and fixed palettes are allowed only when documented as app identity.
- Apps with app-local themes still define their own ordering, keyboard, persistence, and depth contract.
- Generated native theme controls that expose shared themes must use the same discovered shared catalog across platform outputs.
- Opening and closing a theme picker without changing value preserves the current active selection.
- Selecting a theme applies immediately with no reload or deferred repaint artifact.
- Desktop apps persist selected shared themes through backend preferences, not browser-owned durability.
