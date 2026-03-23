cask "clipnyx" do
  version "1.2.2"
  sha256 "bb45c76db5badafdbfbe5170f69f5f0caf0419682008f8d7dcc05cd5e391134f"

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
