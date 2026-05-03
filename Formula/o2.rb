class o2 < Formula
  desc "Rust port of the ORCΛ esoteric programming language and terminal livecoding environment"
  homepage "https://coignard.org/o2"

  on_macos do
    on_arm do
      url "https://github.com/coignard/o2/releases/download/0.1.2/o2-universal-apple-darwin.tar.gz"
      sha256 "7499648b17a22d2fcc8849f9418b070c6d90b3d713e33fca1524dec55410310a"
    end
    on_intel do
      url "https://github.com/coignard/o2/releases/download/0.1.2/o2-universal-apple-darwin.tar.gz"
      sha256 "7499648b17a22d2fcc8849f9418b070c6d90b3d713e33fca1524dec55410310a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/o2/releases/download/0.1.2/o2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a12ddbf79748c7bb9f169ae78b04c32bb243caa8e9d93deac4221528935729ee"
    end
    on_intel do
      url "https://github.com/coignard/o2/releases/download/0.1.2/o2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "93d3f1b4d8410788e9b3627e26ba0b04b7450e150753dcdeffa414c18d96e849"
    end
  end

  def install
    bin.install "o2"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/o2 --version")
  end
end
