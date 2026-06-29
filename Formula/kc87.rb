class kc87 < Formula
  desc "Robotron KC 87 emulator with MIDI support via PIO"
  homepage "https://coignard.org/kc87"

  on_macos do
    on_arm do
      url "https://github.com/coignard/kc87/releases/download/0.6.0/kc87-universal-apple-darwin.tar.gz"
      sha256 "7f5a641b25e8282c668e31757c03897495a9feaad2486e39c79df0ea37ad55a7"
    end
    on_intel do
      url "https://github.com/coignard/kc87/releases/download/0.6.0/kc87-universal-apple-darwin.tar.gz"
      sha256 "7f5a641b25e8282c668e31757c03897495a9feaad2486e39c79df0ea37ad55a7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/kc87/releases/download/0.6.0/kc87-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "661d4cd23f70a20095f11fe5b1381787679940fb7baf3d1ce63bc7fa470bc576"
    end
    on_intel do
      url "https://github.com/coignard/kc87/releases/download/0.6.0/kc87-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fdb2d6c45d21c691a9367abc7712b5802cbe47f406b6209f94d1f51676ff4027"
    end
  end

  def install
    bin.install "kc87"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kc87 --version")
  end
end
