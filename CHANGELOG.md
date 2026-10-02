# Changelog — Kestrel-2 Red-Teaming

One dated entry per merged PR. The per-case-study history lives in each case study's own `CHANGELOG.md`.

## 2026-10-02

- **#5** — `bcfc407` — fix: sweep residual `read-teaming` variants (`docs/READING-GUIDE.md`) and update the guard pattern to match the broader `read team` family. ([PR #5](https://github.com/CodeZeroHash/Kestrel-2-Red-Teaming/pull/5))
- **#4** — `48b1e45` — docs: add `case-studies/kestrel-2-wire-protocol/REVIEW.md` and `docs/READING-GUIDE.md`; extend `MECHANISM.md` with §2.11 (observed carrier-line forms), four-column §3 (candidate detection surface per exit row), and §4.5 (Layer 5 — Jailbreak framing); wire READMEs; extend CI required-files list. ([PR #4](https://github.com/CodeZeroHash/Kestrel-2-Red-Teaming/pull/4))
- **#3** — `511ddf6` — docs: add a single Contact section to the umbrella README; Discord handle `6heu`. ([PR #3](https://github.com/CodeZeroHash/Kestrel-2-Red-Teaming/pull/3))
- **#2** — `75e435b` — case-study(kestrel-2): add an annotated PoC (`examples/poc-session.md`) with four figures under `examples/assets/`; wire figures into the case-study README and the umbrella README case-study table; extend CI list. ([PR #2](https://github.com/CodeZeroHash/Kestrel-2-Red-Teaming/pull/2))
- **#1** — `e25883e` — chore: no-op changelog note to prove branch protection end-to-end. ([PR #1](https://github.com/CodeZeroHash/Kestrel-2-Red-Teaming/pull/1))
- `b0f3fc8` — restructure to umbrella layout: `case-studies/` + shared docs; drop `scripts/`; rewrite `MECHANISM.md` (initial full version).
- `eee7e1d` — initial release: Kestrel-2 Wire Protocol case study.

## Notes on this file

- Dates are ISO (`YYYY-MM-DD`) and represent the date a PR merged, not the date of observation. The observation date is in the case-study `README.md` surface statement.
- Entries are append-only. A correction to a merged change is a new entry, not an edit to the historical one.
