cask "notchy" do
  version "1.0.31"
  sha256 "a7bb2355d61c20a6f4c57b49a5763ed7e9de477158c02cc4529794a38029a8f3"

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
  depends_on macos: :ventura

  app "Notchy.app"

  zap trash: [
    "~/Library/Application Support/Notchy",
    "~/Library/Caches/dev.notchy.notchy",
    "~/Library/Preferences/dev.notchy.notchy.plist",
    "~/Library/Saved Application State/dev.notchy.notchy.savedState",
  ]
end
