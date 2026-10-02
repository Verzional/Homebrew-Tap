cask "cryptonotch" do
  version "1.3.2"
  sha256 "18090e8b34e4299d8a519526b72dcc79b8fc260f0437a69cb60d7e79f7728665"

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
