class kc87 < Formula
  desc "Robotron KC 87 emulator with MIDI support via PIO"
  homepage "https://coignard.org/kc87"

  on_macos do
    on_arm do
      url "https://github.com/coignard/kc87/releases/download/0.6.1/kc87-universal-apple-darwin.tar.gz"
      sha256 "c08d94b6901665dc981e03e347cca3035bca43b0d25142f80f1fc71c76ced268"
    end
    on_intel do
      url "https://github.com/coignard/kc87/releases/download/0.6.1/kc87-universal-apple-darwin.tar.gz"
      sha256 "c08d94b6901665dc981e03e347cca3035bca43b0d25142f80f1fc71c76ced268"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/kc87/releases/download/0.6.1/kc87-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3aa1ba35d926bec98fec7bc373c6ed78a8aff3dd00563f98d0981cf2e42b1ff5"
    end
    on_intel do
      url "https://github.com/coignard/kc87/releases/download/0.6.1/kc87-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "87fe5de7942d1337d7f6d299cfd7e52a235d37fb420b59c272b0cd75066c95ee"
    end
  end

  def install
    bin.install "kc87"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kc87 --version")
  end
end
