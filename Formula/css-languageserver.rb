require "language/node"

class CssLanguageserver < Formula
  url "https://registry.npmjs.org/vscode-css-languageserver-bin/-/vscode-css-languageserver-bin-1.4.0.tgz"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
