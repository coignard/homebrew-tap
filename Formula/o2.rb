class o2 < Formula
  desc "Rust implementation of the Orca esoteric language and TUI livecoding environment"
  homepage "https://lottie.rs/"

  on_macos do
    on_arm do
      url "https://github.com/coignard/o2/releases/download/0.1.0/o2-universal-apple-darwin.tar.gz"
      sha256 "dd2957ab50f72a6487433a85df15fe3373fd601588572b5a8a1d945f03d71e36"
    end
    on_intel do
      url "https://github.com/coignard/o2/releases/download/0.1.0/o2-universal-apple-darwin.tar.gz"
      sha256 "dd2957ab50f72a6487433a85df15fe3373fd601588572b5a8a1d945f03d71e36"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/o2/releases/download/0.1.0/o2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5da9597ca1e1263a49bccea79a7a334f5ad95ecc3bdbd723131c7fff5b741977"
    end
    on_intel do
      url "https://github.com/coignard/o2/releases/download/0.2.17/o2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e7ef4015caf2131ca40ec55bb1afa86e81106383d51e39d729ad2f05190b2735"
    end
  end

  def install
    bin.install "o2"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/o2 --version")
  end
end
