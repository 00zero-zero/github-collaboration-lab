# Windows dual-GitHub-account workflow

This repository documents a reliable way to use two GitHub identities on one Windows machine without repeatedly logging in and out.

## Recommended model

- Give each account its own Ed25519 SSH key.
- Map each key to a distinct SSH host alias.
- Keep commit attribution separate from transport authentication.
- Verify both the authenticated GitHub identity and the effective Git author before pushing.

## SSH example

```sshconfig
Host github-primary
  HostName ssh.github.com
  User git
  Port 443
  IdentityFile ~/.ssh/id_ed25519_primary
  IdentitiesOnly yes

Host github-secondary
  HostName ssh.github.com
  User git
  Port 443
  IdentityFile ~/.ssh/id_ed25519_secondary
  IdentitiesOnly yes
```

A repository owned by the secondary account can then use `git@github-secondary:OWNER/REPOSITORY.git`.

## Verification

Run `scripts/verify-git-identities.ps1` from inside a repository. The script checks both SSH identities, the effective Git author, and the configured origin.
