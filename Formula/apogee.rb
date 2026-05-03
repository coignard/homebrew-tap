class apogee < Formula
  desc "Apogee BK-01 emulator using the iz80 library"
  homepage "https://coignard.org/apogee"

  on_macos do
    on_arm do
      url "https://github.com/coignard/apogee/releases/download/0.1.2/apogee-universal-apple-darwin.tar.gz"
      sha256 "8418cb32f93be588e138b0f9c6834303f7987dc9a18a8ebbc3099e4b03eefc4d"
    end
    on_intel do
      url "https://github.com/coignard/apogee/releases/download/0.1.2/apogee-universal-apple-darwin.tar.gz"
      sha256 "8418cb32f93be588e138b0f9c6834303f7987dc9a18a8ebbc3099e4b03eefc4d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/apogee/releases/download/0.1.2/apogee-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4179748d8758153fab0fd0b2cfba4d897e7dd4f8b4702434122aa0c0cb1260fe"
    end
    on_intel do
      url "https://github.com/coignard/apogee/releases/download/0.1.2/apogee-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "250d8a47f7f91c330ad36a5f027dddd58cbb833e3ebde35e69e344bbad5bc552"
    end
  end

  def install
    bin.install "apogee"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apogee --version")
  end
end
