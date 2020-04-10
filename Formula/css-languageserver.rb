require "language/node"

class CssLanguageserver < Formula
  url "https://registry.npmjs.org/vscode-css-languageserver-bin/-/vscode-css-languageserver-bin-1.4.0.tgz"
  sha256 "daa006f74a6baa265e743811bf224003048144c805bc3a9dd3f8175d4815bced"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
