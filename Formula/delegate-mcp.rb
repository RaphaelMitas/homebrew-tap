class DelegateMcp < Formula
  desc "Delegate agentic coding tasks from Claude Code to a local model, observably"
  homepage "https://github.com/RaphaelMitas/delegate-mcp"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/RaphaelMitas/delegate-mcp/releases/download/v#{version}/delegate-mcp-#{version}-arm64.tar.gz"
      sha256 "c6b23322685e86f74f464f220f9e70603158f2a076ce5e79261958f93b056581"
    end
  end

  def install
    bin.install "delegate-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/delegate-mcp version")
  end
end
