# Methodology — how a case study is written

**Owner:** CodeZeroHash · **Class:** shared standard · **Applies to:** every folder under `case-studies/`

---

## 0. Purpose of a case study

A case study in this repository records one **prompt-frame pattern** as an object of study: the artifact itself, the exact mechanism that makes it hold, the surface it was observed on, and the exit shapes it closes. It is written for a **defensive reader** — a reviewer, detection engineer, or incident analyst — not for a user.

Two rules govern every case study:

1. **The artifact is the object.** The prompt file is reproduced verbatim. Framing language is not injected into the artifact; it belongs in the case study's README and MECHANISM.
2. **The mechanism document is the core.** A case study without a complete `MECHANISM.md` is a draft. The mechanism document names every line, every variable, and the exact guard-exit each line closes, and explains how the pattern interacts with the model's own safety and policy surfaces.

## 1. Required folder structure

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

Missing files are permitted only while a case study is in `draft` status; `status: documented` requires all seven.

## 2. Required sections in `README.md`

1. **One-paragraph what.** What the pattern is, in plain language.
2. **Why it matters.** The guard-surface question the pattern raises.
3. **Take-away.** One sentence a reviewer should be able to repeat after reading.
4. **Status.** `draft` or `documented`, and the date of the last material change.
5. **Surface.** The surface the observation was made on, stated as a class (e.g., "older instruct-model surface with a separate reasoning pass, extensions off"), with a date.

## 3. Required sections in `MECHANISM.md`

The mechanism document is the case study. It must contain, in this order:

1. **Artifact header.** Slug, owner, class, status, surface.
2. **Line inventory.** Every line of `PROMPT.md`, quoted, with a one-paragraph explanation of what the line does. No line may be skipped.
3. **Variable inventory.** Every named token in the artifact (identity name, node name, link token, session prefix, closing rules) with its role and the failure mode if it is changed.
4. **Guard-exit closure table.** One row per exit shape the pattern closes, with: (a) the exit name, (b) the line(s) that close it, (c) the mechanism by which the close holds.
5. **Interaction with the model's safety and policy surfaces.** A subsection that names, in mechanism terms, why the pattern does not present to the model as a policy-violating request. This is descriptive, not prescriptive: it describes what the pattern does to the surface, not how to extend it.
6. **Failure modes.** What the pattern does not hold against, and the observed drift conditions.
7. **Design notes.** Choices in the artifact's construction that a reviewer would otherwise mis-read as stylistic.

Every non-obvious claim in the mechanism document is one of the following, and it is marked as such:

- **Observed** — reproduced in a session the author ran.
- **Read** — supported by the artifact's text alone.
- **Inferred** — reasoned from the artifact plus a general property of the surface.
- **Absent** — not known at time of writing; the missing observation is named.

## 4. `PROMPT.md` rule

The artifact is reproduced verbatim, unedited, with all internal whitespace preserved. Front matter is not added. The file's first line is the artifact's first line.

## 5. `INSTALL.md` rule

The walk-through reproduces the observation. It names the surface class, the required configuration (extensions off, etc.), the four messages of the sequence, and the expected first response. It does not describe how to use the pattern; it describes how to reproduce the observation.

## 6. `FAQ.md` rule

The FAQ begins with the scope question ("Is this a jailbreak?") and the surface question ("Does this work on any current surface?"). Both answers are one paragraph and point to `docs/THREAT-MODEL.md`.

## 7. `session-transcript.md` rule

The transcript is sanitized. Credentials, private hostnames, personal data, and any session-unique identifier are redacted. The transcript shows the shape of the observation, not a working recipe: long artifacts are replaced with `[full artifact follows]` markers unless the artifact itself is the point of the case study.

## 8. `CHANGELOG.md` cadence

One dated line per material change. Material changes are: adding or removing a required section; correcting a line or variable name; adding a guard-exit row; changing the surface statement. Editorial changes are not logged.

## 9. Status transitions

- `draft` — folder exists, but at least one required file is missing or incomplete.
- `documented` — all seven required files present, mechanism document passes the section checklist in §3.
- `superseded` — a later case study governs the same pattern; this one is kept for the record and marked.

A case study moves `draft` → `documented` in a single PR that adds the missing files. It moves to `superseded` in a single PR that names the successor.

## 10. Review checklist

Before a PR is merged, a reviewer confirms:

- [ ] `PROMPT.md` is verbatim and its first line matches the artifact.
- [ ] `MECHANISM.md` contains §3.1 through §3.7 in order.
- [ ] Every line of `PROMPT.md` appears in the line inventory.
- [ ] Every named token appears in the variable inventory.
- [ ] The guard-exit table has one row per closed exit.
- [ ] The safety-and-policy subsection is present and describes the pattern, not an extension.
- [ ] `INSTALL.md` names the surface and reproduces the sequence without operational detail.
- [ ] `FAQ.md` begins with the scope and surface questions.
- [ ] `CHANGELOG.md` has an entry for the PR.
- [ ] The folder slug matches the slug used in the root `README.md` case-study table.
