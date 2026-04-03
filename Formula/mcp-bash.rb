class McpBash < Formula
  desc "MCP server framework for Bash"
  homepage "https://github.com/yaniv-golan/mcp-bash-framework"
  url "https://github.com/yaniv-golan/mcp-bash-framework/releases/download/v1.2.0/mcp-bash-v1.2.0.tar.gz"
  sha256 "432e28be2007bbfa079b72b72140743a91f63f2ab8adfe3602c1bfa7a2097927"
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
