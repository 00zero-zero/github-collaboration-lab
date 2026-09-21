# Review re-request policy

A review approval is evidence about a specific revision, not a permanent property of a pull request.

Re-request review when a new commit changes behavior, public contracts, security properties, migration semantics, or the assumptions that supported the original approval. Cosmetic fixes and mechanical generated updates may not require a full rereview if repository policy says so.

Automation can flag material diffs, but the author should still explain what changed since the last review.

This keeps approval tied to the code that will actually merge.
