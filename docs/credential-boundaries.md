# Separating GitHub CLI credentials from Git transport

GitHub CLI authentication and Git network authentication are related but independent.

The gh client stores an API credential used for REST and GraphQL operations. Git may authenticate through SSH, Git Credential Manager, or a custom credential helper. A successful gh auth status therefore does not prove that git push uses the same account.

## Verification

- Query the active API identity with gh api user.
- Verify the SSH identity with ssh -T against the selected alias.
- Inspect git remote -v to see the transport endpoint.
- Inspect all credential helpers when HTTPS is used.

Keep API identity, transport identity, and commit attribution explicit rather than assuming one implies the others.