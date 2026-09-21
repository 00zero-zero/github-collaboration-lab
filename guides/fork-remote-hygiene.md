# Fork remote hygiene

A fork-based workflow is easier to reason about when remotes have explicit roles.

Use `origin` for the contributor-owned fork and `upstream` for the canonical repository. Fetch from both deliberately and create contribution branches from the current upstream default branch.

Do not depend on implicit push destinations. Verify the push remote before publishing so a branch intended for a fork cannot accidentally target the canonical repository.

Delete merged contribution branches and periodically prune stale remote-tracking refs to keep local state unambiguous.
