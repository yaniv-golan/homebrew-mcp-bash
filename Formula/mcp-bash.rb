class McpBash < Formula
  desc "MCP server framework for Bash"
  homepage "https://github.com/yaniv-golan/mcp-bash-framework"
  url "https://github.com/yaniv-golan/mcp-bash-framework/releases/download/v1.3.0/mcp-bash-v1.3.0.tar.gz"
  sha256 "f337f40d89ceafa14bb90dec80fb2b12f913c4758af8ec2340cb7199bbce0f11"
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
