# Homebrew formula for hi, HIPS's command-line tool, in the tap
# hips-ai/homebrew-tap (brew install hips-ai/tap/hi). Each release fills in
# the version and the SHA-256 of each build from its signed SHA256SUMS.
class Hi < Formula
  desc "HIPS's command-line tool: sign in, list models, start coding agents on HIPS"
  homepage "https://hips.com"
  version "0.1.13"

  on_macos do
    on_arm do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.13/hi-0.1.13-macos-arm64"
      sha256 "aaf4e23538c4a061ec36deb1d8072642ac76cd530a318432b07a06919f42ee22"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.13/hi-0.1.13-linux-x64"
      sha256 "c2db3de59ab90dc4d218167de8e444751b8872292154eb4520048e4321965f71"
    end
    on_arm do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.13/hi-0.1.13-linux-arm64"
      sha256 "bb84626ae294a5ffaad4a36838d5428570eb8a3139cd5e5834b6b445511e8817"
    end
  end

  def install
    bin.install Dir["hi-*"].first => "hi"
  end

  test do
    assert_match "hi #{version}", shell_output("#{bin}/hi --version")
  end
end
