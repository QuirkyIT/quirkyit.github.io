# Logging Baseline Report Template

Closing deliverable for the Business Logging Baseline
engagement. It records what is collected, where it goes, how long it is kept, who
owns it, and — most importantly — the evidence that each source actually arrives
and that someone will notice when it stops.

A source that was configured but never produced a verified test event is **not
complete**. Record it as configured-unverified, and say so in the summary.

## Executive summary

- What the business can now answer that it could not before:
- Sources in scope, and how many are validated:
- Retention agreed, and what it costs per month:
- Named owner for collection health:
- What this does **not** provide (state plainly: this is logging, not monitoring;
  it enables investigation and does not guarantee detection; nobody is watching
  these logs unless a separate service says so):

## Scope

- Client:
- Engagement dates:
- Package and caps (source types, endpoints, tenants, destination):
- In-scope systems and platforms:
- Out-of-scope systems, and why:
- Written authorization reference and approved scope:
- Approved change windows used:
- Privacy constraints agreed before collection, including what must **not** be
  collected:

## Destination and retention

- Platform selected, and why (record the alternatives considered and the reason
  for the choice; a platform with no maintainer is not a choice):
- Who operates the platform:
- Region / data residency:
- Access control: who can read, who can search, who can change configuration:
- Retention period per source type, and the basis for it (business need, legal
  or contractual requirement, or cost):
- Deletion behaviour at end of retention, and whether it is verified:
- Ingest and storage cost at current volume, and the assumption behind it:
- What happens to cost if volume doubles:

## Source inventory and validation

One row per source. "Validated" means a test event was generated, arrived, was
searchable and was found, with timestamps recorded.

| # | Source | Type | Endpoints / scope | Events forwarded | Destination index | Retention | Test event sent | Arrived (delay) | Searchable | Owner | Status |
|---|---|---|---|---|---|---|---|---|---|---|---|
| | | | | | | | | | | | |

Status values: **Validated** / **Configured, unverified** / **Partial** /
**Not implemented** / **Out of scope**. Do not use "complete" for a source with
no arrival evidence.

### Sources deliberately not collected

| Source | Why not | Consequence for investigations | Revisit when |
|---|---|---|---|
| | | | |

This table matters as much as the one above it. It is the honest statement of
what still cannot be answered.

## Validation evidence

For each validated source, record what was actually done:

### Source [name]

- Test event generated (what, by whom, exact time):
- Arrival time at destination:
- Delay:
- Search performed (the actual query):
- Result returned:
- Screenshot / evidence reference:
- Repeated after any configuration change:

## Failure and recovery testing

Collection that silently stops is the failure mode that matters. Record what was
tested, not what was assumed.

| Test | Method | Expected behaviour | Observed behaviour | Detected by | Time to detect | Pass / fail |
|---|---|---|---|---|---|---|
| Collector outage | | | | | | |
| Single source stops sending | | | | | | |
| Destination unreachable | | | | | | |
| Disk / quota exhaustion | | | | | | |
| Credential or token expiry | | | | | | |

- Who is alerted when collection stops, and by what route:
- Has that alert route been tested end to end, and when:
- What the named owner is expected to do on receiving it:
- What happens to events generated during an outage (buffered, lost, or backfilled):

An untested alert route is an assumption. Say so.

## Sample investigations

Demonstrate the baseline against questions the business actually cares about.
Record the query and the result, not just the claim that it works.

| Business question | Source(s) used | Query | Result | Time taken | Limitation |
|---|---|---|---|---|---|
| e.g. "Who signed in to this account, from where, in the last 30 days?" | | | | | |
| e.g. "Was this file accessed before it was deleted?" | | | | | |
| e.g. "Did this message reach the recipient?" | | | | | |

Include at least one question the baseline **cannot** answer, and why.

## Operational handover

