# CODEOWNERS scope

CODEOWNERS should map real review responsibility, not merely mirror directory names.

Assign ownership at boundaries where a reviewer can actually judge correctness and long-term maintenance. Prefer the narrowest stable path that corresponds to a coherent subsystem. Avoid overlapping rules that make it unclear which owner is authoritative.

Treat generated files separately from their source definitions. Review should focus on the source of truth, while generated outputs can be validated by CI.

Periodically audit CODEOWNERS against repository structure so stale paths do not create false confidence about review coverage.
