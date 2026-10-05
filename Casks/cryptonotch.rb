cask "cryptonotch" do
  version "1.4.0"
  sha256 "4c8cdac2124413e6f8fd153b9d5e771cad4ad0331c2df6c9abd2b7d5efa6e211"

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
