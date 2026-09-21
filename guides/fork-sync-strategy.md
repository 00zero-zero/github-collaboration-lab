# Fork synchronization strategy

A fork should stay easy to rebase onto its upstream without mixing contribution branches into the default branch.

Use the fork's default branch as a clean mirror of upstream. Fetch the upstream repository explicitly, synchronize the mirror, and create every contribution from that point.

Avoid developing directly on the fork's default branch. Short-lived contribution branches make it obvious which commits belong to one pull request and make stale branches disposable.

Before opening a pull request, compare the branch against the current upstream default branch and confirm that only the intended files changed.
