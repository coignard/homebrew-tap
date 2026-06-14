class kc87 < Formula
  desc "Robotron KC 87 emulator with MIDI support via PIO"
  homepage "https://coignard.org/kc87"

  on_macos do
    on_arm do
      url "https://github.com/coignard/kc87/releases/download/0.2.4/kc87-universal-apple-darwin.tar.gz"
      sha256 "b843c41d79ef18bf411109aaaaec45e702e9f91fea74c28214b777096b465e94"
    end
    on_intel do
      url "https://github.com/coignard/kc87/releases/download/0.2.4/kc87-universal-apple-darwin.tar.gz"
      sha256 "b843c41d79ef18bf411109aaaaec45e702e9f91fea74c28214b777096b465e94"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/kc87/releases/download/0.2.4/kc87-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "92a9ed132e705a13c59fe92aded0fbf4a5220de22f057453207eedbf950a99ed"
    end
    on_intel do
      url "https://github.com/coignard/kc87/releases/download/0.2.4/kc87-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ee7cc28f80db8bafe7235a7cd6ad675c3c8efcd22c80163be2ec293ba791a0ce"
    end
  end

  def install
    bin.install "kc87"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kc87 --version")
  end
end
