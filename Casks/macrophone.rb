cask "macrophone" do
  version "1.1.3"
  sha256 "29fd791f4dc728b36c650abed358166d4179a72de755ff73578e5ad0b5b79e23"

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
