cask "macrophone" do
  version "1.0.2"
  sha256 "000831532afea15223980e0a5d96061994683bee49fac6f8b2fdc51e52ab56be"

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
