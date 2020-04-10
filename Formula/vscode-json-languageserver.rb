require "language/node"

class VscodeJsonLanguageserver < Formula
  url "https://registry.npmjs.org/vscode-json-languageserver-bin/-/vscode-json-languageserver-bin-1.0.1.tgz"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
