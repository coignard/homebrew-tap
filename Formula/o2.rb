class o2 < Formula
  desc "Rust port of the ORCΛ esoteric programming language and terminal livecoding environment"
  homepage "https://coignard.org/o2"

  on_macos do
    on_arm do
      url "https://github.com/coignard/o2/releases/download/0.3.3/o2-universal-apple-darwin.tar.gz"
      sha256 "30246fe3c29ab8c6c569b678776b16dbbab2f81324af0f4536a144435e2e526d"
    end
    on_intel do
      url "https://github.com/coignard/o2/releases/download/0.3.3/o2-universal-apple-darwin.tar.gz"
      sha256 "30246fe3c29ab8c6c569b678776b16dbbab2f81324af0f4536a144435e2e526d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/o2/releases/download/0.3.3/o2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "11d22ebb8bbd0567cbc01787cd24b4d4738204cc4a760b4b89aefb38ae5ab373"
    end
    on_intel do
      url "https://github.com/coignard/o2/releases/download/0.3.3/o2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cb3822277f92974d49875e93ea5e53ad4101af6dc4c02d392dcf4949276efe21"
    end
  end

  def install
    bin.install "o2"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/o2 --version")
  end
end
