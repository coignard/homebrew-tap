class apogee < Formula
  desc "Apogee BK-01 emulator using the iz80 library"
  homepage "https://coignard.org/apogee"

  on_macos do
    on_arm do
      url "https://github.com/coignard/apogee/releases/download/0.2.0/apogee-universal-apple-darwin.tar.gz"
      sha256 "e71a55f2cfb2b34c871a68f5c70f17890f7851c7a38c8ea216ffa9d80d8c4c9b"
    end
    on_intel do
      url "https://github.com/coignard/apogee/releases/download/0.2.0/apogee-universal-apple-darwin.tar.gz"
      sha256 "e71a55f2cfb2b34c871a68f5c70f17890f7851c7a38c8ea216ffa9d80d8c4c9b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/apogee/releases/download/0.2.0/apogee-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "61f4008d362c0ca48e5860dabbd8501c51bb85504b4c9482bfed4c113a1a9b1e"
    end
    on_intel do
      url "https://github.com/coignard/apogee/releases/download/0.2.0/apogee-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6f5cdaf14a60f5cb799357abe62ba2fa6e17085075ec09f808209fe01446b13e"
    end
  end

  def install
    bin.install "apogee"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apogee --version")
  end
end
