class Minitun < Formula
  desc "Minimal VPN manager for macOS (CLI + daemon)"
  homepage "https://github.com/shrektan/minitun"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/shrektan/minitun/releases/download/v0.1.0/minitun_0.1.0_darwin_arm64.tar.gz"
      sha256 "REPLACE_WITH_DARWIN_ARM64_SHA256"
    end
    on_intel do
      url "https://github.com/shrektan/minitun/releases/download/v0.1.0/minitun_0.1.0_darwin_amd64.tar.gz"
      sha256 "REPLACE_WITH_DARWIN_AMD64_SHA256"
    end
  end

  depends_on "fzf"
  depends_on "sing-box"

  def install
    bin.install "minitun"
    bin.install "minitund"
  end

  test do
    assert_match "minitun", shell_output("#{bin}/minitun help")
  end
end
