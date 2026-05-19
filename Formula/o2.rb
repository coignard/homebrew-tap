class o2 < Formula
  desc "Rust port of the ORCΛ esoteric programming language and terminal livecoding environment"
  homepage "https://coignard.org/o2"

  on_macos do
    on_arm do
      url "https://github.com/coignard/o2/releases/download/0.2.2/o2-universal-apple-darwin.tar.gz"
      sha256 "223e2bc9078bb63db53e23cdab408c30fd5103bde9f23fa0d1661421450f3ec8"
    end
    on_intel do
      url "https://github.com/coignard/o2/releases/download/0.2.2/o2-universal-apple-darwin.tar.gz"
      sha256 "223e2bc9078bb63db53e23cdab408c30fd5103bde9f23fa0d1661421450f3ec8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/o2/releases/download/0.2.2/o2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "869ee3c1882838aad2919d3cff8611f9a5829c65b9ca268ee7b7a51451cd22be"
    end
    on_intel do
      url "https://github.com/coignard/o2/releases/download/0.2.2/o2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "86e5d1037ad60d8f5fddda3cb528d43481dd3ee741bc0d24d87a5f46449eebe4"
    end
  end

  def install
    bin.install "o2"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/o2 --version")
  end
end
