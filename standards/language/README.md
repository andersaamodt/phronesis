# Language

wizardry-family projects are strongly POSIX `sh`-first.

Rules:

- Use POSIX `sh` by default for project logic unless another language is necessary.
- Treat non-shell languages as explicit boundaries, not ambient permission.
- Rust is the preferred non-shell language when a non-shell language is necessary.
- C is acceptable when low-level integration or minimal-runtime systems work makes it necessary.
- C++ is acceptable when performance-critical or ecosystem-constrained work makes it necessary.
- Python is acceptable but non-preferred relative to POSIX `sh`.
- Existing Python runtime surfaces in the current audited repos are removal-default unless explicitly re-approved.
- Every meaningful non-shell boundary belongs in the repo-local exception ledger.
