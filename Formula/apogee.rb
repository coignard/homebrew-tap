class apogee < Formula
  desc "Apogee BK-01 emulator using the iz80 library"
  homepage "https://coignard.org/apogee"

  on_macos do
    on_arm do
      url "https://github.com/coignard/apogee/releases/download/0.1.6/apogee-universal-apple-darwin.tar.gz"
      sha256 "db1e03e94aaee08ff6d396192d0ed49805dec6d855cff417088a0f34abd86884"
    end
    on_intel do
      url "https://github.com/coignard/apogee/releases/download/0.1.6/apogee-universal-apple-darwin.tar.gz"
      sha256 "db1e03e94aaee08ff6d396192d0ed49805dec6d855cff417088a0f34abd86884"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/apogee/releases/download/0.1.6/apogee-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2bd682186a2be99bbddc94fcfd4eaa7dd2672b706b50dd010cd98025a01f7ae9"
    end
    on_intel do
      url "https://github.com/coignard/apogee/releases/download/0.1.6/apogee-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c650fffdc5eaa02eff80631d0846409f597b9035e727c12301a00d9589f14b75"
    end
  end

  def install
    bin.install "apogee"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apogee --version")
  end
end
