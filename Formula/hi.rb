# Homebrew formula for hi, HIPS's command-line tool (a draft until the tap's
# repository is chosen). script/release/render.sh fills in the version and
# the SHA-256 of each build from the release's signed SHA256SUMS.
class Hi < Formula
  desc "HIPS's command-line tool: sign in, list models, start coding agents on HIPS"
  homepage "https://hips.com"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.0/hi-0.1.0-macos-arm64"
      sha256 "3dee6f4264fc06aaa93726494471a50923b2fb9b957bd27f755fce74f5bb2cc3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.0/hi-0.1.0-linux-x64"
      sha256 "140292e2b320aa194f6820fff65e4e9dbf4d787bbf0123c66d15541886b1b113"
    end
    on_arm do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.0/hi-0.1.0-linux-arm64"
      sha256 "d1e54405170015a7aa378f33ca1f6f1389cc00e448856fcb461ffa7394616732"
    end
  end

  def install
    bin.install Dir["hi-*"].first => "hi"
  end

  test do
    assert_match "hi #{version}", shell_output("#{bin}/hi --version")
  end
end
