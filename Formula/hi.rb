# Homebrew formula for hi, HIPS's command-line tool, in the tap
# hips-ai/homebrew-tap (brew install hips-ai/tap/hi). Each release fills in
# the version and the SHA-256 of each build from its signed SHA256SUMS.
class Hi < Formula
  desc "HIPS's command-line tool: sign in, list models, start coding agents on HIPS"
  homepage "https://hips.com"
  version "0.1.11"

  on_macos do
    on_arm do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.11/hi-0.1.11-macos-arm64"
      sha256 "c5abb533df9ba79fb6dc885b14505489bc03f44c4273abd7b6d0e71c19771446"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.11/hi-0.1.11-linux-x64"
      sha256 "ea27f1cc9495908d7035ceb13440275442b974404b04de416a749a9260aad1dc"
    end
    on_arm do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.11/hi-0.1.11-linux-arm64"
      sha256 "2a7031072e6160a0a526ccd570f2ba537bdca5d1fc7f350a985596142ae43b25"
    end
  end

  def install
    bin.install Dir["hi-*"].first => "hi"
  end

  test do
    assert_match "hi #{version}", shell_output("#{bin}/hi --version")
  end
end
