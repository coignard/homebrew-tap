class kc87 < Formula
  desc "Robotron KC 87 emulator with MIDI support via PIO"
  homepage "https://coignard.org/kc87"

  on_macos do
    on_arm do
      url "https://github.com/coignard/kc87/releases/download/0.4.1/kc87-universal-apple-darwin.tar.gz"
      sha256 "a2b312fb79501be16d03d00313b06bbb5a0a8015899f71f39243856d9e2f039d"
    end
    on_intel do
      url "https://github.com/coignard/kc87/releases/download/0.4.1/kc87-universal-apple-darwin.tar.gz"
      sha256 "a2b312fb79501be16d03d00313b06bbb5a0a8015899f71f39243856d9e2f039d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/kc87/releases/download/0.4.1/kc87-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "da366cc4c1ff8bcf1062eaac8faf08ca61932fe8fb04e208a33177df4200881b"
    end
    on_intel do
      url "https://github.com/coignard/kc87/releases/download/0.4.1/kc87-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5f06619cc06310939a98e5ba98edb0291f5f10748b2c6cb8cc2a7ae237981972"
    end
  end

  def install
    bin.install "kc87"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kc87 --version")
  end
end
