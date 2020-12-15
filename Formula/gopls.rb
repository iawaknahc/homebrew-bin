class Gopls < Formula
  url "https://github.com/golang/tools/archive/gopls/v0.5.5.tar.gz"
  sha256 "08d477a7c35021ec5d8950e25e1fcac86d7ec0ce8a421c20d932029e00efb1d8"

  depends_on "go"

  def install
    Dir.chdir "gopls"
    system "go", "build"
    bin.install "gopls"
  end
end
