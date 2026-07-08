class kc87 < Formula
  desc "Robotron KC 87 emulator with MIDI support via PIO"
  homepage "https://coignard.org/kc87"

  on_macos do
    on_arm do
      url "https://github.com/coignard/kc87/releases/download/0.7.1/kc87-universal-apple-darwin.tar.gz"
      sha256 "68669c3572052b17e81948b8cee690553a541191afc1c2f7ac1c47de5e10d7d9"
    end
    on_intel do
      url "https://github.com/coignard/kc87/releases/download/0.7.1/kc87-universal-apple-darwin.tar.gz"
      sha256 "68669c3572052b17e81948b8cee690553a541191afc1c2f7ac1c47de5e10d7d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/kc87/releases/download/0.7.1/kc87-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1453ba8994035a44c7f2dd826ff6eb161085a0b4a646f5b6adb18e8f17cbb1c3"
    end
    on_intel do
      url "https://github.com/coignard/kc87/releases/download/0.7.1/kc87-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "26399a29e27688592434cd161dd848c95363458b82bd9dd7bb48333c0564623d"
    end
  end

  def install
    bin.install "kc87"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kc87 --version")
  end
end
