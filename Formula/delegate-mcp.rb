class DelegateMcp < Formula
  desc "Delegate agentic coding tasks from Claude Code to a local model, observably"
  homepage "https://github.com/RaphaelMitas/delegate-mcp"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/RaphaelMitas/delegate-mcp/releases/download/v#{version}/delegate-mcp-#{version}-arm64.tar.gz"
      sha256 "fd89a7ef3cbaa45930ed3646f6f6a0c54a19baaeccda39fa2849beeaa29c4ef0"
    end
  end

  def install
    bin.install "delegate-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/delegate-mcp version")
  end
end
