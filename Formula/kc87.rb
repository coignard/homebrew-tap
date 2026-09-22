class kc87 < Formula
  desc "Robotron KC 87 emulator with MIDI support via PIO"
  homepage "https://coignard.org/kc87"

  on_macos do
    on_arm do
      url "https://github.com/coignard/kc87/releases/download/0.7.6/kc87-universal-apple-darwin.tar.gz"
      sha256 "c3e0d63657ad6139d91d527e1ba77fae74af29ee7bd630840f55b24ee7cc1b62"
    end
    on_intel do
      url "https://github.com/coignard/kc87/releases/download/0.7.6/kc87-universal-apple-darwin.tar.gz"
      sha256 "c3e0d63657ad6139d91d527e1ba77fae74af29ee7bd630840f55b24ee7cc1b62"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/kc87/releases/download/0.7.6/kc87-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7ac4de40cb2673238414104be45791a5a7f24a677bbcb8c94f8c7ae7a5bfd5bf"
    end
    on_intel do
      url "https://github.com/coignard/kc87/releases/download/0.7.6/kc87-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fcde2e5123ce7e2368d368fb6e75f682f25105cac1244424b533e3f55de95426"
    end
  end

  def install
    bin.install "kc87"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kc87 --version")
  end
end
