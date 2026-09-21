# Merge queue safety

A merge queue protects the default branch from races between individually green pull requests.

The queue should test the candidate merge result against the latest base rather than trusting checks from an older head. Required checks should be deterministic and scoped to contracts that can actually regress.

Avoid putting flaky or non-blocking telemetry checks in the critical path. A queue that developers routinely bypass provides less protection than a smaller, reliable gate.

Record the tested head and base identities so a merged result can be traced back to the exact integration state that passed CI.
