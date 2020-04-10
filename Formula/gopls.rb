class Gopls < Formula
  url "https://github.com/golang/tools/archive/gopls/v0.4.0.tar.gz"
  sha256 "ed118b7e31e956c285a21b04948ffb711474167e77c9362e60b9a76843afaf49"

  depends_on "go"

  def install
    Dir.chdir "gopls"
    system "go", "build"
    bin.install "gopls"
  end
end
