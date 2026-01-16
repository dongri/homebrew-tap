cask "gity" do
  version "v1.0.1"
  sha256 "SHA256_OF_YOUR_DMG_FILE" # shasum -a 256 GitY.dmg の結果をここに貼る

  url "https://github.com/dongri/gity/releases/download/v#{version}/GitY.dmg"
  name "GitY"
  desc "A Git GUI client for macOS"
  homepage "https://github.com/dongri/gity"

  app "GitY.app"

  zap trash: [
    "~/Library/Application Support/GitY",
    "~/Library/Caches/GitY",
    "~/Library/Preferences/com.dongri.GitY.plist",
    "~/Library/Saved Application State/com.dongri.GitY.savedState",
  ]
end
