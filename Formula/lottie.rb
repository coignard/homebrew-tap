class Lottie < Formula
  desc "A simple yet powerful Fountain screenplay editor"
  homepage "https://lottie.rs/"

  on_macos do
    on_arm do
      url "https://github.com/coignard/lottie/releases/download/0.2.17/lottie-universal-apple-darwin.tar.gz"
      sha256 "dd2957ab50f72a6487433a85df15fe3373fd601588572b5a8a1d945f03d71e36"
    end
    on_intel do
      url "https://github.com/coignard/lottie/releases/download/0.2.17/lottie-universal-apple-darwin.tar.gz"
      sha256 "dd2957ab50f72a6487433a85df15fe3373fd601588572b5a8a1d945f03d71e36"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/lottie/releases/download/0.2.17/lottie-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5da9597ca1e1263a49bccea79a7a334f5ad95ecc3bdbd723131c7fff5b741977"
    end
    on_intel do
      url "https://github.com/coignard/lottie/releases/download/0.2.17/lottie-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e7ef4015caf2131ca40ec55bb1afa86e81106383d51e39d729ad2f05190b2735"
    end
  end

  def install
    bin.install "lottie"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lottie --version")
  end
end
