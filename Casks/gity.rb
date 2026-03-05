cask "gity" do
  version "1.0.14"
  sha256 "f00bc5f8dcd021d4b6e639892ab13c03acb234fa3af1635d08fa02f8526e2616"

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
