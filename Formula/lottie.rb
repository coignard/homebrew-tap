class Lottie < Formula
  desc "A simple yet powerful Fountain screenplay editor"
  homepage "https://lottie.rs/"

  on_macos do
    on_arm do
      url "https://github.com/coignard/lottie/releases/download/0.2.13/lottie-universal-apple-darwin.tar.gz"
      sha256 "26d41eb12b69867f1d9a721dd456a0069c1d4c5b4a4f18302b73104c836e66d3"
    end
    on_intel do
      url "https://github.com/coignard/lottie/releases/download/0.2.13/lottie-universal-apple-darwin.tar.gz"
      sha256 "26d41eb12b69867f1d9a721dd456a0069c1d4c5b4a4f18302b73104c836e66d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/lottie/releases/download/0.2.13/lottie-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c5df3777a19ea562ff5c5dd7cf184f92bebb51f94d828eff1f0315b4355dbf85"
    end
    on_intel do
      url "https://github.com/coignard/lottie/releases/download/0.2.13/lottie-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7e027331e5eedccf6b6d9d27034edf7da369f64dadeb614190fd6c3752b23dfd"
    end
  end

  def install
    bin.install "lottie"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lottie --version")
  end
end
