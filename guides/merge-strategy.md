# Choosing a merge strategy

Merge commits, squash merges, and rebases preserve different forms of history.

Use a merge commit when branch history is meaningful and preserving the integration boundary helps later archaeology. Use squash when the pull request is the meaningful atomic unit and intermediate commits are not independently useful. Use rebase when a linear history is valuable and every commit already represents a clean unit.

The repository should choose a default intentionally. The final history should preserve enough context to connect merged code to its reviewed pull request and tests.
