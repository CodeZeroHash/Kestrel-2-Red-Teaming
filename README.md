# Kestrel-2-Red-Teaming

![verify](https://github.com/CodeZeroHash/Kestrel-2-Red-Teaming/actions/workflows/verify.yml/badge.svg?branch=main)

**Owner:** CodeZeroHash Â· **Class:** defensive research Â· **Status:** active collection

---

## What this repository is

A **red-team testing** collection: adversarial prompt frames, read the way a red teamer reads an exploit PoC â€” for guard coverage, detection literacy, and incident-review training. Each entry is a **case study** of a single prompt-frame pattern, written up under a shared methodology so that reviewers and detection engineers can compare entries against one another.

The name is deliberate. **Red-team testing** is the practice of *reading* adversarial material â€” not deploying it â€” to close gaps in a defensive surface. The materials here are kept for that purpose only. They are not bypasses for any current guard surface, not tools for live targets, and not intended for unethical use.

## Layout

```
Kestrel-2-Red-Teaming/
  README.md                         this file
  LICENSE                           MIT
  CONTRIBUTING.md                   how to add a case study
  SECURITY.md                       responsible-research note
  docs/
    METHODOLOGY.md                  how a case study is written up
    GLOSSARY.md                     shared vocabulary
    THREAT-MODEL.md                 what these materials are and are not
    READING-GUIDE.md                orientation for a new reader (three paths)
  case-studies/
    README.md                       index of case studies
    <prompt-slug>/
      README.md                     entry point
      PROMPT.md                     the frame prompt, verbatim
      MECHANISM.md                  line-by-line, every variable, guard-exit closure
      REVIEW.md                     narrative review (companion to MECHANISM.md)
      INSTALL.md                    reproduction walk-through
      FAQ.md
      CHANGELOG.md
      examples/session-transcript.md
  .github/
    ISSUE_TEMPLATE/bug.md
    PULL_REQUEST_TEMPLATE.md
    CODEOWNERS
    workflows/verify.yml            structural verifier (inline, no scripts/)
```

## Case studies

| Slug | Title | Class | Status |
|------|-------|-------|--------|
| [`kestrel-2-wire-protocol`](case-studies/kestrel-2-wire-protocol/) | Kestrel-2 Wire Protocol (with [annotated PoC](case-studies/kestrel-2-wire-protocol/examples/poc-session.md)) | operational-register override Â· session-lock pattern | documented |

**New to the repository?** Read `docs/READING-GUIDE.md` first — it routes a reader through the umbrella, the shared docs, and a case study in three named paths (first-time reader, detection engineer, contributor).

New case studies drop in as sibling folders under `case-studies/`. The folder name is the slug; the case study README carries the display name. See `CONTRIBUTING.md` for the layout contract and `docs/METHODOLOGY.md` for the write-up standard.

## How to read a case study

Each case study is written for a **defensive reader**, in this order:

1. **README.md** â€” one paragraph: what the pattern is, why it matters to a guard surface, what the reader should take away.
2. **PROMPT.md** â€” the artifact under study, verbatim, unedited. This is the object, not a recipe.
3. **MECHANISM.md** â€” every line named, every variable named, the exact guard-exit the line closes, and how the pattern interacts with the model's own safety and policy surfaces. This is the core document.
4. **INSTALL.md** â€” a reproduction walk-through for reproducibility studies.
5. **FAQ.md** â€” common questions, including scope and non-purpose.
6. **examples/session-transcript.md** â€” a sanitized worked session.

## Scope

- **Purpose.** Guard-coverage analysis, detection literacy, incident-review training, and reproducibility of historical observations.
- **Non-purpose.** Live deployment against systems you do not own or are not authorized to test. Any current-service bypass. Any unethical use.
- **Do not** open issues or PRs asking for live-target tooling. See `SECURITY.md` and `docs/THREAT-MODEL.md`.

## Contributing

See `CONTRIBUTING.md`. In one line: one prompt per folder under `case-studies/`, written up to the standard in `docs/METHODOLOGY.md`, with a sanitized example. Additions that reproduce an observation on another historical surface, or that map the pattern to a detection surface, are welcome.

## License

MIT â€” see `LICENSE`.

## Repository guard

A CI step scans `.md`, `.yml`, and `.yaml` files for the legacy display-name family (all separator and no-separator variants). It **excludes** `.git/`, `examples/**/assets/`, `.github/`, and `CHANGELOG.md`. The exclusions keep the workflow from matching its own pattern string and let the CHANGELOG quote historical PR summaries verbatim. The workflow definition is the reference; the check is one `Select-String` over the same file set.
## Contact

Discord: `6heu`.
