# Homebrew formula for hi, HIPS's command-line tool, in the tap
# hips-ai/homebrew-tap (brew install hips-ai/tap/hi). Each release fills in
# the version and the SHA-256 of each build from its signed SHA256SUMS.
class Hi < Formula
  desc "HIPS's command-line tool: sign in, list models, start coding agents on HIPS"
  homepage "https://hips.com"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.3/hi-0.1.3-macos-arm64"
      sha256 "be8d6d33addb16d23234531aaf95fac9ef086a1e8d437f3cf64f00c79d740315"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.3/hi-0.1.3-linux-x64"
      sha256 "c234539c043cc80fa009a24228682bd3e669c561811e8e4db53c18ca1b417eb6"
    end
    on_arm do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.3/hi-0.1.3-linux-arm64"
      sha256 "cf0753809214cf06ebdb34e684766d9e2e36015e9f7d75560e9a1d02a82c7e0d"
    end
  end

  def install
    bin.install Dir["hi-*"].first => "hi"
  end

  test do
    assert_match "hi #{version}", shell_output("#{bin}/hi --version")
  end
end
