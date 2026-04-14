cask "clipnyx" do
  version "1.3.3"
  sha256 "07de97206114860f5c58f353789320b73bcf7eee6e9b52db85561dc0dd5daa26"

  url "https://github.com/sawasige/clipnyx/releases/download/v#{version}/Clipnyx.dmg"
  name "Clipnyx"
  desc "Clipboard history manager for macOS menu bar"
  homepage "https://github.com/sawasige/clipnyx"

  depends_on macos: ">= :sequoia"

  app "Clipnyx.app"

  zap trash: [
    "~/Library/Application Support/Clipnyx",
    "~/Library/Preferences/com.himatsubu.Clipnyx.plist",
  ]
end
