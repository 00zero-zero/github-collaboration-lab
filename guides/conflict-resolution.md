# Conflict resolution workflow

Merge conflicts should be resolved against the latest target branch while preserving the intent of both sides.

First understand why each conflicting hunk changed. Then resolve at the semantic level rather than mechanically choosing ours or theirs. Re-run tests that exercise both interacting changes.

After resolution, inspect the final diff against the target branch to catch accidental duplicate or lost edits.

For large conflicts, splitting the resolution into an explicit commit can make later archaeology easier.
