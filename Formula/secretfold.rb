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
      sha256 "9b63e0e78bf2bd72a0676f0d9f90ccf65208567ddb2d7475904e09772387816e"
    end
    on_intel do
      url "https://secretfold.com/download/v0.3.0/secretfold-x86_64-apple-darwin.tar.gz"
      sha256 "22924586b941341683f7ba195bae08d51e685124c08dddae1fb67a95f3c1ef76"
    end
  end

  on_linux do
    on_arm do
      url "https://secretfold.com/download/v0.3.0/secretfold-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "21f72661b6b5e57629a86f691129f999bd501a97ab8b4d3dab7dea78fcf69abb"
    end
    on_intel do
      url "https://secretfold.com/download/v0.3.0/secretfold-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "95a38010727766e744f838e020fcec4f1cc4ccf8ff2ab7607b3d7e53eb2dd422"
    end
  end

  def install
    bin.install "secretfold"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/secretfold --version")
  end
end
