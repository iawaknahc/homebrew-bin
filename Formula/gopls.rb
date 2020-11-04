class Gopls < Formula
  url "https://github.com/golang/tools/archive/gopls/v0.5.2.tar.gz"
  sha256 "7a0f7a3147a804df04f86d4d6efd6112f33f18bb469487005c713cc976cead6e"

  depends_on "go"

  def install
    Dir.chdir "gopls"
    system "go", "build"
    bin.install "gopls"
  end
end
