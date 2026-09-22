class o2 < Formula
  desc "Rust port of the ORCΛ esoteric programming language and terminal livecoding environment"
  homepage "https://coignard.org/o2"

  on_macos do
    on_arm do
      url "https://github.com/coignard/o2/releases/download/0.3.7/o2-universal-apple-darwin.tar.gz"
      sha256 "5c36f2a80a0448548944d8a40cf7b512c8fe51c11942d9206abad0140cda6cea"
    end
    on_intel do
      url "https://github.com/coignard/o2/releases/download/0.3.7/o2-universal-apple-darwin.tar.gz"
      sha256 "5c36f2a80a0448548944d8a40cf7b512c8fe51c11942d9206abad0140cda6cea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/o2/releases/download/0.3.7/o2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "659cee65f2a3b9b13847a28da03cecca000158105d7ed860522916b46afa9841"
    end
    on_intel do
      url "https://github.com/coignard/o2/releases/download/0.3.7/o2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "88877c2e963b5492bd46aa1894fb986cec26d0cd7daced3d81c3692caeae3ad3"
    end
  end

  def install
    bin.install "o2"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/o2 --version")
  end
end
