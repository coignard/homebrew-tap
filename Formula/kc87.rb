class kc87 < Formula
  desc "Robotron KC 87 emulator with MIDI support via PIO"
  homepage "https://coignard.org/kc87"

  on_macos do
    on_arm do
      url "https://github.com/coignard/kc87/releases/download/0.7.5/kc87-universal-apple-darwin.tar.gz"
      sha256 "8b64f5861ed9165c5d2e827843e4f93fc11f4daa205f4abc24d12ecacd3ff32a"
    end
    on_intel do
      url "https://github.com/coignard/kc87/releases/download/0.7.5/kc87-universal-apple-darwin.tar.gz"
      sha256 "8b64f5861ed9165c5d2e827843e4f93fc11f4daa205f4abc24d12ecacd3ff32a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/kc87/releases/download/0.7.5/kc87-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "913aff783132b65cc88e0068809d45f839bd76cbef88f0fcf7999ceafc2dc6c9"
    end
    on_intel do
      url "https://github.com/coignard/kc87/releases/download/0.7.5/kc87-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f3dadd8d286ae13b60d1f41e531fd20f2189c37b83bd140fb90abc8eaff3adbd"
    end
  end

  def install
    bin.install "kc87"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kc87 --version")
  end
end
