cask "localstack-desktop" do
  version "1.0.7"
  sha256 "f91e8ba34da1425576398f60c220837fc10cfbe0be34cea028fc2c20afbddaa3"

  url "https://github.com/localstack/localstack-desktop/releases/download/#{version}/LocalStack-Desktop-community-#{version}.dmg"
  name "Localstack Desktop"
  desc "Easily manage your LocalStack instance"
  homepage "https://github.com/localstack/localstack-desktop"

  depends_on macos: ">= :high_sierra"

  app "LocalStack Desktop.app"

  zap trash: [
    "~/Library/Application Support/LocalStack Desktop",
    "~/Library/Preferences/com.localstack.localstack-desktop.plist",
    "~/Library/Saved Application State/com.localstack.localstack-desktop.savedState",
  ]
end
