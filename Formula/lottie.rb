class Lottie < Formula
  desc "Simple yet powerful Fountain screenplay editor for the terminal"
  homepage "https://lottie.rs/"
  version "0.2.12"

  on_macos do
    if Hardware::CPU.arm? || Hardware::CPU.intel?
      url "https://github.com/coignard/lottie/releases/download/#{version}/lottie-universal-apple-darwin.tar.gz"
      sha256 "4936bc1b2fb04b1dc28dc14b13bd04465fe533a83d6a962e31bf90e11bd84192"
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
