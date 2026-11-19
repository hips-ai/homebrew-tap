# Homebrew formula for hi, HIPS's command-line tool, in the tap
# hips-ai/homebrew-tap (brew install hips-ai/tap/hi). Each release fills in
# the version and the SHA-256 of each build from its signed SHA256SUMS.
class Hi < Formula
  desc "HIPS's command-line tool: sign in, list models, start coding agents on HIPS"
  homepage "https://hips.com"
  version "0.1.14"

  on_macos do
    on_arm do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.14/hi-0.1.14-macos-arm64"
      sha256 "e8906c6455f31c99e24e690384fa8c91b3f818ac003214776e6f6b693cd2d6af"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.14/hi-0.1.14-linux-x64"
      sha256 "7bd287a92dc8d1c5d99c122bb3520c77dd4211568ffe5dc6d37ba6c45375f787"
    end
    on_arm do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.14/hi-0.1.14-linux-arm64"
      sha256 "c6f319d60bbf65fe66235e75337621d1e5543e725740cc083c6df9baa2538cc3"
    end
  end

  def install
    bin.install Dir["hi-*"].first => "hi"
  end

  test do
    assert_match "hi #{version}", shell_output("#{bin}/hi --version")
  end
end
