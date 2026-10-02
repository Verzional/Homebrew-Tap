cask "cryptonotch" do
  version "1.3.0"
  sha256 "5dd0f79424ea16d24f470df6976bd3ccca8a43527ece35aa495e567d881a5932"

  url "https://github.com/Verzional/CryptoNotch/releases/download/v#{version}/CryptoNotch.dmg"
  name "CryptoNotch"
  desc "Real-time cryptocurrency ticker in your MacBook notch"
  homepage "https://github.com/Verzional/CryptoNotch"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "CryptoNotch.app"

  zap trash: "~/Library/Preferences/com.verzional.CryptoNotch.plist"
end
