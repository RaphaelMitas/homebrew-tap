cask "delegate" do
  version "0.2.4"
  sha256 "7beccd4833cd352ea48b564d87527961405e1ff32e998a09d35892fc7600dc52"

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
