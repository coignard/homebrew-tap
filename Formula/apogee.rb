class apogee < Formula
  desc "Apogee BK-01 emulator using the iz80 library"
  homepage "https://coignard.org/apogee"

  on_macos do
    on_arm do
      url "https://github.com/coignard/apogee/releases/download/0.1.1/apogee-universal-apple-darwin.tar.gz"
      sha256 "f674cae539517854171dc3d559a3ed6ab00ffde1aa9ed3dd7488d3b434924f8a"
    end
    on_intel do
      url "https://github.com/coignard/apogee/releases/download/0.1.1/apogee-universal-apple-darwin.tar.gz"
      sha256 "f674cae539517854171dc3d559a3ed6ab00ffde1aa9ed3dd7488d3b434924f8a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/apogee/releases/download/0.1.1/apogee-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e6ba291c1112ddc2a6972e53a6780b51d0429ec3b8e94735de95907632f32d2f"
    end
    on_intel do
      url "https://github.com/coignard/apogee/releases/download/0.1.1/apogee-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f27679240c638dfda77307953ff1dab9dca3aa4e6831061b46d585f7f24c9c2e"
    end
  end

  def install
    bin.install "apogee"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apogee --version")
  end
end
