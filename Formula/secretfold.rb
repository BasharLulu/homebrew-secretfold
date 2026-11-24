# Homebrew formula for the Secretfold CLI. Rendered by scripts/release/homebrew.mjs into the
# tap repo (github.com/BasharLulu/homebrew-secretfold, Formula/secretfold.rb).
#   brew install basharlulu/secretfold/secretfold
class Secretfold < Formula
  desc "Encrypted vault for API keys, tokens and .env secrets"
  homepage "https://secretfold.com"
  version "0.3.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://secretfold.com/download/v0.3.3/secretfold-aarch64-apple-darwin.tar.gz"
      sha256 "222dc8fa6b2cccfbfcf1dd26d0aea0557232b594a843557e113a9409cc8aa9e0"
    end
    on_intel do
      url "https://secretfold.com/download/v0.3.3/secretfold-x86_64-apple-darwin.tar.gz"
      sha256 "1ad24c374b0edebf0b126e9cf5465f069ca56414294d4916a9636d1e0c64b691"
    end
  end

  on_linux do
    on_arm do
      url "https://secretfold.com/download/v0.3.3/secretfold-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1b16eb73355ef7c0bc680019da14393b9b65d7fc8639712a635ef35d2419a837"
    end
    on_intel do
      url "https://secretfold.com/download/v0.3.3/secretfold-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a3db4e29ef4192318b0cc8327e1845f4941422dfbc011341f3c4bc7fc04b4fe2"
    end
  end

  def install
    bin.install "secretfold"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/secretfold --version")
  end
end
