class kc87 < Formula
  desc "Robotron KC 87 emulator with MIDI support via PIO"
  homepage "https://coignard.org/kc87"

  on_macos do
    on_arm do
      url "https://github.com/coignard/kc87/releases/download/0.3.2/kc87-universal-apple-darwin.tar.gz"
      sha256 "af77747c0489a9081bc58d5199405ef8c1552627f2eb81adbebbf3260d9e452a"
    end
    on_intel do
      url "https://github.com/coignard/kc87/releases/download/0.3.2/kc87-universal-apple-darwin.tar.gz"
      sha256 "af77747c0489a9081bc58d5199405ef8c1552627f2eb81adbebbf3260d9e452a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/kc87/releases/download/0.3.2/kc87-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6be8572cd7c267e655bd372ab73093b1eda0be3281783b1088355d05a25f76d5"
    end
    on_intel do
      url "https://github.com/coignard/kc87/releases/download/0.3.2/kc87-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8c67edbee7750c9ccde56da4b6ad5072ce1e155cb0d6e116ce5f6450286e74d8"
    end
  end

  def install
    bin.install "kc87"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kc87 --version")
  end
end
