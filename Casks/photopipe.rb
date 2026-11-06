cask "photopipe" do
  version "1.4.2"
  sha256 "5fcd3409132e06cb53c33c9b751e017001306b376c4858a68f93236be33dc58c"

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
