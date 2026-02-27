cask "gity" do
  version "1.0.10"
  sha256 "2af2148c52867ba9b769415f6610b337cb663d871c963029d4166b9edc5f845b"

  url "https://github.com/dongri/gity/releases/download/v#{version}/GitY.dmg"
  name "GitY"
  desc "A modern Git GUI client for macOS"
  homepage "https://github.com/dongri/gity"

  depends_on macos: ">= :ventura"

  app "GitY.app"

  zap trash: [
    "~/Library/Application Support/org.dongri.gity",
    "~/Library/Caches/org.dongri.gity",
    "~/Library/Preferences/org.dongri.gity.plist",
    "~/Library/Saved Application State/org.dongri.gity.savedState",
  ]
end
