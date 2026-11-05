cask "macrophone" do
  version "1.1.5"
  sha256 "457d64acf3f31b76eb2a94bb0c0b6904c71886da3d8b43f37953db9b4c6334a2"

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
