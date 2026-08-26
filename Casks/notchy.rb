cask "notchy" do
  version "1.0.133"
  sha256 "6c2244bb363cfd7b56abd2c87d24cc566feaaef5f5d54c9aac59f04133183f16"

  url "https://github.com/vishvavariya/notchy-feedback/releases/download/v#{version}/Notchy-#{version}.zip",
      verified: "github.com/vishvavariya/notchy-feedback/"
  name "Notchy"
  desc "Free Dynamic Island for the MacBook notch"
  homepage "https://notchy.dev/"

  livecheck do
    url "https://notchy.dev/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Notchy.app"

  # Keep in sync with UninstallManager.swift — the in-app "Uninstall Notchy"
  # button and `brew uninstall --zap notchy` must leave the same machine behind.
  # (The one thing brew cannot do is `tccutil reset`; permission records for a
  # removed app are inert, and reinstalling re-prompts.)
  zap trash: [
    "~/Library/Application Support/Notchy",
    "~/Library/Application Support/dev.notchy.app",
    "~/Library/Caches/dev.notchy.app",
    "~/Library/Caches/dev.notchy.app.sparkle",
    "~/Library/Caches/dev.notchy.usagecore",
    "~/Library/Containers/dev.notchy.app",
    "~/Library/Group Containers/PKQWZ2BV83.dev.notchy.usagecore",
    "~/Library/Group Containers/group.dev.notchy.usagecore",
    "~/Library/HTTPStorages/dev.notchy.app",
    "~/Library/HTTPStorages/dev.notchy.app.binarycookies",
    "~/Library/Preferences/dev.notchy.app.plist",
    "~/Library/Preferences/dev.notchy.usagecore.plist",
    "~/Library/Saved Application State/dev.notchy.app.savedState",
    "~/Library/WebKit/dev.notchy.app",
  ]
end

