cask "cmd-switch" do
  version "1.0.7"
  sha256 "4760ea6e54ea647023f77bb5fc83c29b2edaaa4de40f0a1b4c3e3cd6f8ba70aa"

  url "https://github.com/dongri/cmd-switch/releases/download/v#{version}/CmdSwitch.dmg"
  name "CmdSwitch"
  desc "macOS menu bar app to switch input sources with Command key"
  homepage "https://github.com/dongri/cmd-switch"

  depends_on macos: ">= :monterey"

  app "Cmd Switch.app"

  zap trash: [
    "~/Library/Application Support/org.dongri.cmd-switch",
    "~/Library/Caches/org.dongri.cmd-switch",
    "~/Library/Preferences/org.dongri.cmd-switch.plist",
    "~/Library/Saved Application State/org.dongri.cmd-switch.savedState",
  ]
end
