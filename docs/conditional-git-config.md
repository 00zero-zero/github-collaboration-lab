# Conditional Git configuration for multiple identities

Git includeIf rules can apply account-specific author configuration without repeatedly changing global values.

A directory-based rule can associate one workspace tree with one small identity file and another workspace tree with a different one. Each included file should contain only account-specific settings such as user.name, user.email, signing policy, and selected defaults.

## Validation

From inside a repository, inspect the effective user.name and user.email together with their configuration origins. The origin is important because it reveals which configuration file supplied the final value.

Conditional configuration works best when directory ownership is stable and repository movement is uncommon.