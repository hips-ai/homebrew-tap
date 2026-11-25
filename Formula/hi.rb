# Homebrew formula for hi, HIPS's command-line tool, in the tap
# hips-ai/homebrew-tap (brew install hips-ai/tap/hi). Each release fills in
# the version and the SHA-256 of each build from its signed SHA256SUMS.
class Hi < Formula
  desc "HIPS's command-line tool: sign in, list models, start coding agents on HIPS"
  homepage "https://hips.com"
  version "0.1.19"

  on_macos do
    on_arm do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.19/hi-0.1.19-macos-arm64"
      sha256 "315213f91a05204bd26fcbab387b37bf31b8d48db2b1179be153c585015c2669"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.19/hi-0.1.19-linux-x64"
      sha256 "cc24be755ff1b100a9e5f61b9686463cc8f5570d8993efa5ec0eb2365e385c07"
    end
    on_arm do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.19/hi-0.1.19-linux-arm64"
      sha256 "40d2921f76eb8d07e3669aedc2b745a9377512aa4a0033d38d6b53454adfe5cd"
    end
  end

  def install
    bin.install Dir["hi-*"].first => "hi"
  end

  test do
    assert_match "hi #{version}", shell_output("#{bin}/hi --version")
  end
end
