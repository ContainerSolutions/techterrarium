# Contributing to TechTerrarium

## Getting Started

TBD


## Pull Requests (PRs)

- To avoid duplicate work, create a draft PR.
- Avoid cosmetic changes to unrelated files in the same commit.
- Use [atomic commits]().
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

Follow the [conventional commits guidelines][conventional-commits] to *make
reviews easier* and to make the VCS/git logs more valuable. The general
structure of a commit message is:

```
<type>([optional scope]): <description>

[optional body]

[optional footer(s)]
```

- Prefix the commit subject with one of these
[_types_](https://github.com/commitizen/conventional-commit-types/blob/master/index.json):
    - `build`, `ci`, `docs`, `feat`, `fix`, `perf`, `refactor`, `revert`,
    `test`
    - You can **ignore this for "fixup" commits** or any commits you expect to
    be squashed.
- Append optional scope to _type_ such as `(argocd)`, `(demo-x)`, etc.
- _Description_ shouldn't start with a capital letter or end in a period.
- Use the _imperative voice_: "fix bug" rather than "fixed bug" or "fixes bug."
- Try to keep the first line under 72 characters.
- A blank line must follow the subject.
- Breaking changes must be indicated by
    1. "!" after the type/scope, and
    2. a "BREAKING CHANGE" footer describing the change. Example:
    ```
    refactor(provider)!: drop support for Python 2

       BREAKING CHANGE: refactor to use Python 3 features since Python 2 is no
       longer supported.
    ```

## Coding

### Lint

TBD


### Style

TBD


## Documentation

TBD


## Reviewing

Reviewing can be done on GitHub, but you may find it easier to do locally. Using
[GitHub CLI][gh], you can create a new branch with the contents of a pull
request:

```bash
gh pr checkout <pr-link>
```

Use [`git log -p main..FETCH_HEAD`][git-history-filtering] to list all commits
in the feature branch which aren't in the `main` branch; `-p` shows each
commit's diff. To show the whole surrounding function of a change as context,
use the `-W` argument as well.


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
