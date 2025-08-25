cask "fladder" do
  version "0.7.0"
  sha256 "c2cc2298a2d586b8a28910fe6b0a8523e4290da0207c55d1c26898ade5546a46"

  url "https://github.com/DonutWare/Fladder/releases/download/v#{version}/Fladder-macOS-#{version}.dmg"
  name "Fladder"
  desc "Simple Jellyfin frontend built on top of Flutter"
  homepage "https://github.com/DonutWare/Fladder"

  depends_on macos: ">= :mojave"

  app "Fladder.app"

  zap trash: [
    "~/Library/Application Support/Fladder",
    "~/Library/Preferences/com.donutware.fladder.plist",
    "~/Library/Saved Application State/com.donutware.fladder.savedState",
  ]
end
