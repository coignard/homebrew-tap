class apogee < Formula
  desc "Apogee BK-01 emulator with MIDI support via PPI"
  homepage "https://coignard.org/apogee"

  on_macos do
    on_arm do
      url "https://github.com/coignard/apogee/releases/download/0.3.0/apogee-universal-apple-darwin.tar.gz"
      sha256 "03bb7e5a7e7cbb4f084c88a709cea859b09eb4b3b08d4af778ccd5c3312b5f57"
    end
    on_intel do
      url "https://github.com/coignard/apogee/releases/download/0.3.0/apogee-universal-apple-darwin.tar.gz"
      sha256 "03bb7e5a7e7cbb4f084c88a709cea859b09eb4b3b08d4af778ccd5c3312b5f57"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/apogee/releases/download/0.3.0/apogee-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3b4aec4778a66e3b34d38c972736f61f4a78807b38d0b013a895062f226282ab"
    end
    on_intel do
      url "https://github.com/coignard/apogee/releases/download/0.3.0/apogee-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e1587acc2b00ffcc8361758bdca2f20ed501030629d6d42feacaaa6d264b8bc9"
    end
  end

  def install
    bin.install "apogee"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apogee --version")
  end
end
