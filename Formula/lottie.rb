class Lottie < Formula
  desc "Simple yet powerful Fountain screenplay editor"
  homepage "https://lottie.rs/"

  on_macos do
    url "https://github.com/coignard/lottie/releases/download/0.2.12/lottie-universal-apple-darwin.tar.gz"
    sha256 "9dde8759eda9f61e27914e683d933459a2700a349e9d5e47e0592319299f665e"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/coignard/lottie/releases/download/0.2.12/lottie-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c2899e60b748d97f69149bc5cf122449e2be637ed77fc06c89da7deafbb9dd05"
    else
      url "https://github.com/coignard/lottie/releases/download/0.2.12/lottie-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9b767dea9183a21c17cd2030b5b85b3d60cdf9e3ebff7b37ea3ac6a4556f6b87"
    end
  end

  def install
    bin.install "lottie"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lottie --version")
  end
end
