cask "delegate" do
  version "0.1.0"
  sha256 "61ab0b3b18fcb7128a5f017f46e680e17e25012c46da4c3c57da8bf36ef7b91e"

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
