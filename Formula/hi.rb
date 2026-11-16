# Homebrew formula for hi, HIPS's command-line tool, in the tap
# hips-ai/homebrew-tap (brew install hips-ai/tap/hi). Each release fills in
# the version and the SHA-256 of each build from its signed SHA256SUMS.
class Hi < Formula
  desc "HIPS's command-line tool: sign in, list models, start coding agents on HIPS"
  homepage "https://hips.com"
  version "0.1.6"

  on_macos do
    on_arm do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.6/hi-0.1.6-macos-arm64"
      sha256 "32f64f6516978f18ae583730ec21e74dbf0ed94f6ae25e705abcb87a6c4dfeed"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.6/hi-0.1.6-linux-x64"
      sha256 "6cfa03b07abb56a8db8cf45e91406df518c3ff10e58dd05a72bd535d7a5b27a6"
    end
    on_arm do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.6/hi-0.1.6-linux-arm64"
      sha256 "bc973a020a674fd88f86bc457196d4007284a468a1be3349e65e9d6c0631ac6e"
    end
  end

  def install
    bin.install Dir["hi-*"].first => "hi"
  end

  test do
    assert_match "hi #{version}", shell_output("#{bin}/hi --version")
  end
end
