class Lottie < Formula
  desc "A simple yet powerful Fountain screenplay editor"
  homepage "https://lottie.rs/"

  on_macos do
    on_arm do
      url "https://github.com/coignard/lottie/releases/download/0.2.15/lottie-universal-apple-darwin.tar.gz"
      sha256 "853705111823bcdef58df91e0def7511fc44dad330976f04746f3730314c7986"
    end
    on_intel do
      url "https://github.com/coignard/lottie/releases/download/0.2.15/lottie-universal-apple-darwin.tar.gz"
      sha256 "853705111823bcdef58df91e0def7511fc44dad330976f04746f3730314c7986"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/lottie/releases/download/0.2.15/lottie-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5d89da63c467d3e57620e7c46bddafc0a465175566441af2a639587a91b3ee13"
    end
    on_intel do
      url "https://github.com/coignard/lottie/releases/download/0.2.15/lottie-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4d64858e6391ef4c321d1722f4cd60d447b7c505ad6c2fd169467501e27d3c2c"
    end
  end

  def install
    bin.install "lottie"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lottie --version")
  end
end
