class o2 < Formula
  desc "Rust port of the ORCΛ esoteric programming language and terminal livecoding environment"
  homepage "https://coignard.org/o2"

  on_macos do
    on_arm do
      url "https://github.com/coignard/o2/releases/download/0.2.5/o2-universal-apple-darwin.tar.gz"
      sha256 "b239aa1fee0035a44f7c1f2df20bdb0c5ecd56b140e8c30cd9cbba99a2c60880"
    end
    on_intel do
      url "https://github.com/coignard/o2/releases/download/0.2.5/o2-universal-apple-darwin.tar.gz"
      sha256 "b239aa1fee0035a44f7c1f2df20bdb0c5ecd56b140e8c30cd9cbba99a2c60880"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/o2/releases/download/0.2.5/o2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2b88da810bef1790d3e3e8a317a96d5f85bf99111907a78bf6abc99181244385"
    end
    on_intel do
      url "https://github.com/coignard/o2/releases/download/0.2.5/o2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1540b16e166d2eeebbac0fd5db5e632e666f9d860030a00198f60bdbd15c042e"
    end
  end

  def install
    bin.install "o2"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/o2 --version")
  end
end
