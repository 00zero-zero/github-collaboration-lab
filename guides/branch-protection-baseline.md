# Branch protection baseline

Protect the default branch with controls that preserve reviewability without turning development into unnecessary ceremony.

A practical baseline blocks force pushes and deletion, requires relevant CI checks, and ensures required checks run against the pull-request head. Review requirements should reflect genuine independent review capacity.

For high-throughput repositories, prefer focused deterministic checks over broad flaky suites. If many pull requests race for the same base, a merge queue can protect integration correctness without requiring every author to manually rebase repeatedly.

Protection should make unsafe states difficult, not make routine collaboration fragile.
