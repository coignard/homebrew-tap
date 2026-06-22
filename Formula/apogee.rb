class apogee < Formula
  desc "Apogee BK-01 emulator with MIDI support via PPI"
  homepage "https://coignard.org/apogee"

  on_macos do
    on_arm do
      url "https://github.com/coignard/apogee/releases/download/0.4.0/apogee-universal-apple-darwin.tar.gz"
      sha256 "94729816386b49399a1efe7cbd1a14b3dda69bac6bd1a307ec24ffc2db073608"
    end
    on_intel do
      url "https://github.com/coignard/apogee/releases/download/0.4.0/apogee-universal-apple-darwin.tar.gz"
      sha256 "94729816386b49399a1efe7cbd1a14b3dda69bac6bd1a307ec24ffc2db073608"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/apogee/releases/download/0.4.0/apogee-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f719966895a8a115fefc7a8f80028ab7ec779ae0c7a794586448cb6ea8476228"
    end
    on_intel do
      url "https://github.com/coignard/apogee/releases/download/0.4.0/apogee-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "453d7cf0a86f70c7b8381c7e64e049fe58c46b432526cee0af2fed140fe10a41"
    end
  end

  def install
    bin.install "apogee"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apogee --version")
  end
end
