class o2 < Formula
  desc "Rust port of the ORCΛ esoteric programming language and terminal livecoding environment"
  homepage "https://coignard.org/o2"

  on_macos do
    on_arm do
      url "https://github.com/coignard/o2/releases/download/0.2.1/o2-universal-apple-darwin.tar.gz"
      sha256 "98941ab0275de36276cca2ff463d2ce115245f7e317554e5d1bbedb055209ea7"
    end
    on_intel do
      url "https://github.com/coignard/o2/releases/download/0.2.1/o2-universal-apple-darwin.tar.gz"
      sha256 "98941ab0275de36276cca2ff463d2ce115245f7e317554e5d1bbedb055209ea7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/o2/releases/download/0.2.1/o2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6810edc997ab2bfe42a1af835e5cecf97afd96e11f393888da4f6bfa4afb329f"
    end
    on_intel do
      url "https://github.com/coignard/o2/releases/download/0.2.1/o2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "28ac2ff8ae1a1fb188bd3eddc8857f3570f34f4ad00443becaccded013ba64c7"
    end
  end

  def install
    bin.install "o2"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/o2 --version")
  end
end
