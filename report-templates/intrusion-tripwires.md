# Tripwire Deployment and Validation Report Template

Closing deliverable for the
Internal Intrusion Tripwires (OpenCanary)
engagement. It records where the decoys are, which services they present, the
evidence that each one alerts the right person, what happens when the sensor or
the alert path fails, and who investigates.

A decoy that has never produced a test alert reaching a named human is **not
deployed**. It is installed. Say which.

## Executive summary

- What the business can now detect that it could not before:
- Sensors deployed, and how many decoy services are validated end to end:
- Named responder, and their agreed response window:
- Alert path(s) tested, and when:
- What this does **not** provide — state plainly:
  - An alert is evidence of an interaction, not proof of an attacker. Authorised
    scanners, inventory tools and curious administrators trigger decoys.
  - Absence of alerts does not establish that the business is clean or uncompromised.
  - Decoys detect interaction within the networks where they sit. They see
    nothing elsewhere.
  - This is detection placement, not monitoring, not response, and not a
    retainer, unless a separate agreement says otherwise.

## Scope

- Client:
- Engagement dates:
- Package and caps (sensors, networks, decoy services, alert destinations):
- Networks in scope, with the business reason each was chosen:
- Networks out of scope, and what that means for coverage:
- Written authorization reference and approved scope:
- Approved change windows used:
- Who was told that decoys exist, and who was deliberately not told, and why:

The last point matters. If nobody is told, a legitimate administrator's alert
becomes an incident. If everybody is told, the decoy tells you less. Record the
decision and who made it.

## Sensor inventory

| # | Sensor ID | Location / site | Network / VLAN | IP address | Hostname presented | Hardware | Power / mounting | Physical access control | Owner |
|---|---|---|---|---|---|---|---|---|---|
| | | | | | | | | | |

- Naming and addressing rationale (a decoy that looks nothing like the
  environment around it will not be touched):
- How each sensor is managed, and from where:
- How sensor credentials and configuration secrets are held, and who can read them:
- Network position: what the sensor can reach, and what can reach it:

## Decoy service validation

One row per decoy service per sensor. "Validated" means a deliberate interaction
was generated from an approved source, an alert was produced, it reached the
agreed destination, and a named human confirmed receipt.

| # | Sensor | Decoy service | Port | Test performed | Test source | Time triggered | Alert generated | Alert received (route, time) | Received by | Delay | Status |
|---|---|---|---|---|---|---|---|---|---|---|---|
| | | | | | | | | | | | |

Status values: **Validated end to end** / **Alert generated, delivery unverified**
/ **Configured, untested** / **Failed** / **Disabled**.

### Decoy services deliberately not enabled

| Service | Why not | Consequence | Revisit when |
|---|---|---|---|
| | | | |

## Alert path and failure testing

| Test | Method | Expected behaviour | Observed behaviour | Detected by | Time to detect | Pass / fail |
|---|---|---|---|---|---|---|
| Primary alert route delivers | | | | | | |
| Secondary / fallback route delivers | | | | | | |
| Sensor powered off | | | | | | |
| Sensor loses network | | | | | | |
| Alert destination unavailable (mailbox full, webhook down, number unreachable) | | | | | | |
| Alerts sent outside business hours | | | | | | |
| Duplicate / repeated interaction (does it flood?) | | | | | | |

- How a dead sensor is noticed, by whom, and how quickly:
- Has the missing-heartbeat alarm been tested, or only configured:
- What an alert looks like when it arrives — reproduce the actual text, so the
  responder recognises it at 2am:
- Where alerts are recorded so a pattern over time is visible:

A decoy whose alert path has not been tested has unverified delivery; do not count it as an accepted detection control.

## Baseline noise

Record what triggered the decoys during the engagement before anyone concludes
that an alert means intrusion.

| Date | Sensor | Service | Source | Determined cause | Action taken |
|---|---|---|---|---|---|

- Known benign sources that will trigger decoys (vulnerability scanners,
  inventory agents, network management, backup discovery, printers):
- Whether any were excluded, and the risk that exclusion creates:
- Expected alert volume in normal operation, and the basis for that expectation:

## Response process

- Named responder:
- Backup responder:
- Agreed response window (and whether it is a commitment or an intention):
- Triage steps, in order, written so the responder can follow them under pressure:
  1. Confirm the alert is genuine and identify the source address.
  2. Determine whether the source is a known device, and who owns it.
  3. Decide whether to isolate, observe or dismiss, and who authorises that.
  4. Record the decision and the reasoning.
- When to escalate, to whom, and by what route:
- What the responder must **not** do (for example: do not wipe the source device
  before anyone has looked at it):
- Where the response is recorded:
- Has this process been walked through with the responder, or only written?

## Operational handover

- Routine check: what, how often, how long it takes, how it is recorded:
- Firmware, package and configuration update process, and who performs it:
- What happens when the network changes (new VLAN, re-addressing, site move):
- Licence, subscription and hardware warranty dates:
- Spare or replacement arrangement, if any, and whether it is a separate service:
- Documentation location, including a copy that survives an outage of the
  logged or affected systems:
- Training given, to whom, on what date:
- Decommissioning: how the sensors are removed and the decoys retired if the
  service ends.

## Business result and acceptance

- Original business question / decision:
- Agreed package, coverage caps and exclusions:
- Baseline and observed result (do not claim unmeasured benefits; do not present
  "no alerts" as evidence of safety):
- Completed, skipped, failed and unavailable checks/tests:
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
A decoy detects interaction with itself. It does not detect intrusion elsewhere,
does not prevent anything, and its silence proves nothing.
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

## Platform boundaries and repeatability

| Sensor / decoy | Host OS and pinned release | Module/config reference | Management path separated | Payload/log redaction test | Recovery/rebuild evidence |
|---|---|---|---|---|---|
| [IDs] | [Versions] | [Protected reference] | [Observed result] | [Result before every sink] | [Test or explicitly untested] |

Use fictitious test input only; prove credential-like fields are removed before
local storage, forwarding and notifications where the module can capture them.
Record what a service actually emulates; do not claim a working file share from a
connection alert. Document sensor privileges, network restrictions, packaging,
configuration recovery and who maintains each dependency.

| Tuning review / date | Observation period | Test / routine / unexplained clusters | Decision and evidence | Suppression scope / expiry | Retest |
|---|---|---|---|---|---|
| [First/second review] | [Dates and agreed business days] | [Counts] | [Label/retain/change] | [Approver and consequence] | [Result] |

Record after-hours delivery and human response separately. An automated escalation
delay is not a human response commitment. Show shared dependencies between email
and SMS, the procedure for losing the central receiver, and what happens if both
responders are unavailable. A short baseline cannot establish a reliable monthly
noise rate. Keep actual acknowledgement and triage walkthrough evidence.
