# Homebrew formula for hi, HIPS's command-line tool, in the tap
# hips-ai/homebrew-tap (brew install hips-ai/tap/hi). Each release fills in
# the version and the SHA-256 of each build from its signed SHA256SUMS.
class Hi < Formula
  desc "HIPS's command-line tool: sign in, list models, start coding agents on HIPS"
  homepage "https://hips.com"
  version "0.1.7"

  on_macos do
    on_arm do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.7/hi-0.1.7-macos-arm64"
      sha256 "7a32d35ce0a3ee7b61e55c441075b509eae6f98783148dbc91592e18f8abdb68"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.7/hi-0.1.7-linux-x64"
      sha256 "e118eff17ccf4e382c9c4719d9687b71bc43cea064540b099dfd03750fbeb6c9"
    end
    on_arm do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.7/hi-0.1.7-linux-arm64"
      sha256 "af7c3c9084db456e60e26d1b857dccd3ec12033da4bc44594ab408b1a0b77190"
    end
  end

  def install
    bin.install Dir["hi-*"].first => "hi"
  end

  test do
    assert_match "hi #{version}", shell_output("#{bin}/hi --version")
  end
end
