# homebrew-tap

Homebrew tap for `aiwiki-toolkit`.

This repository is the formula distribution repo for the main project:

- Source: `BochengYin/ai-wiki-toolkit`
- Formula path: `Formula/aiwiki-toolkit.rb`

## Install

After the first tagged release is published from the main repository, users can install with:

```bash
brew tap BochengYin/tap
brew install aiwiki-toolkit
```

Or without tapping first:

```bash
brew install BochengYin/tap/aiwiki-toolkit
```

## Update Model

The formula in this repository is generated from GitHub Release assets published by the main repository.

Expected flow:

1. A release tag such as `v0.1.0` is pushed to `BochengYin/ai-wiki-toolkit`.
2. GitHub Actions builds release binaries and generates `aiwiki-toolkit.rb`.
3. The main repository workflow updates `Formula/aiwiki-toolkit.rb` in this tap repository.

Until the first tagged release exists, this repository may contain only the tap scaffolding and no formula yet.
