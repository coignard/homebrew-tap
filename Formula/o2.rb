class o2 < Formula
  desc "Rust port of the ORCΛ esoteric programming language and terminal livecoding environment"
  homepage "https://coignard.org/o2"

  on_macos do
    on_arm do
      url "https://github.com/coignard/o2/releases/download/0.3.5/o2-universal-apple-darwin.tar.gz"
      sha256 "32ff69c650172fc5ce8b668f88f751753e92d90181042f1d90a851d41fa00119"
    end
    on_intel do
      url "https://github.com/coignard/o2/releases/download/0.3.5/o2-universal-apple-darwin.tar.gz"
      sha256 "32ff69c650172fc5ce8b668f88f751753e92d90181042f1d90a851d41fa00119"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/o2/releases/download/0.3.5/o2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "19e919179a8ef8a5685266c687840baef09470131788a2731c5d02a931a6e77c"
    end
    on_intel do
      url "https://github.com/coignard/o2/releases/download/0.3.5/o2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d97d6005834ef3142beb879074456fb2e95175bbae7cfd0d8bd534965ef5f1a8"
    end
  end

  def install
    bin.install "o2"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/o2 --version")
  end
end
