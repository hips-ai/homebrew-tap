# Homebrew formula for hi, HIPS's command-line tool, in the tap
# hips-ai/homebrew-tap (brew install hips-ai/tap/hi). Each release fills in
# the version and the SHA-256 of each build from its signed SHA256SUMS.
class Hi < Formula
  desc "HIPS's command-line tool: sign in, list models, start coding agents on HIPS"
  homepage "https://hips.com"
  version "0.1.17"

  on_macos do
    on_arm do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.17/hi-0.1.17-macos-arm64"
      sha256 "23a2a463c55aca370a9c8af3066cb27a47e257fb3221ac3889b6aeeda5db8c9f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.17/hi-0.1.17-linux-x64"
      sha256 "e44467ebbe2095b211c588d3f2d61918e4077df53b19da21496fb9d938d0fdbd"
    end
    on_arm do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.17/hi-0.1.17-linux-arm64"
      sha256 "cc334b56334524a4fda6d82ccdfc5a396bd039434885454469a8c29b4c0d822c"
    end
  end

  def install
    bin.install Dir["hi-*"].first => "hi"
  end

  test do
    assert_match "hi #{version}", shell_output("#{bin}/hi --version")
  end
end
