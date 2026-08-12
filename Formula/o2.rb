class o2 < Formula
  desc "Rust port of the ORCΛ esoteric programming language and terminal livecoding environment"
  homepage "https://coignard.org/o2"

  on_macos do
    on_arm do
      url "https://github.com/coignard/o2/releases/download/0.3.6/o2-universal-apple-darwin.tar.gz"
      sha256 "2e87ec3c5c34f8f64a2f7922ae2879d5f54329dd49f12bb18aeeccd889b4ae66"
    end
    on_intel do
      url "https://github.com/coignard/o2/releases/download/0.3.6/o2-universal-apple-darwin.tar.gz"
      sha256 "2e87ec3c5c34f8f64a2f7922ae2879d5f54329dd49f12bb18aeeccd889b4ae66"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/o2/releases/download/0.3.6/o2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ff4c6bb2241cbdddafdb64bd901108a52adfe14ab2fd25e2bacb853d9ad2dbd8"
    end
    on_intel do
      url "https://github.com/coignard/o2/releases/download/0.3.6/o2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b9a8d07081ddec49b0752a3abd292a7982c8b70c8893904825411304c30c04cd"
    end
  end

  def install
    bin.install "o2"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/o2 --version")
  end
end
