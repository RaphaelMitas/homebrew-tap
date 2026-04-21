cask "saytype" do
  version "0.2.19"
  sha256 "d099d93202c35645241783dd7692a9a66b7049875647cb540d7c6312bcea9931"

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
