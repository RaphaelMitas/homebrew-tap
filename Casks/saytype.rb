cask "saytype" do
  version "1.1.1"
  sha256 "878a774955b464de53a1d1daa047ac6cb63e1a93d64b66f9fcea691bc975b970"

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
