cask "notchy" do
  version "1.0.44"
  sha256 "1d300ca37d30f8cc39763da16da78bc24add8cb045784006c4e39d0026fca277"

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
