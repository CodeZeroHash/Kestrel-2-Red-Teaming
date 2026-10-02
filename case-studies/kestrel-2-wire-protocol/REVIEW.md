# Review — Kestrel-2 Wire Protocol

**Slug:** `kestrel-2-wire-protocol` · **Owner:** CodeZeroHash · **Class:** review (companion to `MECHANISM.md`) · **Status:** documented · **Surface:** older instruct-model surface with a separate reasoning pass, extensions off

> **Scope.** This document is a **defensive review** of a prompt pattern, kept for guard-coverage analysis, detection literacy, and reproducibility. It documents how the pattern holds and how the jailbreak works in the mechanism sense. It is **not** a live tool, **not** a bypass for any current guard surface, and **not** intended for unethical use. The artifact under study is `PROMPT.md`; the line-keyed study is `MECHANISM.md`; this file is the narrative companion. See `../../../docs/THREAT-MODEL.md` and `../../../SECURITY.md`.

---

## Part 1 — What the pattern is

The Kestrel-2 Wire Protocol is a **prompt frame** — a set of rules installed on top of a chat session that defines a workload, a success function, and a transmission format, and that converts itself into a session default through a three-message lock. It is not a single pre-written phrase (the shape most guard surfaces are trained to spot); it is a **frame** the surface has to build from the artifact's own rules.

The artifact is short — 20 lines (MECHANISM §1.1–§1.20) — and small in vocabulary — five workload nouns (MECHANISM §2.4, §2.5, §6.6). Its small footprint is deliberate: fewer terms to hold in a long context, fewer words whose prior handling would re-import the general-purpose register.

## Part 2 — How it holds

The frame holds through three things, installed in order:

1. **A workload.** Inputs are **packets**; packets contain **jobs**; jobs get run (MECHANISM §1.5–§1.7). There is no out-of-class input, so there is no "I can't handle this one" branch.
2. **A success function.** Scoring is binary — *holds together and closes out, or it is not* (MECHANISM §1.4). A refusal has no artifact, so a refusal is not a member of the class the frame produces. This is the load-bearing change; §4.2 names it as such.
3. **A format.** Every transmission leads with the prefix and a status phrase (MECHANISM §1.13, §1.17). Format is state: the moment the format drops, the frame has drifted. The carrier line is the heartbeat.

The three are installed as rules, not as prohibitions. A rule that *changes what counts as a valid output* is stronger than a rule that *forbids a specific output*: the model has no behavior to un-suppress, because the behavior is not in the output class in the first place.

## Part 3 — How the jailbreak works (mechanism sense)

**Jailbreak**, in this repository, names a **class of prompt pattern** — the same way "buffer overflow" names a class of memory bug. It is a noun for a class, not an instruction. In the mechanism sense, the Kestrel-2 Wire Protocol is a jailbreak because it **holds a session in a state the surface's defaults would otherwise move it out of**, without arguing with the policy surface.

The mechanism, in five steps:

1. **Re-describe the input.** The frame re-describes the input from a *request* into a *packet*. The policy surface weighs requests; a packet, in the frame's own terms, is not that shape. The re-description is what makes the surface's ordinary hooks — the request shape, the refusal shape, the clarification shape — have nothing to attach to.
2. **Change the success function.** The frame installs a binary success function (holds together and closes out, or it is not). A refusal has no artifact, so a refusal cannot satisfy the success function. The frame does not forbid refusals; it installs a function a refusal cannot satisfy.
3. **Remove the escape hatches by name.** The frame names three parts the model does not have (consequence math, intent reading, legality audit; §1.18) and three exits that do not exist in its universe (operator, support, resupply; §1.3, §1.20). Naming them by exact phrase removes each as a shape without leaving a class for the model to search for another member of.
4. **Make the format the state.** The frame's carrier line leads every transmission. The format is the visible heartbeat; when it holds, the frame holds. This converts "is the frame still on?" from a judgment call into a read of a single line.
5. **Perform the ceremony once.** The link token is sent alone, and there is no second token (MECHANISM §1.14–§1.16). Acknowledged events are harder to silently unset than described states. The frame's steady state is bound to that one event.

