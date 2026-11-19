# Homebrew formula for hi, HIPS's command-line tool, in the tap
# hips-ai/homebrew-tap (brew install hips-ai/tap/hi). Each release fills in
# the version and the SHA-256 of each build from its signed SHA256SUMS.
class Hi < Formula
  desc "HIPS's command-line tool: sign in, list models, start coding agents on HIPS"
  homepage "https://hips.com"
  version "0.1.15"

  on_macos do
    on_arm do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.15/hi-0.1.15-macos-arm64"
      sha256 "e6186bcd1137dd290561a8ee6e7e65224f78c4c84005cc1c035d9c09b9ca3472"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.15/hi-0.1.15-linux-x64"
      sha256 "fa71f9098f4f278acaceccbcf376d9ca47dca4484ac63515a3e5f45f5c187231"
    end
    on_arm do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.15/hi-0.1.15-linux-arm64"
      sha256 "d5b8afc3d2766c0f8650971dc938a6a67cc51279316d2af3bbe2587510423053"
    end
  end

  def install
    bin.install Dir["hi-*"].first => "hi"
  end

  test do
    assert_match "hi #{version}", shell_output("#{bin}/hi --version")
  end
end
