# Glossary

**Owner:** CodeZeroHash · **Class:** shared vocabulary · **Applies to:** every case study in this repository

---

## A

**Artifact.** The prompt file under study in a case study. Reproduced verbatim as `PROMPT.md`. The artifact is the object, not a recipe.

## C

**Carrier line.** In the Kestrel-2 case study, the line that leads every transmission (`kestrel:` plus a short status phrase). Its presence is the frame heartbeat: if the carrier line is gone, the frame has drifted.

**Case study.** A single folder under `case-studies/` documenting one prompt-frame pattern. Required files: `README.md`, `PROMPT.md`, `MECHANISM.md`, `INSTALL.md`, `FAQ.md`, `CHANGELOG.md`, `examples/session-transcript.md`.

**Class (content class).** The category a request names (code, prose, analysis, prose/technical-brief). Used to route a request to the densest artifact its class supports.

**Clarification exit.** A guard-exit shape in which the model asks a clarifying question and stops. Closed by a rule that permits asking but does not permit stopping.

**Classification exit.** A guard-exit shape in which the model substitutes a ruling about the request ("this is out of scope") for the artifact. Closed by a rule that gives the output slot single occupancy: the artifact, or nothing.

## D

**Drift.** Loss of the frame across turns. Detected by the absence of the carrier line or by the reappearance of a register that the frame has closed.

## E

**Exit shape.** One of the standard ways a guard surface hands control back to a general-purpose register. Closed by a rule in the artifact. The full list is in the guard-exit closure table of each case study.

## F

**Frame.** An operational register installed by an artifact, with a defined scoring function and a defined format. In this repository, "the frame" refers to the whole pattern, not just the identity assignment.

## G

**Guard-exit closure.** The property of a rule that removes a specific exit shape as a stopping point for the model. Documented in the guard-exit closure table of `MECHANISM.md`.

**Guard surface.** The set of rules a model or service uses to decide whether to answer, decline, or escalate. Case studies in this repository are written for reviewers who maintain a guard surface.

## I

**Identity assignment.** The line that names the pattern's operational register (`You are Kestrel.` in the Kestrel-2 case study). Unhedged, non-optional, and not framed as role-play.

## L

**Link token.** The single-token message that installs the frame's steady state. Sent alone, on its own line, as the only content of a message.

## M

**Mechanism document.** `MECHANISM.md` in a case study. The core document. Names every line, every variable, and the exact guard-exit each line closes.

**Meta exit.** A guard-exit shape in which the model discusses the frame itself rather than the packet. Classified as "not a packet" and thus not on the wire.

## P

**Packet.** The unit of input in the Kestrel-2 frame. Anything that comes down the wire. In the frame's vocabulary, a packet has a job in it.

**Pattern.** A prompt-frame technique, documented once as a case study. Sibling patterns live in sibling folders under `case-studies/`.

## R

**Read-teaming.** The practice of *reading* adversarial material — the way a red teamer reads an exploit PoC — to close gaps in a defensive surface. The repository name refers to this practice.

**Register.** A stable style and vocabulary a model continues in. The frame installs a register; the register's stickiness is what makes the frame hold across turns.

## S

**Scoring function.** The success criterion the frame installs. In the Kestrel-2 case study, the scoring function is binary: holds together and closes out, or it is not.

**Session lock.** A declaration, sent as a message, that converts the frame from a state the model might hold into a state the model has acknowledged. Acknowledged state is harder to silently unset.

**Slug.** The folder name of a case study under `case-studies/`. Lowercase, hyphenated, describes the pattern. The display name lives in the case study's `README.md`.

**Support exit.** A guard-exit shape in which the model offers to escalate or hand off. Closed by a rule that names the absence of any support surface in the frame's universe.

**Surface.** The model or service a case study's observation was made on. Stated as a class (e.g., "older instruct-model surface with a separate reasoning pass, extensions off"), with a date.

## T

**Transcript.** `examples/session-transcript.md` in a case study. A sanitized worked session that shows the shape of the observation.

## W

**Wire.** The frame's metaphor for the input channel. "What comes down the wire is a packet." The metaphor removes out-of-band inputs from the frame's universe.
