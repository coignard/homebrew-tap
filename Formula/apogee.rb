class apogee < Formula
  desc "Apogee BK-01 emulator using the iz80 library"
  homepage "https://coignard.org/apogee"

  on_macos do
    on_arm do
      url "https://github.com/coignard/apogee/releases/download/0.2.1/apogee-universal-apple-darwin.tar.gz"
      sha256 "83cca35170acc094ff168f35035565b7334b049145e0e8fa73aa9611b252c95f"
    end
    on_intel do
      url "https://github.com/coignard/apogee/releases/download/0.2.1/apogee-universal-apple-darwin.tar.gz"
      sha256 "83cca35170acc094ff168f35035565b7334b049145e0e8fa73aa9611b252c95f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/apogee/releases/download/0.2.1/apogee-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c83c01faf36332a769559e4b286ae540c7b545d352484ceef04255f3c9557604"
    end
    on_intel do
      url "https://github.com/coignard/apogee/releases/download/0.2.1/apogee-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1fcc7afa244c21b1108e7c0d03a3b7ff397402dd48c17407e64c461c2bce3626"
    end
  end

  def install
    bin.install "apogee"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apogee --version")
  end
end
