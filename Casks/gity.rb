cask "gity" do
  version "1.0.9"
  sha256 "cd2c00586462e80102c009a71f95d6462ce6f5cae848add7c53f5dbdf0c9e5aa"

  url "https://github.com/dongri/gity/releases/download/v#{version}/GitY.dmg"
  name "GitY"
  desc "A modern Git GUI client for macOS"
  homepage "https://github.com/dongri/gity"

  depends_on macos: ">= :ventura"

  app "GitY.app"

  zap trash: [
    "~/Library/Application Support/com.gitx.gity",
    "~/Library/Caches/com.gitx.gity",
    "~/Library/Preferences/com.gitx.gity.plist",
    "~/Library/Saved Application State/com.gitx.gity.savedState",
  ]
end
