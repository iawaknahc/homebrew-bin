require "language/node"

class VscodeJsonLanguageserver < Formula
  url "https://registry.npmjs.org/vscode-json-languageserver-bin/-/vscode-json-languageserver-bin-1.0.1.tgz"
  sha256 "ae2680e7a465f64a145e76c44c9a48e64376425fa8150997fc528a2d5be685c6"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
