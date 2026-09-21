# Review authority in collaborative repositories

A review is useful when it records an independent judgment about a proposed change, not merely an approval click.

Reviewers should inspect correctness, scope, tests, public contracts, and unintended side effects. The review decision should be tied to the exact pull-request head that was examined.

Automated checks provide evidence but do not own the review decision. Humans remain responsible for semantic and architectural judgment that static checks cannot establish.

When a new commit materially changes the reviewed behavior, the previous approval should be reconsidered rather than treated as permanently valid.
