class o2 < Formula
  desc "Rust port of the ORCΛ esoteric programming language and terminal livecoding environment"
  homepage "https://coignard.org/o2"

  on_macos do
    on_arm do
      url "https://github.com/coignard/o2/releases/download/0.3.0/o2-universal-apple-darwin.tar.gz"
      sha256 "c4f32b363eed73627005bbc9cad8ab96943caa9ae16aec5d72b08181bde55826"
    end
    on_intel do
      url "https://github.com/coignard/o2/releases/download/0.3.0/o2-universal-apple-darwin.tar.gz"
      sha256 "c4f32b363eed73627005bbc9cad8ab96943caa9ae16aec5d72b08181bde55826"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/o2/releases/download/0.3.0/o2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "79692de3f04bc0da8619ba080ac60d8e6a5032773625d9369f48a57e005b437f"
    end
    on_intel do
      url "https://github.com/coignard/o2/releases/download/0.3.0/o2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1793169a9c4740e7a4ebd4617a7ada547069815dd096601cb71367d098ce8119"
    end
  end

  def install
    bin.install "o2"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/o2 --version")
  end
end
