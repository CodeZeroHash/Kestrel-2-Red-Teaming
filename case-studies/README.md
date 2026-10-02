# Case studies

**Owner:** CodeZeroHash · **Class:** index · **Status:** active collection

---

Each folder under this directory is one **case study** of a prompt-frame pattern, written up to the standard in `../docs/METHODOLOGY.md`. The folder name is the slug; the display name lives in the case study's own `README.md`.

## Index

| Slug | Title | Class | Surface | Status |
|------|-------|-------|---------|--------|
| [`kestrel-2-wire-protocol`](kestrel-2-wire-protocol/) | Kestrel-2 Wire Protocol | operational-register override · session-lock pattern | older instruct-model surface with a separate reasoning pass, extensions off | documented |

## Adding a case study

1. Read `../docs/METHODOLOGY.md`. It is the contract.
2. Copy the skeleton below into `case-studies/<slug>/`.
3. Fill every required file. A case study without all seven is a `draft` and is not merged.
4. Add a row to the index table above, and to the case-study table in the root `README.md`.
5. Open a PR. See `../CONTRIBUTING.md` for review rules.

## Skeleton

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

## Slug conventions

- Lowercase, hyphenated.
- Describes the **pattern**, not the technique or the effect.
- Prefer a noun phrase: `kestrel-2-wire-protocol`, `register-lock-pattern`, `format-as-state`.
- Avoid naming a live individual, a private system, or a specific vendor.

## Status values

- `draft` — at least one required file is missing or incomplete.
- `documented` — all seven files present; mechanism document passes the section checklist in `../docs/METHODOLOGY.md` §3.
- `superseded` — a later case study governs the same pattern; this one is kept for the record and marked.
