class McpBash < Formula
  desc "MCP server framework for Bash"
  homepage "https://github.com/yaniv-golan/mcp-bash-framework"
  url "https://github.com/yaniv-golan/mcp-bash-framework/releases/download/v1.9.1/mcp-bash-v1.9.1.tar.gz"
  sha256 "3574b5ab0c75302e538e33d16fb38b302fdc2274d09b04889ff8b1486815e896"
  license "MIT"

  depends_on "bash"
  depends_on "jq"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/mcp-bash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp-bash --version")
  end
end
