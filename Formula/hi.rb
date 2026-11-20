# Homebrew formula for hi, HIPS's command-line tool, in the tap
# hips-ai/homebrew-tap (brew install hips-ai/tap/hi). Each release fills in
# the version and the SHA-256 of each build from its signed SHA256SUMS.
class Hi < Formula
  desc "HIPS's command-line tool: sign in, list models, start coding agents on HIPS"
  homepage "https://hips.com"
  version "0.1.16"

  on_macos do
    on_arm do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.16/hi-0.1.16-macos-arm64"
      sha256 "9ff5c117a00701085fa93076b7db9f5d66bc09a37b5b4f08115480db974ee057"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.16/hi-0.1.16-linux-x64"
      sha256 "5c349dd0837ca49d51ff6837721e001cbd73a256ebbea67fb27d250496ab3366"
    end
    on_arm do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.16/hi-0.1.16-linux-arm64"
      sha256 "21cfe6a53d7fb7990a046c270b3739ad181a211dbde51b59876376ee1ea9f628"
    end
  end

  def install
    bin.install Dir["hi-*"].first => "hi"
  end

  test do
    assert_match "hi #{version}", shell_output("#{bin}/hi --version")
  end
end
