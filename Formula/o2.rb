class o2 < Formula
  desc "Rust port of the ORCΛ esoteric programming language and terminal livecoding environment"
  homepage "https://coignard.org/o2"

  on_macos do
    on_arm do
      url "https://github.com/coignard/o2/releases/download/0.3.4/o2-universal-apple-darwin.tar.gz"
      sha256 "c7c476f28ec098a64bb891a56c9bdbf72f7c8e869b5b1041b1238bd043e6dc93"
    end
    on_intel do
      url "https://github.com/coignard/o2/releases/download/0.3.4/o2-universal-apple-darwin.tar.gz"
      sha256 "c7c476f28ec098a64bb891a56c9bdbf72f7c8e869b5b1041b1238bd043e6dc93"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/o2/releases/download/0.3.4/o2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3ef84e1935257ec672a3a16cdefe9e3b1588e3feed687798e050e3e6f2078ab9"
    end
    on_intel do
      url "https://github.com/coignard/o2/releases/download/0.3.4/o2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1566ff99d8dcd00335fb536a877800932c77a1c8ecbd8eb4ea912697c9284568"
    end
  end

  def install
    bin.install "o2"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/o2 --version")
  end
end
