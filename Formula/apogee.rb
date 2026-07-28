class apogee < Formula
  desc "Apogee BK-01 emulator with MIDI support via PPI"
  homepage "https://coignard.org/apogee"

  on_macos do
    on_arm do
      url "https://github.com/coignard/apogee/releases/download/0.5.3/apogee-universal-apple-darwin.tar.gz"
      sha256 "69fb994a99d3b55162e675526b60e89a8bc3dfa0ef98835dc32075b7b4bb91df"
    end
    on_intel do
      url "https://github.com/coignard/apogee/releases/download/0.5.3/apogee-universal-apple-darwin.tar.gz"
      sha256 "69fb994a99d3b55162e675526b60e89a8bc3dfa0ef98835dc32075b7b4bb91df"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/apogee/releases/download/0.5.3/apogee-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e37f38d1f02b9fb069b9ba3e06ba2da4a796921d3da4203f9b6154237496e724"
    end
    on_intel do
      url "https://github.com/coignard/apogee/releases/download/0.5.3/apogee-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d53c51fb8fa7161e0ae1bf3b15040223ab8535521ba031aa3ab63a7fe83bf46a"
    end
  end

  def install
    bin.install "apogee"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apogee --version")
  end
end
