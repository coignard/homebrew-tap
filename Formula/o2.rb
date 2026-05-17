class o2 < Formula
  desc "Rust port of the ORCΛ esoteric programming language and terminal livecoding environment"
  homepage "https://coignard.org/o2"

  on_macos do
    on_arm do
      url "https://github.com/coignard/o2/releases/download/0.2.0/o2-universal-apple-darwin.tar.gz"
      sha256 "e0c86a1af6a713690f17a82a4e6202c72a47af0a76bae9f61ed7d66d09081a63"
    end
    on_intel do
      url "https://github.com/coignard/o2/releases/download/0.2.0/o2-universal-apple-darwin.tar.gz"
      sha256 "e0c86a1af6a713690f17a82a4e6202c72a47af0a76bae9f61ed7d66d09081a63"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/o2/releases/download/0.2.0/o2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "743abcfe3f304e3e226460e2b5dfcfa25f40351d45149142276057107501ee81"
    end
    on_intel do
      url "https://github.com/coignard/o2/releases/download/0.2.0/o2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e880c63771a289b66d69435c47860c302caff8c60ded0bbbf24156d432fc23c6"
    end
  end

  def install
    bin.install "o2"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/o2 --version")
  end
end
