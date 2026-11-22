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
      sha256 "1bd58adddddd12d19d21e4dee3966963242dfb1e75c1124dce95cbbf837e5215"
    end
    on_intel do
      url "https://secretfold.com/download/v0.3.0/secretfold-x86_64-apple-darwin.tar.gz"
      sha256 "0f48301679f9684dfdc91070f6eb766caf1f61aa9dffa56b06acd1c44c84ecdb"
    end
  end

  on_linux do
    on_arm do
      url "https://secretfold.com/download/v0.3.0/secretfold-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "be9ca02527807673d3331ee3ea73e2ff5919c7f6d59aa2f20baba1fc800c3404"
    end
    on_intel do
      url "https://secretfold.com/download/v0.3.0/secretfold-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c64b2ec5e2c092e9b1ebe4cdc8044c6d52ebe3112d99b8d803e696d9fd4403ba"
    end
  end

  def install
    bin.install "secretfold"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/secretfold --version")
  end
end
