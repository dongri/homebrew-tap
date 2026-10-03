cask "gity" do
  version "1.1.1"
  sha256 "8ff6e97b71c72a1c8cfd784317ea046b5cd608eeb2d3763eb1b36dbb85dd3df8"

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
