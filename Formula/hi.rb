# Homebrew formula for hi, HIPS's command-line tool, in the tap
# hips-ai/homebrew-tap (brew install hips-ai/tap/hi). Each release fills in
# the version and the SHA-256 of each build from its signed SHA256SUMS.
class Hi < Formula
  desc "HIPS's command-line tool: sign in, list models, start coding agents on HIPS"
  homepage "https://hips.com"
  version "0.1.5"

  on_macos do
    on_arm do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.5/hi-0.1.5-macos-arm64"
      sha256 "9faf4addb6ebabf1bf2631cc921ad22ba44f9fa62892b1a4dcaca75d5b6047d3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.5/hi-0.1.5-linux-x64"
      sha256 "19f9e53d5af022d79b6d8dd68833e6b9c3d95769dfb52a7bc139c073e3d79b0b"
    end
    on_arm do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.5/hi-0.1.5-linux-arm64"
      sha256 "254f9a9743e856bd3a84a297f4262aba3387b6e0e32ff7574b9a09c49482f457"
    end
  end

  def install
    bin.install Dir["hi-*"].first => "hi"
  end

  test do
    assert_match "hi #{version}", shell_output("#{bin}/hi --version")
  end
end
