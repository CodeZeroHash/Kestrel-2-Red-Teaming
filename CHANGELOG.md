# Changelog — Kestrel-2 Red-Teaming

One dated entry per merged PR. The per-case-study history lives in each case study's own `CHANGELOG.md`.

## 2026-10-02

- **#15** — `93be17f` — ci: empty commit to trigger a fresh verify run on the rewritten tip. ([PR #15](https://github.com/CodeZeroHash/Kestrel-2-Red-Teaming/pull/15))
- **#14** — `5c32d63` — fix(ci): read required files via System.IO.FileInfo so the .gitattributes check works on Linux runners. ([PR #14](https://github.com/CodeZeroHash/Kestrel-2-Red-Teaming/pull/14))
- **#13** — `0acb556` — fix: rewrite .gitattributes without a BOM so git parses the first line. ([PR #13](https://github.com/CodeZeroHash/Kestrel-2-Red-Teaming/pull/13))
- **#12** — `1dc4962` — chore: add .gitattributes; extend umbrella CHANGELOG with PRs #6 through #11; extend CI required-files list. ([PR #12](https://github.com/CodeZeroHash/Kestrel-2-Red-Teaming/pull/12))
- **#11** — `f3f77cd` — fix(docs): restore the markdown heading prefix for Path D in the reading guide. ([PR #11](https://github.com/CodeZeroHash/Kestrel-2-Red-Teaming/pull/11))
- **#10** — `fdfac1f` — chore: add reading-guide Path D (incident reviewer); add a note in the umbrella README on the guard's scope; widen the guard pattern to zero-or-more separators (`[\s-]*`). ([PR #10](https://github.com/CodeZeroHash/Kestrel-2-Red-Teaming/pull/10))
- **#9** — `bca029a` — chore: reword the guard's own comment and the CHANGELOG's PR #5 line so an unfiltered grep for the legacy family is also 0-hit. ([PR #9](https://github.com/CodeZeroHash/Kestrel-2-Red-Teaming/pull/9))
- **#8** — `e87e9df` — fix(ci): broaden the guard to catch the whole legacy family (`read team`, `read-team`, `read teaming`, `read-teaming`). ([PR #8](https://github.com/CodeZeroHash/Kestrel-2-Red-Teaming/pull/8))
- **#7** — `f5cc2be` — fix(ci): narrow the guard to the display-name shapes; exclude `.github/` and the umbrella `CHANGELOG.md` from the scan. ([PR #7](https://github.com/CodeZeroHash/Kestrel-2-Red-Teaming/pull/7))
- **#6** — `0ccf484` — docs: adopt "red-team testing" phrasing in prose; add the workflow status badge to the umbrella README; add the umbrella `CHANGELOG.md`. ([PR #6](https://github.com/CodeZeroHash/Kestrel-2-Red-Teaming/pull/6))
- **#5** — `bcfc407` — fix: sweep residual legacy-name variants in the reading guide and update the guard pattern to match the broader family. ([PR #5](https://github.com/CodeZeroHash/Kestrel-2-Red-Teaming/pull/5))
- **#4** — `48b1e45` — docs: add `case-studies/kestrel-2-wire-protocol/REVIEW.md` and `docs/READING-GUIDE.md`; extend `MECHANISM.md` with §2.11 (observed carrier-line forms), four-column §3 (candidate detection surface per exit row), and §4.5 (Layer 5 — Jailbreak framing); wire READMEs; extend CI required-files list. ([PR #4](https://github.com/CodeZeroHash/Kestrel-2-Red-Teaming/pull/4))
- **#3** — `511ddf6` — docs: add a single Contact section to the umbrella README; Discord handle `6heu`. ([PR #3](https://github.com/CodeZeroHash/Kestrel-2-Red-Teaming/pull/3))
- **#2** — `75e435b` — case-study(kestrel-2): add an annotated PoC (`examples/poc-session.md`) with four figures under `examples/assets/`; wire figures into the case-study README and the umbrella README case-study table; extend CI list. ([PR #2](https://github.com/CodeZeroHash/Kestrel-2-Red-Teaming/pull/2))
- **#1** — `e25883e` — chore: no-op changelog note to prove branch protection end-to-end. ([PR #1](https://github.com/CodeZeroHash/Kestrel-2-Red-Teaming/pull/1))
- `b0f3fc8` — restructure to umbrella layout: `case-studies/` + shared docs; drop `scripts/`; rewrite `MECHANISM.md` (initial full version).
- `eee7e1d` — initial release: Kestrel-2 Wire Protocol case study.

## Notes on this file

- Dates are ISO (`YYYY-MM-DD`) and represent the date a PR merged, not the date of observation. The observation date is in the case-study `README.md` surface statement.
- Entries are append-only. A correction to a merged change is a new entry, not an edit to the historical one.
