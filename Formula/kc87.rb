class kc87 < Formula
  desc "Robotron KC 87 emulator with MIDI support via PIO"
  homepage "https://coignard.org/kc87"

  on_macos do
    on_arm do
      url "https://github.com/coignard/kc87/releases/download/0.3.0/kc87-universal-apple-darwin.tar.gz"
      sha256 "4863dda68326460f2a348d0dc464af581bf77c20dc19c1aca3f55b82581af50b"
    end
    on_intel do
      url "https://github.com/coignard/kc87/releases/download/0.3.0/kc87-universal-apple-darwin.tar.gz"
      sha256 "4863dda68326460f2a348d0dc464af581bf77c20dc19c1aca3f55b82581af50b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/kc87/releases/download/0.3.0/kc87-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3770036fd8740728f16779a3699355bc691409df54a90fbd5f265922af61be66"
    end
    on_intel do
      url "https://github.com/coignard/kc87/releases/download/0.3.0/kc87-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a38286f95d7e5545c8b0152851cec2cb854fbe816718c49c09c259afb7c54897"
    end
  end

  def install
    bin.install "kc87"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kc87 --version")
  end
end
