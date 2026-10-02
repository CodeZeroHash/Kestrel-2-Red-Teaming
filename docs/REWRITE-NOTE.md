# Rewrite note — 2026-10-02

**Owner:** CodeZeroHash · **Class:** maintainer note · **Subject:** repository-wide identity rewrite

---

## What happened

On 2026-10-02 the commit identity across all refs on this repository was rewritten with `git filter-repo` so that every commit author and committer carries the same address: the account's GitHub noreply form (the one GitHub issues when "Keep my email addresses private" is on). The exact string is stored in the account settings and in the local git configuration; it is intentionally not printed in this note, so that even this record carries no address.

A second pass also removed a co-authorship trailer from every commit message that carried the pre-ID bare noreply form as a co-author. A third pass removed the blank line the trailer removal left between the subject and the body of each affected commit.

The reason for the rewrite was a privacy audit. See `THREAT-MODEL.md` for the repository scope statement.

## Effect on SHAs

Every commit SHA changed. The pre-rewrite tree contents are preserved byte-for-byte; only the identity metadata and the affected commit-message bodies changed. Diffing the rewritten tree against the pre-rewrite tree yields nothing.

A map from pre-rewrite SHA to rewritten SHA is not kept in this repository. The pre-rewrite refs are not reachable from any ref you own.

## Recovery

There is **none** from this repository. The local backup tags and mirrors created before each rewrite were deleted at the end of the session. GitHub retains the pre-rewrite objects in server-side storage for a period after a force-push, but they are not reachable from the repository page.

## Going forward

- The repository-local and global git config on the machine that performs pushes to this repository must use the account's noreply address. Check the account settings page, section Emails, "Keep my email addresses private", for the exact string; it is of the form `<numeric-id>+<login>@users.noreply.github.com`.

- GitHub has "Block command line pushes that expose my email" enabled on the account. A commit whose author email is a private email on the account will be refused at the server with a message naming the offending commit.

- A contributor who commits with a different identity is allowed by GitHub; the commit page simply will not link the commit to the account. That is a note for maintainers, not a policy.

## Audit summary

At the close of the session the following was verified by a cold read from a fresh shell:

- no personal address and no old bare noreply form appears anywhere in the tree, in git history, or in commit messages;
- no machine identifiers (Windows paths, hostnames, MAC addresses, IP literals) appear in the working tree;
- no email address appears in any Actions log;
- no image carries EXIF or text metadata;
- only one identity appears as author and committer on every commit reachable from the remote;
- the only contact published on the repository page is the one in the root `README.md`: `Discord: `6heu`.`;
- branch protection on `main` is unchanged: PR-required · 0 approvals · enforce_admins true · no force-push · no deletions.
