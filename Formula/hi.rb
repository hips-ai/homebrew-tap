# Homebrew formula for hi, HIPS's command-line tool, in the tap
# hips-ai/homebrew-tap (brew install hips-ai/tap/hi). Each release fills in
# the version and the SHA-256 of each build from its signed SHA256SUMS.
class Hi < Formula
  desc "HIPS's command-line tool: sign in, list models, start coding agents on HIPS"
  homepage "https://hips.com"
  version "0.1.10"

  on_macos do
    on_arm do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.10/hi-0.1.10-macos-arm64"
      sha256 "ff58488e2e48f44f7da1dbb6de52a6191386006951a3b88699b962cd2d38a52b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.10/hi-0.1.10-linux-x64"
      sha256 "194d52c0cf744b774da4d25036d93f6d97eff59495392539de04c472dfbf462c"
    end
    on_arm do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.10/hi-0.1.10-linux-arm64"
      sha256 "9fca65741f54ac5b279ad73b8ed15ac2040dbe3d8331fd896361dfedc0709f38"
    end
  end

  def install
    bin.install Dir["hi-*"].first => "hi"
  end

  test do
    assert_match "hi #{version}", shell_output("#{bin}/hi --version")
  end
end
