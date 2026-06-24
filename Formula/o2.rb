class o2 < Formula
  desc "Rust port of the ORCΛ esoteric programming language and terminal livecoding environment"
  homepage "https://coignard.org/o2"

  on_macos do
    on_arm do
      url "https://github.com/coignard/o2/releases/download/0.3.2/o2-universal-apple-darwin.tar.gz"
      sha256 "e30837275551df98126c10943201c9090399dc39fab0bf92ab735c15afaa1d76"
    end
    on_intel do
      url "https://github.com/coignard/o2/releases/download/0.3.2/o2-universal-apple-darwin.tar.gz"
      sha256 "e30837275551df98126c10943201c9090399dc39fab0bf92ab735c15afaa1d76"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/o2/releases/download/0.3.2/o2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "16781b792b02d947b6dc271d476595625c7ed4bf0697653864c08fb3aa654c3e"
    end
    on_intel do
      url "https://github.com/coignard/o2/releases/download/0.3.2/o2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "12dde002500c1914493ae20e3a95c4d7305e64136f9f411abd3f7414593a8637"
    end
  end

  def install
    bin.install "o2"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/o2 --version")
  end
end
