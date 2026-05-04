class apogee < Formula
  desc "Apogee BK-01 emulator using the iz80 library"
  homepage "https://coignard.org/apogee"

  on_macos do
    on_arm do
      url "https://github.com/coignard/apogee/releases/download/0.2.3/apogee-universal-apple-darwin.tar.gz"
      sha256 "7faeecfb76ed4dee76908d218f7dc7360fa6e8fdcafb071d97e4520c3bbaa34e"
    end
    on_intel do
      url "https://github.com/coignard/apogee/releases/download/0.2.3/apogee-universal-apple-darwin.tar.gz"
      sha256 "7faeecfb76ed4dee76908d218f7dc7360fa6e8fdcafb071d97e4520c3bbaa34e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/apogee/releases/download/0.2.3/apogee-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b775266d13645722db196b5f55acfd1d5fec1b1a3538af8a441557fdf9a996e8"
    end
    on_intel do
      url "https://github.com/coignard/apogee/releases/download/0.2.3/apogee-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6c583862a4745783304a930f78ba7415fb35cc8e59d6be26973cd3549dc0603e"
    end
  end

  def install
    bin.install "apogee"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apogee --version")
  end
end
