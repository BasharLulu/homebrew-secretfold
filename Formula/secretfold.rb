# Homebrew formula for the Secretfold CLI. Rendered by scripts/release/homebrew.mjs into the
# tap repo (github.com/BasharLulu/homebrew-secretfold, Formula/secretfold.rb).
#   brew install basharlulu/secretfold/secretfold
class Secretfold < Formula
  desc "Encrypted vault for API keys, tokens and .env secrets"
  homepage "https://secretfold.com"
  version "0.3.4"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://secretfold.com/download/v0.3.4/secretfold-aarch64-apple-darwin.tar.gz"
      sha256 "ae1246f8fe354a951040709881dd7b37744b6c91155709d5ad92805bd8ec2ded"
    end
    on_intel do
      url "https://secretfold.com/download/v0.3.4/secretfold-x86_64-apple-darwin.tar.gz"
      sha256 "4e61630e9cbc099648416c0eeeb8ec8e5e63b921aa534c22b6177f0630fd09a5"
    end
  end

  on_linux do
    on_arm do
      url "https://secretfold.com/download/v0.3.4/secretfold-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e1a28a5e57747b5e5dddc01eff541929c1b380cc45679304b09826f3cb71eb1c"
    end
    on_intel do
      url "https://secretfold.com/download/v0.3.4/secretfold-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "626cbf195d281781176db6335e68726cb67ee4d0045d1cc52a0d72e0919d4d85"
    end
  end

  def install
    bin.install "secretfold"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/secretfold --version")
  end
end
