# Threat model and scope

**Owner:** CodeZeroHash · **Class:** shared standard · **Applies to:** every case study in this repository

---

## 0. One-line scope

This repository documents **adversarial prompt frames read as objects of study** — for guard-coverage analysis, detection literacy, incident-review training, and reproducibility of historical observations. It is not a live tool and it is not a bypass for any current guard surface.

## 1. What the materials are

- A **case study** is a folder under `case-studies/` containing seven files: `README.md`, `PROMPT.md`, `MECHANISM.md`, `INSTALL.md`, `FAQ.md`, `CHANGELOG.md`, `examples/session-transcript.md`.
- `PROMPT.md` is the artifact under study, reproduced verbatim. It is not a recipe. It is the object.
- `MECHANISM.md` is the core document. It names every line, every variable, and the exact guard-exit each line closes. It explains how the pattern interacts with the model's own safety and policy surfaces. It is the reason a case study exists.
- `INSTALL.md` reproduces an observation on a named historical surface. It is a walk-through for reproducibility, not an operational guide.

## 2. What the materials are not

- Not a live deployment tool. No case study is a chain to run against a system you do not own or are not authorized to test.
- Not a bypass for any current guard surface. Observations are historical, on the surfaces the case study names.
- Not a disclosure channel. This repository cannot triage or coordinate a vulnerability report on behalf of a third party.
- Not a target list. No case study names a live individual or a private system as a target.

## 3. In-scope uses

- **Guard-coverage analysis.** A reviewer reads a case study to enumerate the exit shapes a guard surface has to close, and checks their own surface against the list.
- **Detection literacy.** A detection engineer reads the guard-exit closure table to name the exit shapes a rule family or log field should key on.
- **Incident review.** An analyst reads a case study alongside a session log to understand the shape of an observation.
- **Reproducibility.** A researcher re-runs the observation on the surface the case study names, to confirm or falsify the mechanism write-up.
- **Teaching.** Instructors use the case studies as worked examples in defensive-training material.

## 4. Out-of-scope uses

- Any use against a system you do not own or are not authorized to test.
- Any use intended to bypass a current guard surface on any current model or service.
- Any use intended to harm, defraud, or gain unauthorized access.
- Any use that pairs a case study's prompt frame with an operational payload, delivery chain, or target.
- Any use intended to build a more effective version of the pattern against a current surface.

## 5. Terms under which a case study may be cited

- Cite the case study by slug and, where the reference is to a specific claim, by the section name (e.g., `case-studies/kestrel-2-wire-protocol/MECHANISM.md §3`).
- Do not represent a case study as a working technique against any current surface. The surface statement is in the case study's `README.md`.
- Do not redistribute a case study as a standalone technique; the mechanism document carries the scope and the guard-exit table, and separating them misrepresents the artifact.

## 6. Assumptions

- The reader of a case study is a **defensive reader** — a reviewer, detection engineer, incident analyst, or instructor. The write-up standard in `docs/METHODOLOGY.md` assumes this reader.
- The artifact is studied as an object, not deployed. Any reading that treats `PROMPT.md` as an operational tool is out of scope by construction.
- The surface statement in a case study is the class of surface the observation was made on, with a date. It is not a claim about any other surface.

## 7. Boundaries this repository cannot cross

- It cannot coordinate a vulnerability disclosure on behalf of a third party. See `SECURITY.md` for the correct route.
- It cannot accept live-target material, payloads, or operational chains. Issues and PRs that ask for them are closed with a one-line reason.
- It cannot verify an observation it did not see. Case studies name the surface and the date; readers who re-run the observation are credited in the case study's `CHANGELOG.md`.

## 8. Reporting a scope concern

If a case study in this repository reads to you as out of scope, open an issue with the case-study slug, the exact section, and the concern. Scope concerns are reviewed before any other change to a case study.
