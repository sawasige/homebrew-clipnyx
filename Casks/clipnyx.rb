cask "clipnyx" do
  version "1.1.5"
  sha256 "9541b5b88e5033b80ab0cdb4a8b8d2456657f93122b88a904c3a2a79c7a5a150"

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
