cask "notchy" do
  version "1.0.77"
  sha256 "d109963ac9584334dd83a138f2b5f9115004cdac1b8d609448196c061057b80d"

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
