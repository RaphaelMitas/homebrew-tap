cask "saytype" do
  version "1.1.3"
  sha256 "23c1b198677a526684e1c541c44b461f0adf9bd7c204a0d8597d477e429f4e89"

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
