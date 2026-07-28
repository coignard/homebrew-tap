class kc87 < Formula
  desc "Robotron KC 87 emulator with MIDI support via PIO"
  homepage "https://coignard.org/kc87"

  on_macos do
    on_arm do
      url "https://github.com/coignard/kc87/releases/download/0.7.3/kc87-universal-apple-darwin.tar.gz"
      sha256 "55deff6360063da2c4b48fbbc2eda113544abda1d70eb5fdc834b0bf8418fbf6"
    end
    on_intel do
      url "https://github.com/coignard/kc87/releases/download/0.7.3/kc87-universal-apple-darwin.tar.gz"
      sha256 "55deff6360063da2c4b48fbbc2eda113544abda1d70eb5fdc834b0bf8418fbf6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/kc87/releases/download/0.7.3/kc87-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "16243f74cb1ff6f307794cee8da144687058a533c57098675c7b42aa1d9c14f6"
    end
    on_intel do
      url "https://github.com/coignard/kc87/releases/download/0.7.3/kc87-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "37456f4c133769e1242fd5eeecee64f8d4a15f1817d2518e38833179c82239be"
    end
  end

  def install
    bin.install "kc87"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kc87 --version")
  end
end
