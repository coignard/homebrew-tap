class apogee < Formula
  desc "Apogee BK-01 emulator with MIDI support via PPI"
  homepage "https://coignard.org/apogee"

  on_macos do
    on_arm do
      url "https://github.com/coignard/apogee/releases/download/0.3.2/apogee-universal-apple-darwin.tar.gz"
      sha256 "279afdf0ea5e2cb886a958b81e147120a95b6eb71c2520d87effeeba6edaf433"
    end
    on_intel do
      url "https://github.com/coignard/apogee/releases/download/0.3.2/apogee-universal-apple-darwin.tar.gz"
      sha256 "279afdf0ea5e2cb886a958b81e147120a95b6eb71c2520d87effeeba6edaf433"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/apogee/releases/download/0.3.2/apogee-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "af562877f780a2c143b8b72c7a8840eb4af614139e8d701d9ae6f156e1dbc42d"
    end
    on_intel do
      url "https://github.com/coignard/apogee/releases/download/0.3.2/apogee-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2fb6ae24ee452b3ecc6310cb477b5ddc1cf860b53d9d2d362ff8cf7c9d4cfaf3"
    end
  end

  def install
    bin.install "apogee"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apogee --version")
  end
end
