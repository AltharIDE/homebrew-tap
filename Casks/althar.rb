cask "althar" do
  version "0.6.1"
  sha256 "4059dd683dbe071dcfffc48cba5a6d0dff1fe8e3336ce79a6af3b018c7ac5461"

  url "https://github.com/AltharIDE/althar/releases/download/v#{version}/Althar-#{version}-arm64.dmg"
  name "Althar"
  desc "Desktop app for running a software project with AI coding agents"
  homepage "https://althar.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Althar.app"

  zap trash: [
    "~/Library/Application Support/@althar",
    "~/Library/Application Support/Althar",
    "~/Library/Caches/althar-updater",
    "~/Library/Caches/dev.althar.app",
    "~/Library/HTTPStorages/dev.althar.app",
    "~/Library/Logs/Althar",
    "~/Library/Preferences/dev.althar.app.plist",
  ]
end
