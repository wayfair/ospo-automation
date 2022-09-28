---
name: 🧹 Add Renovate
about: Add Renovate for dependency management!
title: ''
labels: ''
assignees: ''

---

## Description

👋 This repository is not currently configured for Renovate. This issue proposes the steps necessary to add Renovate to this project!

> 💡 Not familiar with [Renovate](https://www.mend.io/free-developer-tools/renovate/), or are confused about what advantages it holds over GitHub's [Dependabot](https://github.com/dependabot)? Learn more [here](https://wayfair.github.io/docs/managing-dependencies/#renovate-vs-dependabot)!

## Steps to Add

<!---
NOTE FOR OSPO: If this repository already contains a PR auto-filed by renovate[bot], please be sure to reference it in Step #2 of 'Steps to Add below. Don't forget to delete this note before filing the issue!'
-->

1. Review the guide for [Adding Renovate to Existing Projects](https://wayfair.github.io/docs/managing-dependencies/#existing-projects).
2. Assign yourself to this issue to signal to others that you intend to work on it. If you ultimately decide not to pursue this, please remember to un-assign yourself so that others may participate!
3. If the `renovate[bot]` account has already auto-filed a `Configure Renovate` PR against this repository, feel free to reference the proposed changes in your own Pull Request. If you are contributing to this project as a [Hacktoberfest](https://hacktoberfest.com/) participant, **you must file your own PR in order to get credit for your contribution!**
4. You may find that the CI build for this project is failing for unrelated reasons. If you are not already a contributor to this project and don't feel comfortable attempting to fix the build, that's okay! There's plenty of other ways you can contribute to Wayfair's open source projects :) Feel free to consult the list of our other participating repositories [here](https://github.com/search?q=org%3Awayfair+org%3Awayfair-incubator+topic%3Ahacktoberfest)!
5. In order to catch potential JSON syntax errors or other mis-configurations, please add [Renovate linting](https://wayfair.github.io/docs/managing-dependencies/#linting) to this project's existing [GitHub Workflow](https://docs.github.com/en/actions/using-workflows) CI pipeline, or create a new one (eg. `.github/workflows/lint.yml`). See [here](https://github.com/wayfair-incubator/oss-template/pull/31/files#diff-107e910e9f2ebfb9a741fa10b2aa7100cc1fc4f5f3aca2dfe78b905cbd73c0d2R20-R27) for an example.
6. If this repository is currently configured to use GitHub's Dependabot, you must also deprecate support for Dependabot in order to avoid conflicts with Renovate. This is typically as simple as removing the `.github/dependabot.yml` file. See [here](https://github.com/wayfair-incubator/oss-template/pull/31/files#diff-dd4fbda47e51f1e35defb9275a9cd9c212ecde0b870cba89ddaaae65c5f3cd28) for an example.

## Checklist

- [ ] I have read the [Adding Renovate to Existing Projects](https://wayfair.github.io/docs/managing-dependencies/#existing-projects) guide.
- [ ] I have assigned this issue to myself avoid duplicating efforts with other potential contributors.
- [ ] I have verified this repository does not already have Renovate configured (or proposed in an open PR by another contributor).
- [ ] If the `renovate[bot]` account has already auto-filed a `Configure Renovate` PR in this repository, I confirm that I will create a separate PR under my own GitHub account, using the initial PR as inspiration.
- [ ] I confirm that I have added Renovate linting to this project's existing CI pipeline, or have created a new linting workflow if one doesn't already exist.
- [ ] If this repository is currently configured to use GitHub's Dependabot, my PR will also deprecate support for Dependabot in order to avoid conflicts with Renovate.
