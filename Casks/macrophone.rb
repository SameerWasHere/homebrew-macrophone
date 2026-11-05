cask "macrophone" do
  version "1.1.6"
  sha256 "d918c50e50893eab9e33b064f99e0671ddfcf7e539b715d9eb45186dc470fd71"

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
