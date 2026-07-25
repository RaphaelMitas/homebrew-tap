cask "delegate" do
  version "0.1.2"
  sha256 "6a3810688b1e1a3cb803fafbef8a32b2a4e0260fa5c36abfa17d6319df8cd3ec"

  url "https://github.com/RaphaelMitas/delegate-mcp/releases/download/v#{version}/delegate-mcp-#{version}.zip"
  name "Delegate"
  desc "Menu-bar UI for the delegate-mcp local delegation daemon"
  homepage "https://github.com/RaphaelMitas/delegate-mcp"

  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  app "Delegate.app"

  zap trash: [
    "~/Library/Application Support/delegate-mcp",
    "~/Library/Preferences/com.raphaelmitas.delegate.plist",
  ]
end
