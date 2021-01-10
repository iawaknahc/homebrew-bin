require "language/node"

class VscodeJsonLanguageserver < Formula
  url "https://registry.npmjs.org/vscode-json-languageserver/-/vscode-json-languageserver-1.3.1.tgz"
  sha256 "11a26d727e540e6015ee658543f682764380f5f72ee29f596760b7db5eb10bd7"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
