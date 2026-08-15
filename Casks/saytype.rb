cask "saytype" do
  version "0.3.3"
  sha256 "dc6fd9f4de06fb27344ac55ef33648b3d2f1a25541b348f247f39966eacd98e7"

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
