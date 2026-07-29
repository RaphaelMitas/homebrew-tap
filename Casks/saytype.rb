cask "saytype" do
  version "0.3.0"
  sha256 "ca9b61c87acfd26171cd297b23eb6416ed5f2ddf7a7396fa84b0c67b7b8967cf"

  url "https://github.com/RaphaelMitas/saytype/releases/download/v#{version}/Saytype-#{version}.zip"
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
