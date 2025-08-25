cask "lettura" do
  version "0.1.22"
  sha256 "b0dd689f2f012ef211f410a404d377a02bd719278e098138e121661297c9c958"

  url "https://github.com/zhanglun/lettura/releases/download/v#{version}/Lettura_#{version}_universal.dmg"
  name "Lettura"
  desc "Simple and elegant RSS reader"
  homepage "https://github.com/zhanglun/lettura"

  depends_on macos: ">= :high_sierra"

  app "Lettura.app"

  zap trash: [
    "~/Library/Application Support/Lettura",
    "~/Library/Preferences/com.zhanglun.lettura.plist",
    "~/Library/Saved Application State/com.zhanglun.lettura.savedState",
  ]
end
