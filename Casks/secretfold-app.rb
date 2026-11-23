# Homebrew cask for the Secretfold desktop app. Rendered by scripts/release/homebrew.mjs into
# the tap repo (Casks/secretfold-app.rb).
#   brew install --cask basharlulu/secretfold/secretfold-app
# Until the app is signed with an Apple Developer ID, macOS blocks the first launch: the
# caveats explain the one-time "Open anyway" step.
cask "secretfold-app" do
  version "0.3.2"
  sha256 "ac0449cf550a98a6667ad1622cf560308f4c4ec8a36e13a2c4a9a2578ec8ace8"

  url "https://secretfold.com/download/v0.3.2/Secretfold_0.3.2_universal.dmg"
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
