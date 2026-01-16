cask "gity" do
  version "1.0.1"
  sha256 "511ea9521ed5d242bc0c17f104a02e112a4843a75dc0fef4219fd48cce494e13"

  url "https://github.com/dongri/gity/releases/download/v#{version}/GitY.dmg"
  name "GitY"
  desc "A Git GUI client for macOS"
  homepage "https://github.com/dongri/gity"

  app "GitY.app"

  # ここにより詳細な説明を追加できます
  caveats <<~EOS
    "GitY" is not signed. If you see a "damaged" error, run:
      xattr -cr /Applications/GitY.app
  EOS

  # インストール後に自動で実行権限の修正を試みる設定
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/GitY.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/GitY",
    "~/Library/Caches/GitY",
    "~/Library/Preferences/com.dongri.GitY.plist",
    "~/Library/Saved Application State/com.dongri.GitY.savedState",
  ]
end
