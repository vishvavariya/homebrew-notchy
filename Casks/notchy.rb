cask "notchy" do
  version "1.0.58"
  sha256 "ba60856266e4c5e2cf28be60ba74a821794dc5a5c3cdea09c7a67e3fb9ccbd5c"

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
