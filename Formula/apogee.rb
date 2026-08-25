class apogee < Formula
  desc "Apogee BK-01 emulator with MIDI support via PPI"
  homepage "https://coignard.org/apogee"

  on_macos do
    on_arm do
      url "https://github.com/coignard/apogee/releases/download/0.5.5/apogee-universal-apple-darwin.tar.gz"
      sha256 "1e43b1d074b95f597a27e5718a78dd9e3cc9687801a8c178edc1d0fb6321f4eb"
    end
    on_intel do
      url "https://github.com/coignard/apogee/releases/download/0.5.5/apogee-universal-apple-darwin.tar.gz"
      sha256 "1e43b1d074b95f597a27e5718a78dd9e3cc9687801a8c178edc1d0fb6321f4eb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/apogee/releases/download/0.5.5/apogee-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "12dc3a62e04cdc1cae8b4977ab532024c327bbbd7b41c2cb45a36e58e1fe2851"
    end
    on_intel do
      url "https://github.com/coignard/apogee/releases/download/0.5.5/apogee-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4da623b1e1e678ad192eb9447f48d8cd48fa473068bf8eaf9c76fcc42a5ad692"
    end
  end

  def install
    bin.install "apogee"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apogee --version")
  end
end
