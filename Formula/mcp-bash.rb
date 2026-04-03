class McpBash < Formula
  desc "MCP server framework for Bash"
  homepage "https://github.com/yaniv-golan/mcp-bash-framework"
  url "https://github.com/yaniv-golan/mcp-bash-framework/releases/download/v1.2.0/mcp-bash-v1.2.0.tar.gz"
  sha256 "317c5a265167792dd0698fc66f1e915f7b88fd2c4059720d1939e22482d6cfbc"
  license "MIT"

  depends_on "bash"
  depends_on "jq"

  def install
    prefix.install Dir["*"]
    bin.install_symlink prefix/"bin/mcp-bash"
  end

  test do
    system bin/"mcp-bash", "--version"
  end
end
