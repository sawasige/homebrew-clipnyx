cask "clipnyx" do
  version "1.3.1"
  sha256 "16ae5c7206151d395b1f520f953b3c0d2b0af0c63656016f793f0434bb230a1f"

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
