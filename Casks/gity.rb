cask "gity" do
  version "1.0.0"
  sha256 "6106f38f11263f3576233283c95c17429bc64115de19623805a1c55ebf101186"

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
