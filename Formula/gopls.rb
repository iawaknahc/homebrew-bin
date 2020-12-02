class Gopls < Formula
  url "https://github.com/golang/tools/archive/gopls/v0.5.4.tar.gz"
  sha256 "0a93330f0ac894ea90183e2ba87ed076bef29c5767d8fb57dc928116a0b7e5e9"

  depends_on "go"

  def install
    Dir.chdir "gopls"
    system "go", "build"
    bin.install "gopls"
  end
end
