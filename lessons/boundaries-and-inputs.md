# Boundaries And Inputs

- Imported and hand-edited metadata is untrusted input and must be revalidated at read boundaries, not only at write boundaries.
- Backend machine-readable output needs full record-shape validation; line-break rejection alone does not protect tab-, pipe-, or `key=value` contracts.
- Read paths must not mutate durable state; cleanup belongs in explicit write or maintenance paths.
- Release and packaging metadata is executable input; validate it before it reaches signers, uploaders, installers, archive tools, or generated project files.
- Workspace-relative paths must resolve inside the workspace after symlink resolution, not only after string-shape checks.
- Background jobs need a full lifecycle contract: bounded lease or heartbeat, stale-lock expiry, explicit shutdown, and child-process reaping.
