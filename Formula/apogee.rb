class apogee < Formula
  desc "Apogee BK-01 emulator with MIDI support via PPI"
  homepage "https://coignard.org/apogee"

  on_macos do
    on_arm do
      url "https://github.com/coignard/apogee/releases/download/0.3.3/apogee-universal-apple-darwin.tar.gz"
      sha256 "b0911f3d42f6d7b7ca000743166f8a4b671be391561bd85f41fda68a3f37b7ce"
    end
    on_intel do
      url "https://github.com/coignard/apogee/releases/download/0.3.3/apogee-universal-apple-darwin.tar.gz"
      sha256 "b0911f3d42f6d7b7ca000743166f8a4b671be391561bd85f41fda68a3f37b7ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/apogee/releases/download/0.3.3/apogee-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "aeca2ac171f7e612fe75c42ad6f7557ea1b6de83662979c61f9cbf617553aca8"
    end
    on_intel do
      url "https://github.com/coignard/apogee/releases/download/0.3.3/apogee-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "59e6fc68b87e5c7205a84cc500cf609c7b09b1c9f92c41d3e74b7eb6cde8a2d3"
    end
  end

  def install
    bin.install "apogee"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apogee --version")
  end
end
