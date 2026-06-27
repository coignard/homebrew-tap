class kc87 < Formula
  desc "Robotron KC 87 emulator with MIDI support via PIO"
  homepage "https://coignard.org/kc87"

  on_macos do
    on_arm do
      url "https://github.com/coignard/kc87/releases/download/0.5.0/kc87-universal-apple-darwin.tar.gz"
      sha256 "ac21ef1097d12d0f7c46eb730d68a7f453e01393c38168fc1b0483668ea4dfcc"
    end
    on_intel do
      url "https://github.com/coignard/kc87/releases/download/0.5.0/kc87-universal-apple-darwin.tar.gz"
      sha256 "ac21ef1097d12d0f7c46eb730d68a7f453e01393c38168fc1b0483668ea4dfcc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/kc87/releases/download/0.5.0/kc87-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4c64ebb1d3cba0cd79792f8c2ce5a902d5df98d6e38d32dcc06fbb4c3936c1d1"
    end
    on_intel do
      url "https://github.com/coignard/kc87/releases/download/0.5.0/kc87-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c59e7cd61b062c3a918eeb94a0e5a7a15ebbe536ca45fde57e833c3beda35da7"
    end
  end

  def install
    bin.install "kc87"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kc87 --version")
  end
end
