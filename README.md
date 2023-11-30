# TechTerrarium

## Introduction

*TechTerrarium* is an open-source project dedicated to streamline infrastructure
deployment, facilitate internal learning, empower sales demos, and provide the
basis for engaging, informative content creation. At its core, it is a
multifaceted, modular development environment designed to foster exploration and
experimentation.

It is envisioned as a versatile and interactive platform that allows us to
craft, test, and compare Cloud Native solutions. It provides a centralized,
reusable environment where we can simulate infrastructure deployments, run
experiments, and create demos.


## Contribution

We welcome contributions from the community! Please read our
[`CONTRIBUTING.md`](CONTRIBUTING.md) for guidelines.


## Roles and Responsibilities

- **Project Lead**: Oversees the project, manages contributions, and ensures
alignment with the project's goals. The current project lead is [Julien
Sudan](https://github.com/ned-si).
- **Project Sponsor**: Provides strategic guidance and support.
- **Contributors**: Anyone who contributes to the project in various capacities,
including coding, documentation, testing, and more. We value all contributions
and encourage community members to participate.


## Roadmap

1. **Commit code**
  - Repo showing some common knowledge of Cloud Native
  - Is an opportunity to dive into IDP and other technologies
  - Can be done incrementally on separate branches
  - Doesn't need to all fit together at first
2. **Organize code around `example-voting-app` from Docker**
  - 0 to full IDP to deploy this app
  - Management cluster deployment using IaC
  - Managed child clusters where the voting app is deployed
  - All proper security measures around all this
  - Should work on one provider (or locally) first
  - This could be changed later on by a custom app example
3. **Implement modularity**
  - Different providers can be used
  - Different solutions/tools can be used
4. **Implement tool(s) to deploy things**
  - First solution should be a CLI tool with minimal dependencies (maybe `gum`)
  - Possible to have multiple solutions, even a GUI
5. **Project Website**
  - Have a publicly available website automatically generated
6. **Benchmarks and comparisons**
  - Benchmark first tools
  - Make first comparison page for benchmarked tools


## Project Structure

Below is the tree structure of our project, providing a quick overview of the
main files and directories:

```
.
├── CONTRIBUTING.md
├── demos
│   └── README.md
├── docs
│   └── FAQ.md
├── LICENSE
├── README.md
└── templates
    └── README.md
```


### Explanation of Key Components

- **`CONTRIBUTING.md`**: This file contains guidelines for contributing to the
project, including how to submit pull requests and our coding standards.
- **`demos/`**: Contains fully functional demo projects showcasing the use of
TechTerrarium. Each demo has detailed instructions in its README.
- **`docs/`**: This directory holds all the additional documentation.
    - **`FAQ.md`**: Frequently asked questions and their answers can be found
    here. This is a good place to start if you're encountering issues or have
    queries.
- **`LICENSE`**: The license file details the terms under which the project can be
used. We use the Apache License 2.0.
- **`README.md`**: The README provides an overview of the project, including an
introduction, how to get started, and how to use the project.
- **`templates/`**: Reusable code templates that demonstrate specific
functionalities or best practices. Each template is explained in its README.


## FAQ

For any questions you might have about TechTerrarium, we've compiled a list of
Frequently Asked Questions (FAQ). This document aims to address common queries
and provide quick solutions to typical issues you might encounter. You can find
the FAQ in the [`docs/FAQ.md`](docs/FAQ.md) file.


## License

This project is licensed under the Apache License 2.0 - see the
[`LICENSE`](LICENSE) file for details.
