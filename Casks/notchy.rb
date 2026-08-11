cask "notchy" do
  version "1.0.108"
  sha256 "67eb4be6250f505aa364fd7c0ff5574686b031f9f56f9b9c6aa030656b5a6e58"

  url "https://notchy.dev/Notchy-#{version}.zip",
      verified: "notchy.dev/"
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

  zap trash: [
    "~/Library/Application Support/Notchy",
    "~/Library/Application Support/dev.notchy.app",
    "~/Library/Caches/dev.notchy.app",
    "~/Library/Caches/dev.notchy.app.sparkle",
    "~/Library/Group Containers/PKQWZ2BV83.dev.notchy.app",
    "~/Library/HTTPStorages/dev.notchy.app",
    "~/Library/Preferences/dev.notchy.app.plist",
    "~/Library/Preferences/dev.notchy.usagecore.plist",
    "~/Library/Saved Application State/dev.notchy.app.savedState",
  ]
end
