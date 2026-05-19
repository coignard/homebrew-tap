class apogee < Formula
  desc "Apogee BK-01 emulator using the iz80 library"
  homepage "https://coignard.org/apogee"

  on_macos do
    on_arm do
      url "https://github.com/coignard/apogee/releases/download/0.2.2/apogee-universal-apple-darwin.tar.gz"
      sha256 "50ed1299eef0a9fbd7e1a9e8ed809935adbf76ba7e2b5fc0345531715888aeb5"
    end
    on_intel do
      url "https://github.com/coignard/apogee/releases/download/0.2.2/apogee-universal-apple-darwin.tar.gz"
      sha256 "50ed1299eef0a9fbd7e1a9e8ed809935adbf76ba7e2b5fc0345531715888aeb5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/apogee/releases/download/0.2.2/apogee-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "949a407165374f4254e5f23e89eeacd05684fe4e4b4aca613f4616c90fffd989"
    end
    on_intel do
      url "https://github.com/coignard/apogee/releases/download/0.2.2/apogee-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2f5d0369ee38ef3175043223bec77f6247cfe1d2a759685ed48cb623685b1468"
    end
  end

  def install
    bin.install "apogee"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apogee --version")
  end
end
