cask "delegate" do
  version "0.2.3"
  sha256 "243d10c4a968ae208c239cf274ac77cc726a9372fec458201a441b9b05494f36"

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
