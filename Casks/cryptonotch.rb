cask "cryptonotch" do
  version "1.0.0"
  sha256 "a424a76d8572cda231739385a8c39d3fa1fd63ba900299ecf100e67d38fc1aad"

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
