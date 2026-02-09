# homebrew-tap

Homebrew tap for `minitun`.

## Install (after first release is published)

```bash
brew install shrektan/tap/minitun
```

## Maintainer workflow

1. Push this tap repository to GitHub as `shrektan/homebrew-tap`.
2. Keep `.goreleaser.yaml` in `minitun` source repo configured to update this tap.
3. Release from source repo by pushing a tag like `v0.1.0`.
4. GoReleaser opens/commits formula updates into this tap automatically.
