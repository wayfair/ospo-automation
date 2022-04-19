# OSPO Automation

[![Release](https://img.shields.io/badge/release-v0.0.2-blue.svg)](CHANGELOG.md)
[![Lint](https://github.com/wayfair/ospo-automation/actions/workflows/lint.yml/badge.svg?branch=main)](https://github.com/wayfair/ospo-automation/actions/workflows/lint.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-orange.svg)](LICENSE)
[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-2.0-4baaaa.svg)](CODE_OF_CONDUCT.md)
[![Maintainer](https://img.shields.io/badge/Maintainer-Wayfair-7F187F)](https://wayfair.github.io)

## About The Project

Automation workflows for Wayfair's [Open Source Program Office](https://wayfair.github.io).

## Basic Usage

Currently, the OSPO Automation project has a single workflow available for creating repository forks.

To trigger this job manually, follow these steps:

1. Navigate to the [Actions](https://github.com/wayfair/ospo-automation/actions) tab of the project
2. Locate the workflow you wish to run - in this case: [fork](https://github.com/lelia/ospo-platform/actions/workflows/fork.yml)
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
