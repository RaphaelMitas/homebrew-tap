class DelegateMcp < Formula
  desc "Delegate agentic coding tasks from Claude Code to a local model, observably"
  homepage "https://github.com/RaphaelMitas/delegate-mcp"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/RaphaelMitas/delegate-mcp/releases/download/v#{version}/delegate-mcp-#{version}-arm64.tar.gz"
      sha256 "42796df2064d748cbdeb0f84d9fef8bf7f3a17c3610107a6286408471e473e00"
    end
  end

  def install
    bin.install "delegate-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/delegate-mcp version")
  end
end
