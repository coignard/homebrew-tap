class o2 < Formula
  desc "Rust port of the ORCΛ esoteric programming language and terminal livecoding environment"
  homepage "https://coignard.org/o2"

  on_macos do
    on_arm do
      url "https://github.com/coignard/o2/releases/download/0.3.8/o2-universal-apple-darwin.tar.gz"
      sha256 "cd35b6a5933efcb751f6c946870305127490448bfadd3c3c9e117c6e08020c3d"
    end
    on_intel do
      url "https://github.com/coignard/o2/releases/download/0.3.8/o2-universal-apple-darwin.tar.gz"
      sha256 "cd35b6a5933efcb751f6c946870305127490448bfadd3c3c9e117c6e08020c3d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/o2/releases/download/0.3.8/o2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4b008cfd5178d304c19974c00093e059b281c499b1d9e2c273ce95ce579718a1"
    end
    on_intel do
      url "https://github.com/coignard/o2/releases/download/0.3.8/o2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b9820c978e2f65e433e2866ec781994068ff54d26a28e9d2a30ee66c286eade5"
    end
  end

  def install
    bin.install "o2"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/o2 --version")
  end
end
