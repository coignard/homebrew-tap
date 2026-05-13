class apogee < Formula
  desc "Apogee BK-01 emulator using the iz80 library"
  homepage "https://coignard.org/apogee"

  on_macos do
    on_arm do
      url "https://github.com/coignard/apogee/releases/download/0.3.1/apogee-universal-apple-darwin.tar.gz"
      sha256 "17431b4750fd31459d680ce42899f887948f29716327b1c84a4720fd038feeb3"
    end
    on_intel do
      url "https://github.com/coignard/apogee/releases/download/0.3.1/apogee-universal-apple-darwin.tar.gz"
      sha256 "17431b4750fd31459d680ce42899f887948f29716327b1c84a4720fd038feeb3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/apogee/releases/download/0.3.1/apogee-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1b16589272954dfc98d608e9aa5a476ff8a222cfda1e5846af6c3491d7a0eacc"
    end
    on_intel do
      url "https://github.com/coignard/apogee/releases/download/0.3.1/apogee-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "10daa2352c63b1dfef86a8ea9692ea317a8b015d7b62cbb37e64de33fcc69280"
    end
  end

  def install
    bin.install "apogee"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apogee --version")
  end
end
