# simple-ansible-project

A minimal Ansible project whose AWX job templates are managed by
`central-awx`.

- `playbooks/`: the playbooks
- `awx/`: OpenTofu module defining this project's job templates. central-awx
  calls it once per managed branch (the default branch on prod; the default
  branch and every `feature/*` branch on test), passing the AWX project for
  that branch, a name prefix (`""` or `<suffix>-`), the inventory and the
  machine credential.

Template names have no spaces; on `feature/foo` the `ping` template becomes
`foo-ping`.
