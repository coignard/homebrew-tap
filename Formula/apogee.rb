class apogee < Formula
  desc "Apogee BK-01 emulator using the iz80 library"
  homepage "https://coignard.org/apogee"

  on_macos do
    on_arm do
      url "https://github.com/coignard/apogee/releases/download/0.2.5/apogee-universal-apple-darwin.tar.gz"
      sha256 "17d26caf4118d6a14d07a132f900559206fb446253afcf2bde60eb297c524819"
    end
    on_intel do
      url "https://github.com/coignard/apogee/releases/download/0.2.5/apogee-universal-apple-darwin.tar.gz"
      sha256 "17d26caf4118d6a14d07a132f900559206fb446253afcf2bde60eb297c524819"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/apogee/releases/download/0.2.5/apogee-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2288a3c18039f498faeb2bcd3c5853a09d3b7b31b349e2c44c64f7d0d6c6431c"
    end
    on_intel do
      url "https://github.com/coignard/apogee/releases/download/0.2.5/apogee-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "db7718a1a89dea5b549a3e6ce715688864b1036719758c35d83fbc8df864013e"
    end
  end

  def install
    bin.install "apogee"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apogee --version")
  end
end
