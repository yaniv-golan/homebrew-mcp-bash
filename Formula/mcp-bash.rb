class McpBash < Formula
  desc "MCP server framework for Bash"
  homepage "https://github.com/yaniv-golan/mcp-bash-framework"
  url "https://github.com/yaniv-golan/mcp-bash-framework/releases/download/v1.8.0/mcp-bash-v1.8.0.tar.gz"
  sha256 "ec1f2eb0c56ff9a8a73b0e47189e34876b2daba3cb337ff4e15b1124ebb101d5"
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
