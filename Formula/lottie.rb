class Lottie < Formula
  desc "A simple yet powerful Fountain screenplay editor"
  homepage "https://lottie.rs/"

  on_macos do
    on_arm do
      url "https://github.com/coignard/lottie/releases/download/0.2.18/lottie-universal-apple-darwin.tar.gz"
      sha256 "8aa0f4f245224fc4928480569c01f45edb2aebf38750c624b17245bf2d25b4d3"
    end
    on_intel do
      url "https://github.com/coignard/lottie/releases/download/0.2.18/lottie-universal-apple-darwin.tar.gz"
      sha256 "8aa0f4f245224fc4928480569c01f45edb2aebf38750c624b17245bf2d25b4d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/lottie/releases/download/0.2.18/lottie-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8f27d935fc5acb351e94baf10e506dceb7e72f458e8b085c1a9c32d9639bcd60"
    end
    on_intel do
      url "https://github.com/coignard/lottie/releases/download/0.2.18/lottie-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "060d80d56ebebf7868ad238a64e20979225a667173264f1b120665bc78ef6ea0"
    end
  end

  def install
    bin.install "lottie"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lottie --version")
  end
end
