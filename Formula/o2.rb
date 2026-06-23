class o2 < Formula
  desc "Rust port of the ORCΛ esoteric programming language and terminal livecoding environment"
  homepage "https://coignard.org/o2"

  on_macos do
    on_arm do
      url "https://github.com/coignard/o2/releases/download/0.3.1/o2-universal-apple-darwin.tar.gz"
      sha256 "7939612a82b52a2fc7b1c6c4103de766d85d6d746c3c4edc03c3a7359cd69a7f"
    end
    on_intel do
      url "https://github.com/coignard/o2/releases/download/0.3.1/o2-universal-apple-darwin.tar.gz"
      sha256 "7939612a82b52a2fc7b1c6c4103de766d85d6d746c3c4edc03c3a7359cd69a7f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/o2/releases/download/0.3.1/o2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f1170cd70da42e77ae12aca9b1658a52ad00ab2bf3b94305af75944ad6e20348"
    end
    on_intel do
      url "https://github.com/coignard/o2/releases/download/0.3.1/o2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6f2eeaafc88f7e31d51bd7ffd4520df30f4ed13388177c83c94a906aa48860e5"
    end
  end

  def install
    bin.install "o2"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/o2 --version")
  end
end
