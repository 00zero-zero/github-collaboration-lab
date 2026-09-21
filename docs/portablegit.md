# Standardizing on PortableGit for reproducible Windows automation

Windows machines often accumulate several Git installations. Automation becomes brittle when PATH selects a partial or unexpected distribution.

A reproducible workflow pins one complete Git distribution and invokes its executables explicitly.

## Recommended checks

- Verify the Git version.
- Verify the Git exec path.
- Confirm the HTTPS remote helper exists when HTTPS is required.
- Pair Git with the SSH binary shipped by the same distribution where practical.
- In automation, prefer an absolute executable path over PATH-order assumptions.

Pinning the toolchain turns environment drift into an explicit configuration decision.