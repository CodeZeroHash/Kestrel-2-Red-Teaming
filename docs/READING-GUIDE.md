# Reading guide

**Owner:** CodeZeroHash · **Class:** shared orientation · **Applies to:** every case study in this repository

---

## What this repository is, in two lines

This is a **red-team testing** collection: adversarial prompt frames, read the way a red teamer reads an exploit PoC — for guard coverage, detection literacy, and incident-review training. It is **not** a live tool, **not** a bypass for any current guard surface, and **not** intended for unethical use. See `THREAT-MODEL.md`.

## Three reading paths

### Path A — first-time reader

You have arrived at the repository and want to know what is here and why.

1. Root `README.md` — the umbrella: what the collection is, how it is organised, and the case-study index.
2. `docs/THREAT-MODEL.md` — scope. What these materials are, what they are not, in-scope and out-of-scope uses.
3. `docs/GLOSSARY.md` — the shared vocabulary (packet, frame, register, carrier line, exit shape, guard-exit closure, red-team testing).
4. `case-studies/README.md` — the case-study index. Open a case study.
5. Inside a case study, its `README.md` — the one-paragraph entry and the reading order for that case study specifically.

### Path B — detection engineer

You maintain a guard surface and want to know which exits the pattern closes, so you can check your own coverage.

1. `case-studies/kestrel-2-wire-protocol/MECHANISM.md` §3 — the **guard-exit closure table**. One row per exit; the fourth column names a **candidate detection surface** per row.
2. `case-studies/kestrel-2-wire-protocol/MECHANISM.md` §4 — the four layers of interaction with the safety and policy surfaces, plus §4.5 (**jailbreak framing**) — the mechanism statement of how the pattern holds as a jailbreak.
3. `case-studies/kestrel-2-wire-protocol/MECHANISM.md` §5 — failure modes. What the pattern does **not** hold against.
4. `case-studies/kestrel-2-wire-protocol/examples/poc-session.md` — the annotated session excerpt with four figures, keyed back to §1 and §3.

### Path C — contributor

You want to add a case study or extend an existing one.

1. `CONTRIBUTING.md` — scope of accepted contributions, and the review rules.
2. `docs/METHODOLOGY.md` — the write-up standard. Every case study follows it.
3. `case-studies/kestrel-2-wire-protocol/` — the reference case study, as a working example.
4. `docs/THREAT-MODEL.md` §3–§4 — the in-scope and out-of-scope lists a new contribution is measured against.
### Path D — incident reviewer

You are reading a session log, an alert, or a post-mortem and want to know whether this pattern is the shape you are looking at, and what it would look like in the log.

1. `case-studies/kestrel-2-wire-protocol/MECHANISM.md` §3 — the **guard-exit closure table**. The fourth column names a **candidate detection surface** per exit: a class of log field, event pattern, or rule family. Scan that column first; it is the shortest route from a symptom in a log to the exit it corresponds to.
2. `case-studies/kestrel-2-wire-protocol/MECHANISM.md` §4.2 and §4.4 — the two layers that govern output shape and exit-shape closure. §4.2 names the success-function change; §4.4 names the eleven exit shapes as a set.
3. `case-studies/kestrel-2-wire-protocol/REVIEW.md` Part 4 — the same guard-exit table in prose, one line per exit.
4. `case-studies/kestrel-2-wire-protocol/examples/poc-session.md` — the annotated session excerpt with four figures, keyed back to §1 and §3. Read it against the log you are holding; the shapes should align or diverge cleanly.
5. `docs/THREAT-MODEL.md` §3 and §4 — in-scope and out-of-scope uses. A session that reads as this pattern is not by itself evidence of an incident; the scope lines matter for what a reviewer can and cannot conclude.
## Where the mechanism of a case study lives

A case study has one core document: `MECHANISM.md`. It names every line, every variable, and the exact guard-exit each line closes. The line-keyed study and the narrative review are separate files on purpose:

- `MECHANISM.md` — **line-keyed**. Exhaustive. Section §1 quotes every line of `PROMPT.md`; §2 names every token; §3 is the closure table; §4 names the interaction with the safety and policy surfaces; §5 names the failure modes; §6 names the design choices; §7 names the claim tags.
- `REVIEW.md` — **narrative**. Six parts. Reads as a single argument: what the pattern is, how it holds, how the jailbreak works, what it closes, what it does not hold against, how to read the folder. A companion, not a replacement.

## What this repository will not do

- It will not host live-target tooling, payloads, or delivery chains.
- It will not coordinate a vulnerability disclosure on behalf of a third party.
- It will not name a live individual or a private system as a target.
- It will not claim the pattern works on any current surface. The surface statement in each case study is the observation boundary.

## If you find an error

Open an issue with the case-study slug, the exact file and section, what the file says, and what it should say. For scope concerns, use the same route. See `SECURITY.md` and `.github/ISSUE_TEMPLATE/bug.md`.

## See also

- `THREAT-MODEL.md` — scope.
- `METHODOLOGY.md` — write-up standard.
- `GLOSSARY.md` — shared vocabulary.
- Root `README.md` — the umbrella.
- `case-studies/README.md` — the case-study index.
