cask "althar" do
  version "0.6.0"
  sha256 "b96d4fce3694e641f98541022c2405cbac412eaaf47446608adb4bd9d99d123f"

  url "https://github.com/AltharIDE/althar/releases/download/v#{version}/Althar-#{version}-arm64.dmg",
      verified: "github.com/AltharIDE/althar/"
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
