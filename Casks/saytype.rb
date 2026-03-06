cask "saytype" do
  version "0.2.0"
  sha256 "4a31f8dc67833a05b6caf5d3ae605892fb6767638915e5f8532dcac2cae64032"

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
