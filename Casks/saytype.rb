cask "saytype" do
  version "1.0.3"
  sha256 "3cf23ebf91d453068b322f2a7a077734f915e2634fb5fb3e8b994d5ee9516439"

  url "https://github.com/RaphaelMitas/saytype/releases/download/v#{version}/Saytype-#{version}.zip"
  name "Saytype"
  desc "Push-to-talk speech-to-text"
  homepage "https://github.com/raphaelmitas/saytype"

  auto_updates true

  depends_on macos: :monterey
  depends_on arch: :arm64

  app "Saytype.app"

  zap trash: [
    "~/Library/Application Support/com.raphaelmitas.saytype",
    "~/Library/Caches/com.raphaelmitas.saytype",
    "~/Library/Preferences/com.raphaelmitas.saytype.plist",
  ]
end
