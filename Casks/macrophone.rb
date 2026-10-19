cask "macrophone" do
  version "1.1.0"
  sha256 "251ccb224752ef0cf8c55e32ace276b23c822804740b388e23ecc2c353fd79e1"

  url "https://sameer.us/macrophone/releases/Macrophone-#{version}.dmg"
  name "Macrophone"
  desc "Dictate and steer coding agents from your phone"
  homepage "https://sameer.us/macrophone"

  livecheck do
    url "https://sameer.us/macrophone/releases/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Macrophone.app"

  uninstall quit: "com.sameer.macrophone.mac"

  zap trash: [
    "~/Library/Application Support/Macrophone",
    "~/Library/Caches/com.sameer.macrophone.mac",
    "~/Library/HTTPStorages/com.sameer.macrophone.mac",
    "~/Library/Preferences/com.sameer.macrophone.mac.plist",
  ]
end
