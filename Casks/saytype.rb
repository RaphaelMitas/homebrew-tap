cask "saytype" do
  version "0.2.5"
  sha256 "41b5c2233860a3d98a3f5582cd75685a6acbb95f3df308c83b8310fc43d92a4b"

  url "https://github.com/raphaelmitas/saytype/releases/download/v#{version}/Saytype-#{version}.zip"
  name "Saytype"
  desc "Push-to-talk speech-to-text for macOS"
  homepage "https://github.com/raphaelmitas/saytype"

  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  app "Saytype.app"

  zap trash: [
    "~/Library/Application Support/com.raphaelmitas.saytype",
    "~/Library/Caches/com.raphaelmitas.saytype",
    "~/Library/Preferences/com.raphaelmitas.saytype.plist",
  ]
end
