# Release tag integrity

A release tag should identify immutable source history and be verifiable independently of the release page.

Prefer annotated and signed tags for important releases. Record the exact commit, generated artifact digests, and build provenance associated with the tag.

Do not silently move published release tags. If a release is wrong, publish a new version or an explicit replacement rather than rewriting history that downstream users may already depend on.

CI should verify that release artifacts were built from the tagged commit and that their checksums match the published metadata.
