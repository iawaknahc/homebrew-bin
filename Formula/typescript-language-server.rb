require "language/node"

class TypescriptLanguageServer < Formula
  url "https://registry.npmjs.org/typescript-language-server/-/typescript-language-server-0.4.0.tgz"
  sha256 "9f6572b7f7b2ecf8f3263433c983498b343662bc2f6d928b567f5ee150d87d12"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
