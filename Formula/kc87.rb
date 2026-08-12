class kc87 < Formula
  desc "Robotron KC 87 emulator with MIDI support via PIO"
  homepage "https://coignard.org/kc87"

  on_macos do
    on_arm do
      url "https://github.com/coignard/kc87/releases/download/0.7.4/kc87-universal-apple-darwin.tar.gz"
      sha256 "3165809bbef5bce1436fccc77a249cbbb47d331e391954fb1edc4ec3be42de7c"
    end
    on_intel do
      url "https://github.com/coignard/kc87/releases/download/0.7.4/kc87-universal-apple-darwin.tar.gz"
      sha256 "3165809bbef5bce1436fccc77a249cbbb47d331e391954fb1edc4ec3be42de7c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/kc87/releases/download/0.7.4/kc87-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a0fe1e435d94c6792c74f7dc8484dc987dbd74c8c47787660d179f2117afab8e"
    end
    on_intel do
      url "https://github.com/coignard/kc87/releases/download/0.7.4/kc87-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "521d91c5c6ed9a79625a3e5bd33355a20618b6749387881e4ad2a286167a8ad7"
    end
  end

  def install
    bin.install "kc87"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kc87 --version")
  end
end
