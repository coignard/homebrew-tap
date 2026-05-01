class apogee < Formula
  desc "Apogee BK-01 emulator using the iz80 library"
  homepage "https://coignard.org/apogee"

  on_macos do
    on_arm do
      url "https://github.com/coignard/apogee/releases/download/0.1.5/apogee-universal-apple-darwin.tar.gz"
      sha256 "19b0f40ec6ca2d4907141414c1702713b0aa4eee0a19c2c216b7dcb443d48128"
    end
    on_intel do
      url "https://github.com/coignard/apogee/releases/download/0.1.5/apogee-universal-apple-darwin.tar.gz"
      sha256 "19b0f40ec6ca2d4907141414c1702713b0aa4eee0a19c2c216b7dcb443d48128"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/apogee/releases/download/0.1.5/apogee-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a40f62f9487db0eafd2b64e7c9a30a9a621846e1e72188fe344587c39012bbf1"
    end
    on_intel do
      url "https://github.com/coignard/apogee/releases/download/0.1.5/apogee-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "efe8dea2973f338499c985563656257e19bd025b12804fa9528981047977a249"
    end
  end

  def install
    bin.install "apogee"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apogee --version")
  end
end
