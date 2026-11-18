# Homebrew formula for hi, HIPS's command-line tool, in the tap
# hips-ai/homebrew-tap (brew install hips-ai/tap/hi). Each release fills in
# the version and the SHA-256 of each build from its signed SHA256SUMS.
class Hi < Formula
  desc "HIPS's command-line tool: sign in, list models, start coding agents on HIPS"
  homepage "https://hips.com"
  version "0.1.12"

  on_macos do
    on_arm do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.12/hi-0.1.12-macos-arm64"
      sha256 "82d85280b4ce45756f2075e52f3adf28f9575b4001b58e52db87f5ac74214c00"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.12/hi-0.1.12-linux-x64"
      sha256 "04c44ffedb16ed793a88ecd1e14145676f5fae7a4ca195c18654cca2a529e673"
    end
    on_arm do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.12/hi-0.1.12-linux-arm64"
      sha256 "4ffe01a8d4419354228174a1e03af5fa5ffadfdba14d9f667844bec44b001ee1"
    end
  end

  def install
    bin.install Dir["hi-*"].first => "hi"
  end

  test do
    assert_match "hi #{version}", shell_output("#{bin}/hi --version")
  end
end
