# 🔄 OSPO Automation

[![Release](https://img.shields.io/badge/release-v0.0.3-blue.svg)](CHANGELOG.md)
[![Lint](https://github.com/wayfair/ospo-automation/actions/workflows/lint.yml/badge.svg?branch=main)](https://github.com/wayfair/ospo-automation/actions/workflows/lint.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-orange.svg)](LICENSE)
[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-2.0-4baaaa.svg)](CODE_OF_CONDUCT.md)
[![Maintainer](https://img.shields.io/badge/Maintainer-Wayfair-7F187F)](https://wayfair.github.io)

## About The Project

Automation workflows for Wayfair's [Open Source Program Office](https://wayfair.github.io).

## Self-Service

Wayfair developers who wish to fork an open source repository into [`/wayfair-contribs`](https://github.com/wayfair-contribs) for upstream contributions can now leverage our self-service PR workflow.

> 🎉 Please review the **[Fork a repository README](requests/fork/README.md)** to get started!

In the future, developers will also leverage PR workflows to request new projects in [`/wayfair-incubator`](https://github.com/wayfair-incubator), nominate mature projects to 'graduate' to [`/wayfair`](https://github.com/wayfair), and more.

> 💡 During the beta rollout of this fully self-service workflow, you may encounter some errors or edge cases we have not accounted for yet. For any issues or feedback on using this workflow, please reach out to [Wayfair OSPO](https://wayfair.github.io) internally on Slack (`#open-source-forum`) and we can lend a hand!

---

## Internal Usage

Currently, the OSPO Automation project has a single workflow available for creating repository forks. Note that presently, this workflow is only intended for internal usage by the OSPO team. In the future, this workflow will become fully self-serviceable through an automated PR workflow.

To trigger this workflow manually, follow these steps:

1. Navigate to the [Actions](https://github.com/wayfair/ospo-automation/actions) tab of the project
2. Locate the workflow you wish to run - in this case: **[fork](https://github.com/wayfair/ospo-automation/actions/workflows/fork.yml)**
3. Under the run history, you should see: `This workflow has a workflow_dispatch event trigger`
4. Click the `Run workflow` button next to this message, and a dialogue box should open
5. Fill out the required [inputs](https://github.com/wayfair-incubator/forker#inputs) to run the `forker` action
6. Click the green `Run workflow` button at the bottom to manually trigger the workflow
7. Watch your workflow spin into action in the run history!

## Adding Workflows

To add new workflows to the project, follow these simple steps:

1. Clone the repository:

   ```sh
   git clone https://github.com/wayfair/ospo-automation.git
   ```

2. Create new GitHub workflows under `.github/workflows`:

   ```sh
   cd .github/workflows
   touch my-cool-workflow.yml
   ```

## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**. For detailed contributing guidelines, please see [CONTRIBUTING.md](CONTRIBUTING.md)

## License

Distributed under the MIT License. See [LICENSE](LICENSE) for more information.

## Contact

[![Gmail](https://img.shields.io/badge/OpenSource@wayfair.com-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:OpenSource@wayfair.com)

[![Gatsby](https://img.shields.io/badge/wayfair.github.io-%23663399.svg?style=for-the-badge&logo=gatsby&logoColor=white)](https://wayfair.github.io)

[![Twitter](https://img.shields.io/badge/wayfairtech-%231DA1F2.svg?style=for-the-badge&logo=Twitter&logoColor=white)](https://twitter.com/wayfairtech)

## Acknowledgements

[Repository template](https://github.com/wayfair-incubator/oss-template) made with  💜 by Wayfair's [Open Source Program Office](https://wayfair.github.io).
