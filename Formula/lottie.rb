class Lottie < Formula
  desc "A simple yet powerful Fountain screenplay editor"
  homepage "https://lottie.rs/"
  on_macos do
    if Hardware::CPU.arm? || Hardware::CPU.intel?
      url "https://github.com/coignard/lottie/releases/download/0.2.12/lottie-universal-apple-darwin.tar.gz"
      sha256 "9dde8759eda9f61e27914e683d933459a2700a349e9d5e47e0592319299f665e"
    end
  end
  def install
    bin.install "lottie"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/lottie --version")
  end
end
