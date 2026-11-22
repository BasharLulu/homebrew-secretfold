# Homebrew cask for the Secretfold desktop app. Rendered by scripts/release/homebrew.mjs into
# the tap repo (Casks/secretfold-app.rb).
#   brew install --cask basharlulu/secretfold/secretfold-app
# Until the app is signed with an Apple Developer ID, macOS blocks the first launch: the
# caveats explain the one-time "Open anyway" step.
cask "secretfold-app" do
  version "0.3.0"
  sha256 "0ebbe5754ba5d6f0cacec9647f5e9cef313a9a2efee5634d61dcd39cb9b4b214"

  url "https://secretfold.com/download/v0.3.0/Secretfold_0.3.0_universal.dmg"
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

  caveats <<~EOS
    Secretfold isn't signed with an Apple Developer ID yet. The first time, open it from
    Finder with right-click > Open, or allow it in System Settings > Privacy & Security.
  EOS
end
