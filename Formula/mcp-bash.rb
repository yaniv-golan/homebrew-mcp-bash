class McpBash < Formula
  desc "MCP server framework for Bash"
  homepage "https://github.com/yaniv-golan/mcp-bash-framework"
  url "https://github.com/yaniv-golan/mcp-bash-framework/releases/download/v1.6.0/mcp-bash-v1.6.0.tar.gz"
  sha256 "2c5d2cfb141278af0412abce44d7456bcbd237b32ed0819f985278305569340f"
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
