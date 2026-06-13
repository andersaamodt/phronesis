# Exceptions

Exceptions are not informal excuses. An exception records a deliberate decision
to depart from a base standard, with rationale, evidence, owner, and re-audit
trigger.

Required fields:

- `id`
- `policy_id`
- `scope`
- `status`
- `rationale`
- `evidence`
- `approved_by`
- `approved_at`
- `re_audit_trigger`

Valid statuses:

- `proposed`
- `approved`
- `expired`
- `superseded`
