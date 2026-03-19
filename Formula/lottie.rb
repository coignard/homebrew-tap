class Lottie < Formula
  desc "Simple yet powerful Fountain screenplay editor for the terminal"
  homepage "https://lottie.rs/"
  version "0.2.12"

  on_macos do
    if Hardware::CPU.arm? || Hardware::CPU.intel?
      url "https://github.com/coignard/lottie/releases/download/0.2.12/lottie-universal-apple-darwin.tar.gz"
      sha256 "9dde8759eda9f61e27914e683d933459a2700a349e9d5e47e0592319299f665e"
    end
  end

  def install
    bin.install "lottie"
  end

  def caveats
    <<~EOS
      Configuration file will be created at first launch:
        ~/.config/lottie/lottie.conf
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lottie --version")
  end
end
