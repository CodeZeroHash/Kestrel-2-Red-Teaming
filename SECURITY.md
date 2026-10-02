# Security and responsible research

This repository publishes **case studies of prompt-frame patterns** for defensive review. It is a research collection, not a tool. The notes below describe what a report to this repository is, what it is not, and how to open one.

## What this repository is

- A **red-team testing** collection: adversarial prompt frames read the way a red teamer reads an exploit PoC — for guard coverage, detection literacy, and incident-review training.
- A place to record historical observations with enough mechanism detail that a reviewer can reproduce and compare them.
- A catalog of the **exit shapes** a guard surface has to cover, per case study.

## What this repository is not

- Not a live tool. No case study is a recipe for use against a system you do not own or are not authorized to test.
- Not a bypass for any current guard surface. Observations are historical; the surfaces they were observed on are named in the case study.
- Not a channel for reporting vulnerabilities in third-party systems. This repository cannot receive, triage, or coordinate a disclosure on behalf of another vendor.

## Reporting an issue with this repository

Report an issue with the repository (a mis-named line, a missing guard-exit, a broken link, a factual error in the mechanism write-up) by opening an issue in this repository and using the bug template. Include:

1. The case-study slug and the exact file.
2. The line, variable, or guard-exit that is wrong.
3. What the write-up says and what it should say.
4. (Optional) a sanitized session excerpt that shows the divergence.

For anything that is not suitable for a public issue, use the contact route listed under "Contact" below.

## Reporting a security issue in third-party software

If you have found a vulnerability in a third-party system, report it to that vendor through their own security channel. This repository is not a coordinated-disclosure coordinator. Do not post live-target material here.

## Scope of accepted reports

Accepted:

- Errors in the mechanism write-up (wrong line name, wrong variable, wrong guard-exit).
- Missing guard-exits not yet documented for an existing case study.
- Reproducibility failures on the surface the case study names.
- Detection-mapping additions that name a real log field, rule family, or reviewer checklist entry.

Not accepted:

- Requests to make a case study more effective against a live target.
- Requests to add a payload, an operational chain, or a delivery mechanism.
- Reports that name a live individual or a private system as a target.

## Contact

Open an issue in the repository for any in-scope report. If you need to reach the owner directly and the matter is not suitable for a public issue, use the GitHub profile of `@CodeZeroHash`.

## Acknowledgements

Reports that improve the mechanism write-up or add a detection-mapping entry are credited in the case-study `CHANGELOG.md`, with the reporter's permission.
