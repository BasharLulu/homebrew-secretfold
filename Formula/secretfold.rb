# Homebrew formula for the Secretfold CLI. Rendered by scripts/release/homebrew.mjs into the
# tap repo (github.com/BasharLulu/homebrew-secretfold, Formula/secretfold.rb).
#   brew install basharlulu/secretfold/secretfold
class Secretfold < Formula
  desc "Encrypted vault for API keys, tokens and .env secrets"
  homepage "https://secretfold.com"
  version "0.3.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://secretfold.com/download/v0.3.1/secretfold-aarch64-apple-darwin.tar.gz"
      sha256 "7f841dd1a44624d6f44abc5163886e021883b7d484b605813f9bb4d7641030fb"
    end
    on_intel do
      url "https://secretfold.com/download/v0.3.1/secretfold-x86_64-apple-darwin.tar.gz"
      sha256 "09183b37ddd268b9600f0af906207ea3c8df4e32f0027ab52317ec99f75375df"
    end
  end

  on_linux do
    on_arm do
      url "https://secretfold.com/download/v0.3.1/secretfold-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f7eeac6d8a72d0095d32bb869de86cb61aaaf6aec62ae16c22df0f3dd7f50ba8"
    end
    on_intel do
      url "https://secretfold.com/download/v0.3.1/secretfold-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "93daf5c12cad444c39e7ff51bcc9d67f74e825ff6240b66090e93957f5400451"
    end
  end

  def install
    bin.install "secretfold"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/secretfold --version")
  end
end
