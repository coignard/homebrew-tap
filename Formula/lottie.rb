class Lottie < Formula
  desc "A simple yet powerful Fountain screenplay editor"
  homepage "https://lottie.rs/"

  on_macos do
    on_arm do
      url "https://github.com/coignard/lottie/releases/download/0.2.16/lottie-universal-apple-darwin.tar.gz"
      sha256 "4dd43dfd63775c81caf31f943a84b0c5f78e2141c5087869bcb7f269a3df1a2a"
    end
    on_intel do
      url "https://github.com/coignard/lottie/releases/download/0.2.16/lottie-universal-apple-darwin.tar.gz"
      sha256 "4dd43dfd63775c81caf31f943a84b0c5f78e2141c5087869bcb7f269a3df1a2a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/lottie/releases/download/0.2.16/lottie-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7b9a3e1a3f1dc386e7470dd86e1fba2700b0764d5ee4ea61bca045bfd46a8e4c"
    end
    on_intel do
      url "https://github.com/coignard/lottie/releases/download/0.2.16/lottie-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8cc5159a14f3e35fa192baecff4ea939fe0883a5b73162b08a452069ffb84160"
    end
  end

  def install
    bin.install "lottie"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lottie --version")
  end
end
