cask "delegate" do
  version "0.1.1"
  sha256 "309d45918386373f7d21e572fb60e10c60068e1eed8a63cd6d172300b21888a7"

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
