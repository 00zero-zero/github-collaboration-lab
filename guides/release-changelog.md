# Release changelog discipline

A release changelog should describe user-visible and operator-visible changes at the level needed to make upgrade decisions.

Group breaking changes, new capabilities, fixes, deprecations, and operational changes separately. Link each entry to the reviewed change that introduced it.

Generated commit lists are useful raw material but rarely sufficient as a changelog because commit boundaries do not necessarily match user impact.

For breaking changes, include the migration action and the first release in which the old behavior is no longer supported.
