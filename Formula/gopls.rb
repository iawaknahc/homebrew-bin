class Gopls < Formula
  url "https://github.com/golang/tools/archive/gopls/v0.4.3.tar.gz"
  sha256 "b6dfeded6bec0bf960978519cf2d05cb6d996f15d0f13829bdb490de3ca6c675"

  depends_on "go"

  def install
    Dir.chdir "gopls"
    system "go", "build"
    bin.install "gopls"
  end
end
