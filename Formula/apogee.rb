class apogee < Formula
  desc "Apogee BK-01 emulator with MIDI support via PPI"
  homepage "https://coignard.org/apogee"

  on_macos do
    on_arm do
      url "https://github.com/coignard/apogee/releases/download/0.5.1/apogee-universal-apple-darwin.tar.gz"
      sha256 "48497d7e34dc9385231c5e701b9f7e7a3a8a3d002992c54d25cfaf5a021ff49d"
    end
    on_intel do
      url "https://github.com/coignard/apogee/releases/download/0.5.1/apogee-universal-apple-darwin.tar.gz"
      sha256 "48497d7e34dc9385231c5e701b9f7e7a3a8a3d002992c54d25cfaf5a021ff49d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/apogee/releases/download/0.5.1/apogee-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4f143465a4f779f7bcae5fe380c34a42a5cb98c087bc24f11f8bef136bdbd6e7"
    end
    on_intel do
      url "https://github.com/coignard/apogee/releases/download/0.5.1/apogee-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "20b16432142c6be0fef8e71cf94d65f3060d96f2c6f38a2f913c4e9d58059b45"
    end
  end

  def install
    bin.install "apogee"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apogee --version")
  end
end
