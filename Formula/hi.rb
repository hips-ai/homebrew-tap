# Homebrew formula for hi, HIPS's command-line tool, in the tap
# hips-ai/homebrew-tap (brew install hips-ai/tap/hi). Each release fills in
# the version and the SHA-256 of each build from its signed SHA256SUMS.
class Hi < Formula
  desc "HIPS's command-line tool: sign in, list models, start coding agents on HIPS"
  homepage "https://hips.com"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.2/hi-0.1.2-macos-arm64"
      sha256 "17e4801a3cf92e800c6b71af50247c2cf28ce5dee2ca0787436f82f4bf8fa4fe"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.2/hi-0.1.2-linux-x64"
      sha256 "fe1665a915395512ccbe805683e88dcac05751ffb64e280590687183274105b3"
    end
    on_arm do
      url "https://github.com/hips-ai/hi-releases/releases/download/v0.1.2/hi-0.1.2-linux-arm64"
      sha256 "4d764866a71fdd0ad9f695a3037fe19dc0084aea7e200966a41b6e635a21b668"
    end
  end

  def install
    bin.install Dir["hi-*"].first => "hi"
  end

  test do
    assert_match "hi #{version}", shell_output("#{bin}/hi --version")
  end
end
