class DelegateMcp < Formula
  desc "Delegate agentic coding tasks from Claude Code to a local model, observably"
  homepage "https://github.com/RaphaelMitas/delegate-mcp"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/RaphaelMitas/delegate-mcp/releases/download/v#{version}/delegate-mcp-#{version}-arm64.tar.gz"
      sha256 "cf506e1acd700b9f1daec44c4337a595c1e3e1273c960ca76eaaf8de65b3fd4e"
    end
  end

  def install
    bin.install "delegate-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/delegate-mcp version")
  end
end
