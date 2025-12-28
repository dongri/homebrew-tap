class Coins < Formula
  desc "Terminal-based cryptocurrency price tracker"
  homepage "https://github.com/dongri/coins"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dongri/coins/releases/download/v#{version}/coins-macos-arm64.tar.gz"
      # sha256 "..." # リリース後に追加
    else
      url "https://github.com/dongri/coins/releases/download/v#{version}/coins-macos-x64.tar.gz"
      # sha256 "..."
    end
  end

  on_linux do
    url "https://github.com/dongri/coins/releases/download/v#{version}/coins-linux-x64.tar.gz"
    # sha256 "..."
  end

  def install
    bin.install "coins"
  end

  test do
    assert_match "coins", shell_output("#{bin}/coins --version", 2)
  end
end
