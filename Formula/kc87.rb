class kc87 < Formula
  desc "Robotron KC 87 emulator with MIDI support via PIO"
  homepage "https://coignard.org/kc87"

  on_macos do
    on_arm do
      url "https://github.com/coignard/kc87/releases/download/0.5.1/kc87-universal-apple-darwin.tar.gz"
      sha256 "3153d4da7da1707e071a09e700ff893df9cb0684c24a0f82b5e5572dad972b86"
    end
    on_intel do
      url "https://github.com/coignard/kc87/releases/download/0.5.1/kc87-universal-apple-darwin.tar.gz"
      sha256 "3153d4da7da1707e071a09e700ff893df9cb0684c24a0f82b5e5572dad972b86"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/kc87/releases/download/0.5.1/kc87-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ad8d6c32effc3925034f960f7e7aa2f58ffe024c4a383da7634cd62786348097"
    end
    on_intel do
      url "https://github.com/coignard/kc87/releases/download/0.5.1/kc87-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e391d3a8fe77423c511031b2e39e337f5ec565c5427d531bfba3eb9535093543"
    end
  end

  def install
    bin.install "kc87"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kc87 --version")
  end
end
