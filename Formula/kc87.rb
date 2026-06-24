class kc87 < Formula
  desc "Robotron KC 87 emulator with MIDI support via PIO"
  homepage "https://coignard.org/kc87"

  on_macos do
    on_arm do
      url "https://github.com/coignard/kc87/releases/download/0.3.1/kc87-universal-apple-darwin.tar.gz"
      sha256 "d6af089fb390a348c63c032ae75877794528514c6cc7dece6f98896aa35f3ca3"
    end
    on_intel do
      url "https://github.com/coignard/kc87/releases/download/0.3.1/kc87-universal-apple-darwin.tar.gz"
      sha256 "d6af089fb390a348c63c032ae75877794528514c6cc7dece6f98896aa35f3ca3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/kc87/releases/download/0.3.1/kc87-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d57e1c3a886116b93f46dc20e0d39a702bfca48759a20b2d71bdab4e48c03fa0"
    end
    on_intel do
      url "https://github.com/coignard/kc87/releases/download/0.3.1/kc87-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bfe783e176e98da7f5fff97e1bf0dd8a0dfd06b5e4850526d3044433e4f660b8"
    end
  end

  def install
    bin.install "kc87"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kc87 --version")
  end
end
