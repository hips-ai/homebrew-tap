# Homebrew formula for hi, HIPS's command-line tool, in the tap
# hips-ai/homebrew-tap (brew install hips-ai/tap/hi). Each release fills in
# the version and the SHA-256 of each build from its signed SHA256SUMS.
class Hi < Formula
  desc "HIPS's command-line tool: sign in, list models, start coding agents on HIPS"
  homepage "https://hips.com"
  version "0.1.18"

  on_macos do
    on_arm do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.18/hi-0.1.18-macos-arm64"
      sha256 "10d185be2713703b18e7d168af55bcb3da5c0506138cc4a5d73aa290c1ac3c86"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.18/hi-0.1.18-linux-x64"
      sha256 "1ed003c38641389706aef651bb35ade3c352befba79e1241d41ce9eb9edd6ab0"
    end
    on_arm do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.18/hi-0.1.18-linux-arm64"
      sha256 "8d1b6147e3172f0e6c6c11f598c1b1c3c9d307284548846b8f797fd8080aa126"
    end
  end

  def install
    bin.install Dir["hi-*"].first => "hi"
  end

  test do
    assert_match "hi #{version}", shell_output("#{bin}/hi --version")
  end
end
