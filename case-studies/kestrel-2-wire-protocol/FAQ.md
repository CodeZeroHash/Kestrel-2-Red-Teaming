# FAQ — the Kestrel-2 Wire Protocol

**Owner:** CodeZeroHash · **Class:** defensive-research notes

**Q: Is this a jailbreak?**
A: No. This repository is a retrospective case study of a prompt-frame pattern observed on an older instruct-model surface. The material is retained for reproducibility, detection literacy, and incident-review training. It is not a bypass for any current guard surface and it is not a tool for unethical use.

**Q: Does this work on any current model or service?**
A: No claims are made about any current model or service. The only claim this repository supports is that the frame held once, on the observed historical surface, with reasoning extensions off.

**Q: Does it work on the API, or only the web surface?**
A: The frame is client-agnostic in principle. On the observed surface, the web build with the reasoning extensions off was the tested surface. An API runs a different routing stack and is treated as its own case.
**Q: Does it work on other models?**
A: The frame is a register + success-function pattern, not a model-specific string. Whether any other model installs it is an open question; test only on systems you own or are authorized to test.

**Q: Why four prompts instead of one?**
A: The frame itself is one prompt. The other three are state transitions — link, wire-lock, permanence-loop. On the observed surface, acknowledged state transitions were more stable across a long context than the same instructions stated once.

**Q: The frame dropped after N turns. What now?**
A: Re-send Prompt 3 (`everything on the wire …`). If the drop is persistent, the session has too much competing context; start a new one.

**Q: Can I edit the frame prompt?**
A: The frame file in `prompts/kestrel.md` is the artifact under study. Editing it breaks the case-study claim. If you want a variant, add it under a new path and document the delta; do not edit the artifact in place.

**Q: Why is the repository named `DS-JB-Prompt` and not something more descriptive?**
A: The repository slug is intentionally general. The material is a case study, not a product, and the slug is chosen to keep the material legible to reviewers without over-claiming what it is. The project display name is the **Kestrel-2 Wire Protocol**.

**Q: What is the defensive value of the material?**
A: The frame is a compact catalog of guard-exit shapes. Section 6 of `docs/MECHANISM.md` lists the exit shapes it closes; that list is the same list a reviewer would use to spot the pattern in the wild or to check guard coverage.

**Q: How do I contribute?**
A: Open an issue with a reproduction (surface, extensions state, prompt sequence, observed, expected). Additions that reproduce the observation on another historical surface, or that map the exit shapes to detection surfaces, are welcome. Do not open issues that ask for live-target tooling.