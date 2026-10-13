cask "photopipe" do
  version "1.1.1"
  sha256 "c8ddae9c22d9610ea42e9056b5a405bf32a27cbe04ec8e3b305a924c2010a444"

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
