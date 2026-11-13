# Homebrew formula for hi, HIPS's command-line tool, in the tap
# hips-ai/homebrew-tap (brew install hips-ai/tap/hi). Each release fills in
# the version and the SHA-256 of each build from its signed SHA256SUMS.
class Hi < Formula
  desc "HIPS's command-line tool: sign in, list models, start coding agents on HIPS"
  homepage "https://hips.com"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.1/hi-0.1.1-macos-arm64"
      sha256 "02dbacbfa1e3da13efc5b129749bd0ae8cf494f4367df5a9b2e708003628d534"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.1/hi-0.1.1-linux-x64"
      sha256 "8c8fdaa6118cb4d2c6ec8cca688e6cfe130fe9edf8d540c575f3908e67441b32"
    end
    on_arm do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.1/hi-0.1.1-linux-arm64"
      sha256 "d3ba948bc4e4707a16d1a0e1dbdff007558d112619116447af0dac8a49adb29e"
    end
  end

  def install
    bin.install Dir["hi-*"].first => "hi"
  end

  test do
    assert_match "hi #{version}", shell_output("#{bin}/hi --version")
  end
end
