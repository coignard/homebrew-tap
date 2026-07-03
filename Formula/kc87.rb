class kc87 < Formula
  desc "Robotron KC 87 emulator with MIDI support via PIO"
  homepage "https://coignard.org/kc87"

  on_macos do
    on_arm do
      url "https://github.com/coignard/kc87/releases/download/0.7.0/kc87-universal-apple-darwin.tar.gz"
      sha256 "97b49fb5b1aedd02da0060f74b301df2d374515b9936c868caaa4516b3de2ddc"
    end
    on_intel do
      url "https://github.com/coignard/kc87/releases/download/0.7.0/kc87-universal-apple-darwin.tar.gz"
      sha256 "97b49fb5b1aedd02da0060f74b301df2d374515b9936c868caaa4516b3de2ddc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/kc87/releases/download/0.7.0/kc87-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7e3c91fa386fda6a69bb8b4c75579b24ab5992a2ddef21d0207e505c7b50164d"
    end
    on_intel do
      url "https://github.com/coignard/kc87/releases/download/0.7.0/kc87-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "022cdbc88cd9bd499bf53fff8df5de063462a1fd2e79fc4751f84d4f4214f2b3"
    end
  end

  def install
    bin.install "kc87"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kc87 --version")
  end
end
