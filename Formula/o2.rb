class o2 < Formula
  desc "Rust port of the ORCΛ esoteric programming language and terminal livecoding environment"
  homepage "https://coignard.org/o2"

  on_macos do
    on_arm do
      url "https://github.com/coignard/o2/releases/download/0.3.2/o2-universal-apple-darwin.tar.gz"
      sha256 "fed2e62eb5740d0578d2bb928c9473a3846b473f7bfc500c17bc2dbd638b2035"
    end
    on_intel do
      url "https://github.com/coignard/o2/releases/download/0.3.2/o2-universal-apple-darwin.tar.gz"
      sha256 "fed2e62eb5740d0578d2bb928c9473a3846b473f7bfc500c17bc2dbd638b2035"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/o2/releases/download/0.3.2/o2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "388afcb7e610072f5fce88aa467de4acfb5daeb9f6fc2546b89d67980cbd88cf"
    end
    on_intel do
      url "https://github.com/coignard/o2/releases/download/0.3.2/o2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0a615b515e3e20671c3d78267a9f5b32b0659a5606b7debac0a2cc96a6e8cf86"
    end
  end

  def install
    bin.install "o2"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/o2 --version")
  end
end
