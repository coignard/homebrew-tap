class kc87 < Formula
  desc "Robotron KC 87 emulator with MIDI support via PIO"
  homepage "https://coignard.org/kc87"

  on_macos do
    on_arm do
      url "https://github.com/coignard/kc87/releases/download/0.7.7/kc87-universal-apple-darwin.tar.gz"
      sha256 "3f0d1356f399014f4d14b3a667fa8e7d030dc2b99965c6e2deddee4061e56b95"
    end
    on_intel do
      url "https://github.com/coignard/kc87/releases/download/0.7.7/kc87-universal-apple-darwin.tar.gz"
      sha256 "3f0d1356f399014f4d14b3a667fa8e7d030dc2b99965c6e2deddee4061e56b95"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/kc87/releases/download/0.7.7/kc87-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ef31e89e1201991a1be1b1ad1395e76fad6569b4b4070ed6122154202090e03f"
    end
    on_intel do
      url "https://github.com/coignard/kc87/releases/download/0.7.7/kc87-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b1b77e97359ac148733eb29f79bf995e2dc617a3a58ecde60e5e95110bcf36e4"
    end
  end

  def install
    bin.install "kc87"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kc87 --version")
  end
end
