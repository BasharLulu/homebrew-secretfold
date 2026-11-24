# Homebrew cask for the Secretfold desktop app. Rendered by scripts/release/homebrew.mjs into
# the tap repo (Casks/secretfold-app.rb).
#   brew install --cask basharlulu/secretfold/secretfold-app
# Until the app is signed with an Apple Developer ID, macOS blocks the first launch: the
# caveats explain the one-time "Open anyway" step.
cask "secretfold-app" do
  version "0.3.4"
  sha256 "0a9299d97c7776b411ad9f148cdf469347e2b5015c0b1a17c54903543868a1e3"

  url "https://secretfold.com/download/v0.3.4/Secretfold_0.3.4_universal.dmg"
  name "Secretfold"
  desc "Encrypted vault for API keys, tokens and .env secrets"
  homepage "https://secretfold.com"

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Secretfold.app"

  zap trash: [
    "~/Library/Application Support/com.secretfold.app",
    "~/Library/Caches/com.secretfold.app",
    "~/Library/WebKit/com.secretfold.app",
  ]
end
