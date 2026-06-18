cask "notchy" do
  version "1.0.30"
  sha256 "e1fb8248a43ffe1219d160ec722f33fd8ec6c455cc277a350f7fd4aa2f442af3"

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
    "~/Library/Caches/dev.notchy.notchy",
    "~/Library/Preferences/dev.notchy.notchy.plist",
    "~/Library/Saved Application State/dev.notchy.notchy.savedState",
  ]
end
