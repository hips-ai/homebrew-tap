# Homebrew formula for hi, HIPS's command-line tool, in the tap
# hips-ai/homebrew-tap (brew install hips-ai/tap/hi). Each release fills in
# the version and the SHA-256 of each build from its signed SHA256SUMS.
class Hi < Formula
  desc "HIPS's command-line tool: sign in, list models, start coding agents on HIPS"
  homepage "https://hips.com"
  version "0.1.9"

  on_macos do
    on_arm do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.9/hi-0.1.9-macos-arm64"
      sha256 "ae3d0f6eee0f0433efa8ce1e705542d8267a9a3c7ddb9219bec7bbe8f85fb55c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.9/hi-0.1.9-linux-x64"
      sha256 "fac6399b2216d67159378d7cf76d2d7b86d31d9c0aebb602e159ce7cd7677498"
    end
    on_arm do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.9/hi-0.1.9-linux-arm64"
      sha256 "fc39652733f674b5fef25bec1dcd7003bb0bdf23e75c28089481301d02338ff5"
    end
  end

  def install
    bin.install Dir["hi-*"].first => "hi"
  end

  test do
    assert_match "hi #{version}", shell_output("#{bin}/hi --version")
  end
end
