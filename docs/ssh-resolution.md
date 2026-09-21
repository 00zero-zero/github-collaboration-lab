# Diagnosing SSH host alias resolution on Windows

A GitHub SSH alias can work in one terminal and fail inside Git when different SSH binaries or HOME directories are in play.

## Diagnostic sequence

1. Record the exact Git binary with where git.
2. Record the exact SSH binary with where ssh.
3. Inspect the resolved alias with ssh -G github-secondary.
4. Check Git overrides through core.sshCommand.
5. Check the GIT_SSH and GIT_SSH_COMMAND environment variables.
6. Run Git tracing on a harmless ls-remote operation and compare the SSH executable actually invoked.

The key invariant is that interactive authentication tests and Git network operations should use the same SSH implementation and configuration source.