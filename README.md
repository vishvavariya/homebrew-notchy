# homebrew-notchy

Personal Homebrew tap for [Notchy](https://notchy.dev) — the free, native macOS app that turns your MacBook notch into a Dynamic Island.

## Install

```bash
brew install --cask vishvavariya/notchy/notchy
```

Or as two steps:

```bash
brew tap vishvavariya/notchy
brew install --cask notchy
```

## Update

Notchy self-updates via Sparkle, so the version installed via Homebrew will keep itself current. You can also force an update with:

```bash
brew upgrade --cask notchy
```

## Uninstall

```bash
brew uninstall --cask notchy
```

To also remove leftover preferences and caches:

```bash
brew uninstall --cask --zap notchy
```

## Links

- Website: <https://notchy.dev>
- Download: <https://notchy.dev/download>
- Changelog: <https://notchy.dev/changelog>
- Feedback: <https://github.com/vishvavariya/notchy-feedback>

## Maintenance

Cask lives at [`Casks/notchy.rb`](Casks/notchy.rb). Bump `version` and `sha256` on every release. Get the sha256 with:

```bash
shasum -a 256 Notchy-X.Y.Z.zip
```

Sparkle `livecheck` keeps `brew livecheck notchy` honest against the official appcast at <https://notchy.dev/appcast.xml>.
