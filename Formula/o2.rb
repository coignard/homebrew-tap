class o2 < Formula
  desc "Rust port of the ORCΛ esoteric programming language and terminal livecoding environment"
  homepage "https://coignard.org/o2"

  on_macos do
    on_arm do
      url "https://github.com/coignard/o2/releases/download/0.2.3/o2-universal-apple-darwin.tar.gz"
      sha256 "bc9a1e1e17743596ec5063eecf560e51d2d614e8a368ccb88d27533efaaf7bb5"
    end
    on_intel do
      url "https://github.com/coignard/o2/releases/download/0.2.3/o2-universal-apple-darwin.tar.gz"
      sha256 "bc9a1e1e17743596ec5063eecf560e51d2d614e8a368ccb88d27533efaaf7bb5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coignard/o2/releases/download/0.2.3/o2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a52eca12fccc73ead2b6b4f11b8b6319012ae9ad407b704f29bf2b630b3f1e0a"
    end
    on_intel do
      url "https://github.com/coignard/o2/releases/download/0.2.3/o2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ab03fad046afdbcaf2e7a130cc8b8da4fac34e36321526a6651981d27fdf628d"
    end
  end

  def install
    bin.install "o2"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/o2 --version")
  end
end
