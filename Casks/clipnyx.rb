cask "clipnyx" do
  version "1.2.1"
  sha256 "9b15de5af9b234ae1001a729078eba267fe43ff1facab48c5d7e1046b92bc778"

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
