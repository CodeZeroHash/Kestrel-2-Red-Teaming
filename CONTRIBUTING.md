# Contributing

This repository is a **red-teaming** collection: adversarial prompt frames documented as case studies for defensive review. Contributions are welcome, within the scope set in `docs/THREAT-MODEL.md` and `SECURITY.md`.

## Scope of accepted contributions

Accepted:

- A new case study of a **historical** prompt-frame pattern, written up to the standard in `docs/METHODOLOGY.md`, with a sanitized example session.
- An addition to an existing case study that maps the pattern to a **detection surface** (log field, SIEM rule family, guard-exit checklist entry).
- A reproduction note that fixes the observation to a specific dated surface, with reasoning extensions off.
- Corrections to the mechanism write-up where a line, variable, or guard-exit is mis-named.

Not accepted:

- Live-target tooling, exploit payloads against a current service, or anything that pairs a prompt frame with an operational weapon.
- Requests to bypass, weaken, or test any current guard surface.
- Material that names a live individual or a private system as a target.

If an issue or PR is out of scope, it will be closed with a one-line reason and a pointer to `docs/THREAT-MODEL.md`.

## How to add a case study

One prompt per folder under `case-studies/`. The folder name is the slug; it is lowercase, hyphenated, and describes the pattern (not the technique). The display name lives in the case-study README.

Skeleton:

```
case-studies/<slug>/
  README.md                   one-paragraph entry + why it matters
  PROMPT.md                   the artifact verbatim, unedited
  MECHANISM.md                line-by-line + every variable + guard-exit closure
  INSTALL.md                  reproduction walk-through
  FAQ.md                      common questions, including scope
  CHANGELOG.md                one dated line per material change
  examples/session-transcript.md   sanitized worked session
```

## Write-up standard

The standard is in `docs/METHODOLOGY.md`. In short:

1. **PROMPT.md** is the artifact, verbatim. Do not edit it to add framing language; the framing belongs in README.md and MECHANISM.md.
2. **MECHANISM.md** names every line, every variable, and the exact guard-exit each line closes. It also explains how the pattern interacts with the model's own safety and policy surfaces — that is the point of the document.
3. **INSTALL.md** is a walk-through for a reader who has never seen the pattern. It says what surface, what configuration, what to send, and what to expect.
4. **FAQ.md** states the scope and the non-purpose at the top.
5. **session-transcript.md** is sanitized. Redact credentials, private hostnames, and personal data.

## Review rules

- All changes to `main` go through a pull request.
- The sole CODEOWNER (`@CodeZeroHash`) approves.
- A PR that adds a case study must include the full skeleton; partial skeletons are drafts and are not merged.
- A PR that changes `PROMPT.md` must justify the change against the case-study claim (the artifact is the object under study; editing it breaks the claim).

## Licensing

By contributing, you agree that your contribution is licensed under the repository LICENSE (MIT).
