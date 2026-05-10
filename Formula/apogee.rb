class apogee < Formula
  desc "Apogee BK-01 emulator using the iz80 library"
  homepage "https://coignard.org/apogee"

  on_macos do
    on_arm do
      url "https://github.com/coignard/apogee/releases/download/0.2.4/apogee-universal-apple-darwin.tar.gz"
      sha256 "8ea749b7c395f97e17c92f86c899c9faeb07facb83d1483b1f20b81ff5e033e0"
    end
    on_intel do
      url "https://github.com/coignard/apogee/releases/download/0.2.4/apogee-universal-apple-darwin.tar.gz"
      sha256 "8ea749b7c395f97e17c92f86c899c9faeb07facb83d1483b1f20b81ff5e033e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/apogee/releases/download/0.2.4/apogee-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "636c45dc4312b4d37e7b1c499e3eeb5af87e988e654102430cc5a567eef1659a"
    end
    on_intel do
      url "https://github.com/coignard/apogee/releases/download/0.2.4/apogee-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "17d73822dc7c30289df4c90700fe92d385d438bda43977e42b33faabb2d0dfd0"
    end
  end

  def install
    bin.install "apogee"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apogee --version")
  end
end
