cask "saytype" do
  version "0.3.5"
  sha256 "c3f4d5a5a2fd9939c7c0bd6c8610bbb33908b15f6d36a9a280fa480dfa17acf8"

  url "https://github.com/RaphaelMitas/saytype/releases/download/v#{version}/Saytype-#{version}.zip"
  name "Saytype"
  desc "Push-to-talk speech-to-text"
  homepage "https://github.com/raphaelmitas/saytype"

  depends_on macos: :monterey
  depends_on arch: :arm64

  app "Saytype.app"

  zap trash: [
    "~/Library/Application Support/com.raphaelmitas.saytype",
    "~/Library/Caches/com.raphaelmitas.saytype",
    "~/Library/Preferences/com.raphaelmitas.saytype.plist",
  ]
end
