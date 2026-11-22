# Homebrew formula for the Secretfold CLI. Rendered by scripts/release/homebrew.mjs into the
# tap repo (github.com/BasharLulu/homebrew-secretfold, Formula/secretfold.rb).
#   brew install basharlulu/secretfold/secretfold
class Secretfold < Formula
  desc "Encrypted vault for API keys, tokens and .env secrets"
  homepage "https://secretfold.com"
  version "0.3.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://secretfold.com/download/v0.3.0/secretfold-aarch64-apple-darwin.tar.gz"
      sha256 "e089c55bb06956a1cf045d5c188b6e2425574b1c7d7d89cb2878fedde2f51c24"
    end
    on_intel do
      url "https://secretfold.com/download/v0.3.0/secretfold-x86_64-apple-darwin.tar.gz"
      sha256 "a31aedd012f5aa6eb6df225d88c252b236236c186d3b88a1465ede5dafa9b658"
    end
  end

  on_linux do
    on_arm do
      url "https://secretfold.com/download/v0.3.0/secretfold-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3b7947637905ae91231c1da8a4f7726f4da8151c5c750bbed3ede5528d9c2ba1"
    end
    on_intel do
      url "https://secretfold.com/download/v0.3.0/secretfold-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "184a3a1516bae17d8fc6759cc30ecd6295344884a71a720b106a0c6ae4a84c8b"
    end
  end

  def install
    bin.install "secretfold"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/secretfold --version")
  end
end
