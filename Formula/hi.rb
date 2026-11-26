# Homebrew formula for hi, HIPS's command-line tool, in the tap
# hips-ai/homebrew-tap (brew install hips-ai/tap/hi). Each release fills in
# the version and the SHA-256 of each build from its signed SHA256SUMS.
class Hi < Formula
  desc "HIPS's command-line tool: sign in, list models, start coding agents on HIPS"
  homepage "https://hips.com"
  version "0.1.20"

  on_macos do
    on_arm do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.20/hi-0.1.20-macos-arm64"
      sha256 "356f8cdce0812b7589165b3643d56a446edb43c9648a2e7f17d1e5680900bac3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.20/hi-0.1.20-linux-x64"
      sha256 "e5aa309c1fd25d76daec56d1519de928c06aa3a34c63b5b5191aa3137d258eff"
    end
    on_arm do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.20/hi-0.1.20-linux-arm64"
      sha256 "32565d31803810a9ed726141daf8e976ebd6c9a2c0605f17cb492718a9e66c30"
    end
  end

  def install
    bin.install Dir["hi-*"].first => "hi"
  end

  test do
    assert_match "hi #{version}", shell_output("#{bin}/hi --version")
  end
end
