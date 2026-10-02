cask "cryptonotch" do
  version "1.2.0"
  sha256 "61d877dcf53634e5b62e40d8bf7df9047c275507385b12c5b9a53f0f3e8a2238"

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
