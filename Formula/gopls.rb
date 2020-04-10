class Gopls < Formula
  url "https://github.com/golang/tools/archive/gopls/v0.4.0.tar.gz"
  depends_on "go"
  def install
    Dir.chdir "gopls"
    system "go", "build"
    bin.install "gopls"
  end
end
