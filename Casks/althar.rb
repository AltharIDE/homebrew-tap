cask "althar" do
  arch arm: "arm64", intel: "x64"

  version "0.7.0"
  sha256 arm:   "f8e388b187fd31a0298651d133ed420cada73e227803ceb419a1c0a335c63fd5",
         intel: "50e565793b1aa733c691183856c6c5b830eba46aca764fe374379697c1b9114f"

  url "https://github.com/AltharIDE/althar/releases/download/v#{version}/Althar-#{version}-#{arch}.dmg"
  name "Althar"
  desc "Desktop app for running a software project with AI coding agents"
  homepage "https://althar.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
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
