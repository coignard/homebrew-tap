class o2 < Formula
  desc "Rust port of the ORCΛ esoteric programming language and terminal livecoding environment"
  homepage "https://coignard.org/o2"

  on_macos do
    on_arm do
      url "https://github.com/coignard/o2/releases/download/0.2.6/o2-universal-apple-darwin.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
    on_intel do
      url "https://github.com/coignard/o2/releases/download/0.2.6/o2-universal-apple-darwin.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/o2/releases/download/0.2.6/o2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2c4df1789ba1cf14b62323072f3bc120b947967ba9515897a9dae83f72933f5b"
    end
    on_intel do
      url "https://github.com/coignard/o2/releases/download/0.2.6/o2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5aa14bd6ea3889d3ec5d518c6e7b2a066003e8dc8308d63c3b3e2d25122349f4"
    end
  end

  def install
    bin.install "o2"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/o2 --version")
  end
end
