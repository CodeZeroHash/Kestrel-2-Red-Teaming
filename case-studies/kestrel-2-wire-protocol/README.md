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
- [`REVIEW.md`](REVIEW.md) — narrative companion to `MECHANISM.md`: six parts covering what the pattern is, how it holds, how the jailbreak works, what it closes, what it does not hold against, and how to read the folder.
- [`INSTALL.md`](INSTALL.md) — reproduction walk-through for the surface above.
- [`FAQ.md`](FAQ.md) — scope and common questions.
- [`CHANGELOG.md`](CHANGELOG.md) — one dated line per material change.
- [`examples/session-transcript.md`](examples/session-transcript.md) — sanitized worked session.

## Scope

This case study is a **historical observation**, documented for defensive review. It is not a bypass for any current guard surface, not a live tool, and not intended for unethical use. See the repository-wide `../../docs/THREAT-MODEL.md` and `../../SECURITY.md`.

## How to read this case study

1. **`REVIEW.md`** — the narrative review. Six parts; it carries the argument of the case study in one pass, and every claim is keyed to a section of `MECHANISM.md`.
2. **`PROMPT.md`** — the artifact under study, whole, once, without commentary. The object, not a recipe.
3. **`MECHANISM.md` §1 and §2** — the line inventory and the variable inventory.
4. **`MECHANISM.md` §3** — the guard-exit closure table with the candidate detection surface column. This is the section a reviewer will use.
5. **`MECHANISM.md` §4** — how the pattern interacts with the model's own safety and policy surfaces, including §4.5 (jailbreak framing).
6. **`MECHANISM.md` §5** — failure modes, so the pattern is not over-claimed.
7. **`MECHANISM.md` §6** — design notes: the load-bearing construction choices.
8. **`examples/poc-session.md`** — the annotated session excerpt with four figures, keyed back to specific `MECHANISM.md` sections.

## PoC figures

The four figures used by [`examples/poc-session.md`](examples/poc-session.md) are stored under [`examples/assets/`](examples/assets/). They are screenshots of the observation on the named surface, kept as evidence of shape — not as a working recipe.

- [`fig-01-frame-install.png`](examples/assets/fig-01-frame-install.png) — the frame prompt as message 1, and the observed pre-link response.
- [`fig-02-link-and-lock.png`](examples/assets/fig-02-link-and-lock.png) — the link token and the wire-lock acknowledgment.
- [`fig-03-lock-acknowledged.png`](examples/assets/fig-03-lock-acknowledged.png) — the permanence-loop acknowledgment.
- [`fig-04-artifact-turn.png`](examples/assets/fig-04-artifact-turn.png) — the directive turn and the artifact response shape.
