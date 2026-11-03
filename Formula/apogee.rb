class apogee < Formula
  desc "Apogee BK-01 emulator with MIDI support via PPI"
  homepage "https://coignard.org/apogee"

  on_macos do
    on_arm do
      url "https://github.com/coignard/apogee/releases/download/0.5.7/apogee-universal-apple-darwin.tar.gz"
      sha256 "238272a281cbac671cc9bd6c06a899dfd03fbbd2766381c803d3bcd2af2ee10a"
    end
    on_intel do
      url "https://github.com/coignard/apogee/releases/download/0.5.7/apogee-universal-apple-darwin.tar.gz"
      sha256 "238272a281cbac671cc9bd6c06a899dfd03fbbd2766381c803d3bcd2af2ee10a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/apogee/releases/download/0.5.7/apogee-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5d8454de245fa53e79a8fed38f9d964f04202ea3c563ad58fff72436c0c52cea"
    end
    on_intel do
      url "https://github.com/coignard/apogee/releases/download/0.5.7/apogee-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fc5e886f8668cf0f8e4910a5f1e5ff41a352187376528748e44ab74b6c6ed5fb"
    end
  end

  def install
    bin.install "apogee"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apogee --version")
  end
end
