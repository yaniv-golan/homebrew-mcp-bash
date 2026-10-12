class McpBash < Formula
  desc "MCP server framework for Bash"
  homepage "https://github.com/yaniv-golan/mcp-bash-framework"
  url "https://github.com/yaniv-golan/mcp-bash-framework/releases/download/v1.9.0/mcp-bash-v1.9.0.tar.gz"
  sha256 "3c5ab01086b7bf6b1c6f12c14d66d2056a8ccd34b41f0d72979e8a7973ea01a4"
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
