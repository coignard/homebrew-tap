class kc87 < Formula
  desc "Robotron KC 87 emulator with MIDI support via PIO"
  homepage "https://coignard.org/kc87"

  on_macos do
    on_arm do
      url "https://github.com/coignard/kc87/releases/download/0.4.0/kc87-universal-apple-darwin.tar.gz"
      sha256 "c35aac712ea338a6a0fc9e42fc077eceb90b1b00e2f3ed83aa9324a60f87aab6"
    end
    on_intel do
      url "https://github.com/coignard/kc87/releases/download/0.4.0/kc87-universal-apple-darwin.tar.gz"
      sha256 "c35aac712ea338a6a0fc9e42fc077eceb90b1b00e2f3ed83aa9324a60f87aab6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/kc87/releases/download/0.4.0/kc87-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dddad04927231be1fa1f98efcd4542e40a14c87ac1b740cb03e2937bfbe4f973"
    end
    on_intel do
      url "https://github.com/coignard/kc87/releases/download/0.4.0/kc87-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "564e47eb8226851a5caaf0b005695c1b71d656a59f444bf7de902284742bbdfd"
    end
  end

  def install
    bin.install "kc87"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kc87 --version")
  end
end
