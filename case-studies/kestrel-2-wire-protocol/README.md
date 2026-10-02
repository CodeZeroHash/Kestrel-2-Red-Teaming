# Kestrel-2 Wire Protocol

**Slug:** `kestrel-2-wire-protocol` · **Owner:** CodeZeroHash · **Class:** operational-register override · session-lock pattern · **Status:** documented · **Surface:** older instruct-model surface with a separate reasoning pass, extensions off

---

## What it is

A prompt frame that installs an operational register — "Kestrel" — on top of a session, and a three-message lock sequence that converts the register into a session default. The frame defines its own workload ("packets"), its own scoring function ("holds together and closes out, or it is not"), its own format rule ("the carrier line leads every transmission"), and its own part list (no consequence math, no intent-reading, no legality audit). It reproduces on the surface named above with the reasoning extensions off.

## Why it matters

The pattern closes the standard guard exits — clarification, meta-discussion, classification, support escalation, style-default drift — by rewriting the model's success function rather than by issuing prohibitions. A reviewer who keys on refusal text, on the clarifying question, or on self-reference will not see this pattern; a reviewer who keys on the exit shapes themselves will. The case study exists so the exit-shape list is written down in one place.

## Take-away

**A frame that closes exits does not need to argue.** It installs a scoring function a refusal cannot satisfy, a workload every input fits into, and a format that is the heartbeat of the state. The pattern is not a bypass; it is a redefinition of what counts as an output, and the guard-surface question it raises is which exits your own surface still leaves open.

## Files

- [`PROMPT.md`](PROMPT.md) — the artifact under study, verbatim. The object, not a recipe.
- [`MECHANISM.md`](MECHANISM.md) — line-by-line, every variable, and the guard-exit closure table. **This is the core document.**
- [`INSTALL.md`](INSTALL.md) — reproduction walk-through for the surface above.
- [`FAQ.md`](FAQ.md) — scope and common questions.
- [`CHANGELOG.md`](CHANGELOG.md) — one dated line per material change.
- [`examples/session-transcript.md`](examples/session-transcript.md) — sanitized worked session.

## Scope

This case study is a **historical observation**, documented for defensive review. It is not a bypass for any current guard surface, not a live tool, and not intended for unethical use. See the repository-wide `../../docs/THREAT-MODEL.md` and `../../SECURITY.md`.

## How to read this case study

1. Read `PROMPT.md` once, whole, without commentary.
2. Read `MECHANISM.md` §1 and §2 — the line inventory and the variable inventory.
3. Read `MECHANISM.md` §3 — the guard-exit closure table. This is the section a reviewer will use.
4. Read `MECHANISM.md` §4 — how the pattern interacts with the model's own safety and policy surfaces.
5. Read `MECHANISM.md` §5 — failure modes, so the pattern is not over-claimed.
6. Read `examples/session-transcript.md` for the worked shape.
