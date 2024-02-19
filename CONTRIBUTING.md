# Contributing to the Tech Terrarium

## Getting Started

Welcome to the Tech Terrarium project! Here's how to get started as a
contributor:

- **Familiarize Yourself with the Project**: Start by reading the README,
CONTRIBUTING, and CODE_OF_CONDUCT documents to understand the project's scope,
contribution process, and community guidelines.
- **Set Up Your Development Environment**:
  - Clone the repository
  - Set up any required environment variables or configuration files as
  documented in the project's README or in specific documentation within the
  `docs/` directory.
3. **Choose an Issue to Work On or Create a New One**: Look at the project's
issues tagged with `good first issue` or `help wanted` to find tasks suitable
for new contributors. If you have an idea for a new feature or notice a problem
that hasn't been reported yet, please feel free to create a new issue. When
creating a new issue, provide a clear and concise description of the feature or
problem, including any relevant details or examples that can help others
understand your proposal or the issue you're reporting. This proactive approach
helps us continuously improve the project and ensures that we're addressing the
needs of our users and contributors. Feel free to ask questions in the issue
comments if you need more information before starting or if you're seeking
feedback on your idea.
- **Communicate Your Intent**: Before you start working on an issue, comment on
it expressing your intention to work on it. This helps prevent duplicate efforts
from other contributors.

## Pull Requests (PRs)

- To avoid duplicate work, create a draft PR.
- Avoid cosmetic changes to unrelated files in the same commit.
- Use [atomic commits](atomic-commits).
- Use a feature branch instead of the `main` branch.
- Use a _rebase workflow_ for all PRs.
  - After addressing review comments, it's fine to force-push.

### Merging to `main`

For maintainers: when a PR is ready to merge to `main`,

- Prefer _Squash Merge_ for "single-commit PRs" (when the PR has only one
meaningful commit).
- Prefer _Merge_ for "multi-commit PRs" (when the PR has multiple meaningful
commits).

### Stages: Draft and Ready for review

Pull requests have two stages: Draft and Ready for review.

1. [Create a Draft PR][pr-draft] while you are _not_ requesting feedback as you
are still working on the PR.
    - You can skip this if your PR is ready for review.
2. [Change your PR to ready][pr-ready] when the PR is ready for review.
    - You can convert back to Draft at any time.

Do __not__ add labels like `[RFC]` or `[WIP]` in the title to indicate the state
of your PR: this just adds noise. Non-Draft PRs are assumed to be open for
comments; if you want feedback from specific people, `@`-mention them in a
comment.

### Commit messages

Follow the [conventional commits guidelines][conventional-commits] to *make*
*reviews easier* and to make the VCS/git logs more valuable. The general
structure of a commit message is:

```sh
<type>([optional scope]): <description>

[optional body]

[optional footer(s)]
```

- Prefix the commit subject with one of these
[_types_](https://github.com/commitizen/conventional-commit-types/blob/master/index.json):
  - `build`, `ci`, `docs`, `feat`, `fix`, `perf`, `refactor`, `revert`,
  `test`
  - You can __ignore this for "fixup" commits__ or any commits you expect to
  be squashed.
- Append optional scope to _type_ such as `(argocd)`, `(demo-x)`, etc.
- _Description_ shouldn't start with a capital letter or end in a period.
- Use the _imperative voice_: "fix bug" rather than "fixed bug" or "fixes bug."
- Try to keep the first line under 72 characters.
- A blank line must follow the subject.
- Breaking changes must be indicated by
    1. "!" after the type/scope, and
    2. a "BREAKING CHANGE" footer describing the change. Example:

    ```sh
    refactor(provider)!: drop support for Python 2

       BREAKING CHANGE: refactor to use Python 3 features since Python 2 is no
       longer supported.
    ```

## Coding

### Lint

We enforce coding standards and strive for consistency across our codebase with
the help of linting tools. Here's how you can lint your code:

- **Install Linting Tools**: Ensure you have installed all the necessary linting
tools mentioned in the project's `README.md` or `docs/development.md`.
  - Tools actually have TBD.
- **Run Linters Locally**: Before submitting your pull request, run the linters
locally to find and fix any style or syntax issues.
- **Fix Linting Issues**: Address any linting issues detected by the tools. If
you're unsure how to fix a specific issue, consult the project's documentation
or ask for guidance in a comment on your pull request.

### Style

To maintain code readability and consistency, we adhere to specific coding style
guidelines. While linting will catch many issues, here are general principles to
follow:

- **Follow Language-Specific Style Guides**: Adhere to widely accepted style
guides for the language you're working in.
- **Readable Code**: Write code that's clean and understandable. Use meaningful
variable and function names, avoid overly complex constructions, and break down
large functions into smaller, manageable pieces.
- **Commenting and Documentation**: Comment your code where necessary to explain
"why" behind a logic, not just "what" the code does. Update or add documentation
for public APIs, features, and complex logic.
- **Consistent Formatting**: Use the project's existing code formatting
conventions regarding indentation, brackets, line length, etc. If the project
uses a formatter like Prettier or Black, make sure to apply it to your changes.
  - This needs TBD as well.

## Documentation

High-quality documentation is crucial for open-source projects. Here's how you
can contribute to ours:

- **Update Documentation With New Features**: If you're adding a new feature or
changing existing functionality, update the relevant documentation. This
includes inline code comments, API documentation, and user guides in the `docs/`
directory.
- **Improve Clarity and Accuracy**: Feel free to submit pull requests that
improve the clarity, accuracy, or completeness of our documentation. This could
involve rephrasing for better understanding, correcting inaccuracies, or adding
missing details.
- **Examples and Tutorials**: Where applicable, add examples or tutorials that
demonstrate new features or complex use cases. This helps users and new
contributors understand how to use the project more effectively.
- **Keep It Accessible**: Write documentation that is accessible to people with
different levels of expertise

## Reviewing

Reviewing can be done on GitHub, but you may find it easier to do locally. Using
[GitHub CLI][gh], you can create a new branch with the contents of a pull
request:

```bash
gh pr checkout <pr-link>
```

## Community Guidelines

Our project follows certain guidelines to ensure a respectful and inclusive
environment. Before contributing, please read our [Code of
Conduct](CODE_OF_CONDUCT.md), which applies to all project interactions.

## Acknowledgement

These contributing guidelines have been strongly inspired by the ones from
[Neovim](neovim)

[atomic-commits]: https://en.wikipedia.org/wiki/Atomic_commit
[pr-draft]:
https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request
[pr-ready]:
https://docs.github.com/en/github/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/changing-the-stage-of-a-pull-request
[conventional-commits]: https://www.conventionalcommits.org
[gh]: https://cli.github.com/
[neovim]: https://github.com/neovim/neovim
