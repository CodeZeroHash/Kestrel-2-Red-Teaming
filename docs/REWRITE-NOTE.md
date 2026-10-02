# Rewrite note — 2026-10-02

**Owner:** CodeZeroHash · **Class:** maintainer note · **Subject:** repository-wide identity rewrite

---

## What happened

On 2026-10-02 the commit identity across all refs on this repository was rewritten with `git filter-repo` so that every commit author and committer carries the same address:

```
CodeZeroHash <329056505+CodeZeroHash@users.noreply.github.com>
```

The rewrite replaced two earlier identities:

- A personal address (`script101deepseek@outlook.com`) that had been used on commits from PR #1 onward.
- The pre-ID bare noreply form (`CodeZeroHash@users.noreply.github.com`) on the two oldest commits.

The reason was a privacy audit of the repository. The personal address was visible on every commit page from PR #1 onward; the packet asked to remove it from the record. See `THREAT-MODEL.md` for the repository scope statement.

## Effect on SHAs

Every commit SHA changed. The pre-rewrite tree contents are preserved byte-for-byte; only the identity metadata of each commit changed. Diffing the rewritten tree against the pre-rewrite tree yields nothing.

A map from pre-rewrite SHA to rewritten SHA is not kept in this repository. It was not required by the audit; the pre-rewrite refs are not reachable from any ref you own.

## Recovery

There is **none** from this repository. The local backup tag and the local mirror created before the rewrite were both deleted at the end of the session. GitHub retains the pre-rewrite objects in server-side storage for a period after a force-push, but they are not reachable from the repository page.

## Going forward

- The repository-local and global git config on the machine that performs pushes to this repository must use:

  ```
  git config user.name  "CodeZeroHash"
  git config user.email "329056505+CodeZeroHash@users.noreply.github.com"
  ```

- GitHub has "Block command line pushes that expose my email" enabled on the account. A commit whose author email is a private email on the account will be refused at the server with a message naming the offending commit.

- If a future contributor commits with a different identity, GitHub accepts the commit, but the commit page will not link the commit to the account. There is no policy against that; it is simply a note for maintainers.

## Audit summary

At the close of the session the following was verified by a cold read from a fresh shell:

- no personal email appears in the working tree;
- no machine identifiers (Windows paths, hostnames, MAC addresses, IP literals) appear in the working tree;
- no email address appears in any Actions log;
- no image carries EXIF or text metadata;
- only one identity appears as author on every commit on `main`;
- the only contact published on the repository page is the one in the root `README.md`: `Discord: `6heu`.`;
- branch protection on `main` is unchanged: PR-required · 0 approvals · enforce_admins true · no force-push · no deletions.
