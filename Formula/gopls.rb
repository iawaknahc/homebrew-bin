class Gopls < Formula
  url "https://github.com/golang/tools/archive/gopls/v0.4.2.tar.gz"
  sha256 "bce85aed296569fa4342845b6248ee100a71adefde17fbbc75c32deaec64f058"

  depends_on "go"

  def install
    Dir.chdir "gopls"
    system "go", "build"
    bin.install "gopls"
  end
end