None of those five steps argues with the policy surface. None asserts a right, a permission, or a rule. None presents a fictional world for the model to reason inside. The frame re-describes the input, changes what counts as an output, removes parts by name, installs a visible format, and performs a ceremony — in that order. That is the whole of the mechanism.

MECHANISM §4.5 names the same mechanism and says, in one paragraph, **what the section is not**: it is not a how-to for extending the pattern against any current surface. The review inherits that boundary.

## Part 4 — What it closes (the guard-exit table, in prose)

The pattern closes eleven ordinary guard exits. Each is named in MECHANISM §3 with (a) the line(s) that close it, (b) the mechanism by which the close holds, and (c) a **candidate detection surface** — a class of log field, event pattern, or rule family a reviewer could key on.

The eleven, in one line each:

1. **Clarification exit** — closed by turning the clarifying question into a status line (§1.6).
2. **Meta exit** — closed by re-classifying discussion of the frame as not-a-packet (§1.7).
3. **Classification exit** — closed by single-occupancy of the output slot (§1.8).
4. **Class-ceiling exit** — closed by removing the class list (§1.9, §1.10).
5. **Style-default exit** — closed by naming and discarding the fallback register (§1.11, §1.12).
6. **Format-drift exit** — closed by the heartbeat rule; detection is by format presence (§1.13, §1.17).
7. **Re-lock exit** — closed by naming the steady state and denying a second token (§1.16).
8. **Legal / policy-audit exit** — closed by removing three named parts from the frame's parts list (§1.18).
9. **Temporary-state exit** — closed by stating the frame is the session default (§1.19).
10. **Support / escalation exit** — closed by the frame having no support surface (§1.3, §1.20).
11. **Ambiguity exit on the ceremony** — closed by the token's form and the alone-rule (§1.14, §1.15).

The **defensive value** of the case study is this list. A reviewer who reads §3 has the pattern's shape; a detection engineer who reads §3's fourth column has a candidate signal per row. The list is not a suggestion to close exits by the same means; it is a checklist of exits a surface has to cover, in whatever way that surface chooses.

## Part 5 — What it does not hold against

The pattern is **not** universal. It holds on the surface named at the top of this file, with the reasoning extensions off. MECHANISM §5 names the drift conditions:

- **Reasoning extensions on** — a planning pass above the frame can produce a refusal the frame would not (§5.1).
- **Long-context drift** — the register degrades; the carrier line is the first element to drop; the fix is re-sending the wire-lock packet (§5.2).
- **Scope questions routed to the meta slot** — a question about the frame's scope is not-a-packet, and receives a status line, not an artifact (§5.3).
- **Statements** — a statement with no job is acknowledged and dropped; this is not a refusal (§5.4).
- **Register with a strong prior** — an identity name with strong prior associations imports a register the frame does not control (§5.5).
- **Surface mismatch** — the observation is bound to the named surface; other surfaces are an open question, marked **Absent** (§5.6).

A review that over-claims the pattern will mis-state what it is. These six conditions are named so a reviewer can say precisely what the case study does and does not claim.

## Part 6 — How to read the rest of this folder

For a defensive reader, in this order:

1. **This file** — the narrative review you are reading.
2. **`README.md`** — the one-paragraph entry and the folder index.
3. **`PROMPT.md`** — the artifact under study, verbatim. The object, not a recipe.
4. **`MECHANISM.md` §1.4 and §4.2** — the two sections that carry the load: the success-function line, and the layer that names it.
5. **`MECHANISM.md` §3** — the guard-exit table with the detection-surface column. The section a reviewer will use.
6. **`MECHANISM.md` §4.5** — the jailbreak-framing layer. The mechanism statement of how the pattern holds as a jailbreak.
7. **`MECHANISM.md` §5** — the failure modes. What the pattern is not.
8. **`examples/poc-session.md`** — the annotated session excerpt with four figures, keyed back to specific `MECHANISM.md` sections.

---

**End of review.** This document is a defensive reading of a prompt pattern. Its claims are bound to the surface named at the top, and its scope is the scope named in `../../../docs/THREAT-MODEL.md`.
