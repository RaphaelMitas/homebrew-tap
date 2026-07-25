class DelegateMcp < Formula
  desc "Delegate agentic coding tasks from Claude Code to a local model, observably"
  homepage "https://github.com/RaphaelMitas/delegate-mcp"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/RaphaelMitas/delegate-mcp/releases/download/v#{version}/delegate-mcp-#{version}-arm64.tar.gz"
      sha256 "86f3fbfc02dddb84f1fe63281a2bbf22531677396b78601f762e8d4d2cb65428"
    end
  end

  def install
    bin.install "delegate-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/delegate-mcp version")
  end
end
