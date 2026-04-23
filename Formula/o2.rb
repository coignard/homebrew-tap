class o2 < Formula
  desc "Rust implementation of the Orca esoteric language and TUI livecoding environment"
  homepage "https://lottie.rs/"

  on_macos do
    on_arm do
      url "https://github.com/coignard/o2/releases/download/0.1.0/o2-universal-apple-darwin.tar.gz"
      sha256 "bbafac1833d8b961b36c4cffbdc9bc70744aa4c2bf3d68e472c3e8b76e8100da"
    end
    on_intel do
      url "https://github.com/coignard/o2/releases/download/0.1.0/o2-universal-apple-darwin.tar.gz"
      sha256 "bbafac1833d8b961b36c4cffbdc9bc70744aa4c2bf3d68e472c3e8b76e8100da"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/o2/releases/download/0.1.0/o2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7be45f7089b6bd7cd4ba3dc8a97eb0f9e59713fa7d869d3ff09b090fae349c62"
    end
    on_intel do
      url "https://github.com/coignard/o2/releases/download/0.1.0/o2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3b23b2e27b3048fac2fd267025f1fb4f8bbea092de33979d7565ddf189fc61fc"
    end
  end

  def install
    bin.install "o2"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/o2 --version")
  end
end
