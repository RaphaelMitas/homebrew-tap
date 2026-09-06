cask "photopipe" do
  version "0.5.1"
  sha256 "f56f6e109e344e4ddfe683682f7125a9e9444b53f0341d2f1637b1c280eaeed2"

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
