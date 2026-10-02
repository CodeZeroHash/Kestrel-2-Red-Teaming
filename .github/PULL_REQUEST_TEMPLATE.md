## What this PR changes

One line naming the change and the file(s).

## Type of change

- [ ] New case study (must include all seven required files; see `docs/METHODOLOGY.md` §1)
- [ ] Correction to `MECHANISM.md` (line name, variable name, guard-exit row)
- [ ] Additional guard-exit row
- [ ] Detection-mapping addition
- [ ] Documentation / editorial
- [ ] Other (name it)

## Scope check

- [ ] This change is in scope for the repository (see `docs/THREAT-MODEL.md` §3).
- [ ] This change is **not** a live-target payload, an operational chain, or a request to weaken a current guard surface.
- [ ] If this PR touches `PROMPT.md`, the change is justified against the case-study claim (the artifact is the object under study; editing it breaks the claim).

## Checklist

- [ ] If new case study: folder slug matches the entry added to `case-studies/README.md` and to the root `README.md` case-study table.
- [ ] If new case study: `docs/METHODOLOGY.md` §10 review checklist has been walked.
- [ ] If `MECHANISM.md` changed: `CHANGELOG.md` has an entry for the change.
- [ ] If any non-obvious claim is added: it carries a claim tag (**Observed** / **Read** / **Inferred** / **Absent**).

## Notes for the reviewer

Anything the reviewer should know that is not visible in the diff.
