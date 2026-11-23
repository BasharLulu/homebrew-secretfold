# Homebrew formula for the Secretfold CLI. Rendered by scripts/release/homebrew.mjs into the
# tap repo (github.com/BasharLulu/homebrew-secretfold, Formula/secretfold.rb).
#   brew install basharlulu/secretfold/secretfold
class Secretfold < Formula
  desc "Encrypted vault for API keys, tokens and .env secrets"
  homepage "https://secretfold.com"
  version "0.3.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://secretfold.com/download/v0.3.2/secretfold-aarch64-apple-darwin.tar.gz"
      sha256 "f78d8f01ece488e111f2211817adb69d96295b53ffa4c2b16a3f998a4446243e"
    end
    on_intel do
      url "https://secretfold.com/download/v0.3.2/secretfold-x86_64-apple-darwin.tar.gz"
      sha256 "7201bdaed80ba84d9d265b0a144a8c85246b099734a3286a9ad7e1ed11a9f7ba"
    end
  end

  on_linux do
    on_arm do
      url "https://secretfold.com/download/v0.3.2/secretfold-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c8745802e64d6cb9c706b53e777e38d71bcd11cf60662f7b53bae53d4a993463"
    end
    on_intel do
      url "https://secretfold.com/download/v0.3.2/secretfold-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e20f7954ce3ac8f82322535f3735d2a9b1893747a2a5230353ac7728d58e49c0"
    end
  end

  def install
    bin.install "secretfold"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/secretfold --version")
  end
end
