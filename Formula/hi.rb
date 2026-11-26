# Homebrew formula for hi, HIPS's command-line tool, in the tap
# hips-ai/homebrew-tap (brew install hips-ai/tap/hi). Each release fills in
# the version and the SHA-256 of each build from its signed SHA256SUMS.
class Hi < Formula
  desc "HIPS's command-line tool: sign in, list models, start coding agents on HIPS"
  homepage "https://hips.com"
  version "0.1.21"

  on_macos do
    on_arm do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.21/hi-0.1.21-macos-arm64"
      sha256 "68d93374e628623c0fb78bbaedcbfd0112ed232a02d42b26d4fe11e6d1ae3f16"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.21/hi-0.1.21-linux-x64"
      sha256 "5b1f3f54fab0e11581a1b62eda620b24352665fb12c5976b30bae365e9e6591f"
    end
    on_arm do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.21/hi-0.1.21-linux-arm64"
      sha256 "a0b15ee5108a7c29a9168771f485cfa048916fedb990a56cc86a5e8fe8373f1c"
    end
  end

  def install
    bin.install Dir["hi-*"].first => "hi"
  end

  test do
    assert_match "hi #{version}", shell_output("#{bin}/hi --version")
  end
end
