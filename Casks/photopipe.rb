cask "photopipe" do
  version "1.4.1"
  sha256 "f5e06cdc4f83583cdba7efec23458b9fd10a4d747b3ef8b932e4576c231f432e"

  url "https://github.com/RaphaelMitas/photopipe/releases/download/v#{version}/photopipe-#{version}.zip"
  name "Photopipe"
  desc "Culling and pipeline manager for photo shoots"
  homepage "https://github.com/RaphaelMitas/photopipe"

  depends_on macos: :sequoia
  depends_on arch: :arm64

  app "Photopipe.app"

  zap trash: [
    "~/Library/Application Support/Photopipe",
    "~/Library/Caches/Photopipe",
    "~/Library/Saved Application State/com.photopipe.desktop.savedState",
  ]
end
