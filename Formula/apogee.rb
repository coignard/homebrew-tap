class apogee < Formula
  desc "Apogee BK-01 emulator with MIDI support via PPI"
  homepage "https://coignard.org/apogee"

  on_macos do
    on_arm do
      url "https://github.com/coignard/apogee/releases/download/0.5.0/apogee-universal-apple-darwin.tar.gz"
      sha256 "049178bb7e4b88a0343d36b081dd24dcfd31cf39a3c3aa4b8ac0a0a29245bae1"
    end
    on_intel do
      url "https://github.com/coignard/apogee/releases/download/0.5.0/apogee-universal-apple-darwin.tar.gz"
      sha256 "049178bb7e4b88a0343d36b081dd24dcfd31cf39a3c3aa4b8ac0a0a29245bae1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/apogee/releases/download/0.5.0/apogee-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "85ba11836a4556d153f38d24b0b52ee72b43959ca8523e81861d9b912e26b3fe"
    end
    on_intel do
      url "https://github.com/coignard/apogee/releases/download/0.5.0/apogee-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "44cf6585ac91d78e212d9485af30de1e20f3c03be2290c1448541b6bfd0c3176"
    end
  end

  def install
    bin.install "apogee"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apogee --version")
  end
end