- Named owner for collection health:
- Backup owner:
- Routine check: what, how often, how long it takes, and how it is recorded:
- What "healthy" looks like, expressed so a non-specialist can confirm it:
- Escalation route when a source stops:
- Change process when a new system is added — who decides whether it is logged:
- Licence, subscription and renewal dates, and who holds them:
- Documentation location, and whether it is accessible during an outage of the
  logged systems themselves:
- Training given, to whom, and on what date:

## Business result and acceptance

- Original business question / decision:
- Agreed package, coverage caps and exclusions:
- Baseline and observed result (do not claim unmeasured benefits; "we can now
  answer X" is a claim that must be backed by a sample investigation above):
- Completed, skipped, failed and unavailable checks/sources:
- Remaining assumptions and acceptance gaps:

| Priority action / decision | Business reason | Owner | Due date | Effort / external cost estimate | Verification |
|---|---|---|---|---|---|
| | | | | | |

- Recommended next decision, including whether further paid work is needed:
- Client reviewer, response and acceptance date:
- Handover / ongoing owner:
- Approved recipients, delivery location and evidence retention/deletion date:

## Evidence and source record

| Evidence ID | Source / URL | Observed date | Fact or inference | Confidence / limitation |
|---|---|---|---|---|
| | | | | |

Source errors or unavailable checks must not be reported as a clean result.
Logging enables investigation. It does not detect, alert, respond or prove that
an incident did not occur.
Use synthetic or explicitly approved redacted material for any marketing sample.


## Document control and delivery record

- Client / report ID / version / status / issue date / timezone: [Values.]
- Author / technical reviewer / review date: [Named reviewers and completed review.]
- Agreed scope reference, variations and exact deliverable: [References.]
- Report and private evidence pack locations / approved recipients: [Locations.]
- Version history and correction round: [Change, date, author and acceptance.]

## Coverage and acceptance reconciliation

| Requirement / scoped item | Planned quantity | Actually tested | Accepted | Partial / failed / not run | Evidence / exception / owner |
|---|---|---|---|---|---|
| [Each source family, instance, decoy or route] | [Count] | [Count] | [Count] | [Reason and count] | [References] |

Do not mix family counts, device counts and test counts. Do not group connectors
with different configuration/permissions under one type merely to fit a price cap.
Preserve failed first tests and successful retests, with the change between them.

## Detailed exception — repeat for each unresolved item

- ID / title / current status: [Specific gap.]
- Expected requirement and business purpose: [Acceptance criterion.]
- Observed result / time / evidence: [What was actually tested.]
- Impact and uncertainty: [What can no longer be concluded or operated reliably.]
- Cause or unresolved dependency: [Verified cause versus working hypothesis.]
- Interim measure and limits: [Control, owner and expiry.]
- Completion action / owner / target / effort basis: [Specific next steps.]
- Included completion work or separate change: [Reference; do not charge again for an included uncompleted requirement.]
- Verification and acceptance: [Exact test, approver and date; risk acceptance is not a passed test.]

## History, cost and lifecycle verification

| Dataset / source instances | First collection / oldest verified event | Configured retention | Backfill performed and verified | Expiry test / due date | Business question still unanswerable |
|---|---|---|---|---|---|
| [Dataset] | [Timestamps] | [Days] | [Result or none] | [Evidence or scheduled date] | [Gap] |

Installing a 180-day policy does not create 180 days of history. Check deletion at
each relevant retention milestone, not only the longest one. Identify per-source
configuration where two feeds share a destination table and cannot retain independently.

| Volume group | Measured GB/day and interval | Retention days | Raw retained-volume calculation | Index/replica/backup assumptions | Monthly cost / source/date |
|---|---|---|---|---|---|
| [Group] | [Measurement] | [Days] | [GB/day × days] | [Explicit overheads] | [Quote or labelled allowance] |

Separate licences, ingestion, search, archive, restoration, provider care and client
labour. Reconcile totals and show a doubled-volume scenario as an estimate, not a
vendor-pricing rule. Record source-specific failure tests; one collector outage
does not validate every cloud connector. Include queue exhaustion, permanent gaps
and the exact recovered event IDs in the recovery record.
