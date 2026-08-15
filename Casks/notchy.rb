cask "notchy" do
  version "1.0.117"
  sha256 "e12e19f4d8de2c83d4de53053a98a3aabd59f1222ad2aad4de209e9f82389bbd"

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
