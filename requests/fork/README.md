# 🔁 Fork a repository

## Instructions

1. Clone the `ospo-automation` repository, and create a new branch titled `fork-repo-<REPO-NAME>`, where `<REPO-NAME>` represents the name of the repository you wish to fork.
1. Create a new YAML file (.yml) based on the same repository name (eg. `tremor-runtime.yml`) under `requests/fork/`
1. Using the example below or [linked here](tremor-runtime.yml), provide the required details in your newly-created YAML file and commit the changes to your fork request PR:

```yaml
---
github_user: lelia # Your personal GitHub account name (eg. 'lelia' from https://github.com/lelia)
repo_owner: tremor-rs # The name of the org / account that owns the repository you wish to fork (eg. 'tremor-rs' from https://github.com/tremor-rs)
repo_name: tremor-runtime # The name of the repository that you wish to fork (eg. 'tremor-runtime' from https://github.com/tremor-rs/tremor-runtime)
admin_perms: false # Whether or not you require administrator permissions for the repository you are forking (eg. 'true')
```
