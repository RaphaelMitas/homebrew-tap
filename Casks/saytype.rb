cask "saytype" do
  version "0.2.1"
  sha256 "535e1479daea1dc8907d808b88da32f09bc90472d3dca05e788c1a93e4080d16"

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
