# Homebrew formula for hi, HIPS's command-line tool, in the tap
# hips-ai/homebrew-tap (brew install hips-ai/tap/hi). Each release fills in
# the version and the SHA-256 of each build from its signed SHA256SUMS.
class Hi < Formula
  desc "HIPS's command-line tool: sign in, list models, start coding agents on HIPS"
  homepage "https://hips.com"
  version "0.1.22"

  on_macos do
    on_arm do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.22/hi-0.1.22-macos-arm64"
      sha256 "114f7ae1aefe1d1612b7964b44d8a6b4c799be17524a5864979f7ba99db5dc47"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.22/hi-0.1.22-linux-x64"
      sha256 "d57ac25bd44deec714daa0b61f954bb1df40ce389a2cc4c04321bc41ce09b47d"
    end
    on_arm do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.22/hi-0.1.22-linux-arm64"
      sha256 "97b94680e2eeed7418f4af754eb989460e48990660f7c7d0d4f9a67c532f0320"
    end
  end

  def install
    bin.install Dir["hi-*"].first => "hi"
  end

  test do
    assert_match "hi #{version}", shell_output("#{bin}/hi --version")
  end
end
