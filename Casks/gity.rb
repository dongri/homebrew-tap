cask "gity" do
  version "1.0.1"
  sha256 "511ea9521ed5d242bc0c17f104a02e112a4843a75dc0fef4219fd48cce494e13" # shasum -a 256 GitY.dmg の結果をここに貼る

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
