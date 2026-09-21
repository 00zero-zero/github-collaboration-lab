# Pull request review checklist

A review should verify the change at several layers.

Check that the implementation matches the stated intent, tests cover the changed behavior, public interfaces remain coherent, failure paths are explicit, and generated artifacts are not mistaken for source authority.

Confirm that unrelated changes are absent and that the PR can be reverted independently if necessary.

The checklist is a prompt for judgment rather than a substitute for judgment; reviewers should spend most attention on the risks specific to the change.
