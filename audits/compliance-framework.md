# Compliance Framework

## Purpose
- Provide one reusable policy-and-evidence framework for wizardry-family audits.
- Make audit results aggregatable by violation category first, not only by app.
- Support cross-app remediation where one problem class is fixed consistently everywhere.

## Core Model
- `policy`: a named standard or expectation.
- `category`: a recurring violation class tied to one or more policies.
- `finding`: one app-specific instance of a category violation with evidence.
- `status`: one of the canonical policy matrix status values.
- `scope`: the repo, app, template, host, runtime, or generated surface being audited.
- `variance`: a meaningful difference between projects that may not yet be a violation but still needs a standard, exception class, or decision.

## Stable Category Rules
- Every recurring problem gets a short stable category id.
- Category ids should be implementation-neutral and reusable across repos.
- Prefer ids that describe the broken contract, not the accidental implementation.
- A category should map to one or more policy ids where practical.
- If multiple apps show the same bug class, append affected scopes to the existing category instead of inventing near-duplicates.

## Finding Rules
- Local audit notes explain the local evidence and outcome.
- Shared ledgers record normalized category ids, affected scopes, severity, and fix direction.
- Approved exceptions are recorded as `exception-approved`, not as base-rule passes.
- Unknown or weak evidence is recorded as `unknown`, not inferred into a pass.
- A variance item is not closed until it becomes a canonical standard, an approved exception class, or an explicit pending decision.

## Reporting Rules
- Round reports sort categories by highest severity, recurrence count, then shared-template impact.
- Category summaries list affected scopes, evidence files, shared fix direction, and central remediation opportunities.
- Final reports are category-first so fix-it can proceed problem-by-problem instead of app-by-app.
- Local evidence stays in implementation repos; phronesis owns the method, schema, policy ids, and reusable category definitions.

## Enforcement Ladder
- Put each standard in the earliest enforceable layer available.
- Prefer docs first only when no stronger mechanism exists yet.
- Move stable standards into templates, shared hosts, backend contracts, generated output, test harnesses, release tooling, or validators as soon as the pattern is clear.
- If a rule can only be checked by prose review, treat that as temporary and look for a future contract or harness.
