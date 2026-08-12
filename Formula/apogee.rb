class apogee < Formula
  desc "Apogee BK-01 emulator with MIDI support via PPI"
  homepage "https://coignard.org/apogee"

  on_macos do
    on_arm do
      url "https://github.com/coignard/apogee/releases/download/0.5.4/apogee-universal-apple-darwin.tar.gz"
      sha256 "fa1d0170051d5c30d71eda0abf016596097909cfbd5f770d238eb308fdee7571"
    end
    on_intel do
      url "https://github.com/coignard/apogee/releases/download/0.5.4/apogee-universal-apple-darwin.tar.gz"
      sha256 "fa1d0170051d5c30d71eda0abf016596097909cfbd5f770d238eb308fdee7571"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/apogee/releases/download/0.5.4/apogee-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1052ccdae48c91dbc70261522fab25cb4f023b5c5787a919142ee0f30856af3c"
    end
    on_intel do
      url "https://github.com/coignard/apogee/releases/download/0.5.4/apogee-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8b32c9588382bf3feb3e5a2fc6efc5252f20beeb0431d19bb3fba7f7d41f69a6"
    end
  end

  def install
    bin.install "apogee"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apogee --version")
  end
end
