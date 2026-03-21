class Lottie < Formula
  desc "A simple yet powerful Fountain screenplay editor"
  homepage "https://lottie.rs/"

  on_macos do
    on_arm do
      url "https://github.com/coignard/lottie/releases/download/0.2.14/lottie-universal-apple-darwin.tar.gz"
      sha256 "51403e16c005f839090fc999e38590e1ca1c4ac6b8802b3019a3d57d79e857dd"
    end
    on_intel do
      url "https://github.com/coignard/lottie/releases/download/0.2.14/lottie-universal-apple-darwin.tar.gz"
      sha256 "51403e16c005f839090fc999e38590e1ca1c4ac6b8802b3019a3d57d79e857dd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/lottie/releases/download/0.2.14/lottie-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "45d1d77ce660f04173ea1dfc1e4fd6d4b22f4c882a559658824d65c0c6f18b65"
    end
    on_intel do
      url "https://github.com/coignard/lottie/releases/download/0.2.14/lottie-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ccbd56bc8003b2e60f04933da09a2478821eef0999697bc0d3a91f13bb670118"
    end
  end

  def install
    bin.install "lottie"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lottie --version")
  end
end
