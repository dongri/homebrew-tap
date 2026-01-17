class Coins < Formula
  desc "Terminal-based cryptocurrency price tracker"
  homepage "https://github.com/dongri/coins"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dongri/coins/releases/download/v#{version}/coins-macos-arm64.tar.gz"
      sha256 "84651c312adabd21c6aa3018415bd31843763d571fd2060ea4f98186d3a319d6"
    else
      url "https://github.com/dongri/coins/releases/download/v#{version}/coins-macos-x64.tar.gz"
      sha256 "4a146b5693b9cf6e02cfec320e915339c3e23867c0f453c4d0d2bc53e45e10e9"
    end
  end

  on_linux do
    url "https://github.com/dongri/coins/releases/download/v#{version}/coins-linux-x64.tar.gz"
    sha256 "38958cfa27f5ec6363a48e525e7ab56e05180163be01c488629891dc2acf29df"
  end

  def install
    bin.install "coins"
  end

  test do
    assert_match "coins", shell_output("#{bin}/coins --version", 2)
  end
end
