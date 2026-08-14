cask "photopipe" do
  version "0.2.0"
  sha256 "d4244206d3871aabba26603c0ed92b29ef7da55d5eb1f2b0562732014caaafbd"

  url "https://github.com/RaphaelMitas/photopipe/releases/download/v#{version}/photopipe-#{version}.zip"
  name "Photopipe"
  desc "Culling and pipeline manager for photo shoots"
  homepage "https://github.com/RaphaelMitas/photopipe"

  depends_on macos: ">= :sequoia"
  depends_on arch: :arm64

  app "Photopipe.app"

  zap trash: [
    "~/Library/Application Support/Photopipe",
    "~/Library/Caches/Photopipe",
    "~/Library/Saved Application State/com.photopipe.desktop.savedState",
  ]
end
