cask "gity" do
  version "1.1.4"
  sha256 "00c42407e1af934391f69c479d93904b92951bcb4ba721e3cef4d6ce01bbcfc6"

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
