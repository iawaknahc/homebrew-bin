class Gopls < Formula
  url "https://github.com/golang/tools/archive/gopls/v0.6.2.tar.gz"
  sha256 "5103ccf16200000f92d1024cd662c589c7cae20955c9275234a10e942eff455a"

  depends_on "go"

  def install
    Dir.chdir "gopls"
    system "go", "build"
    bin.install "gopls"
  end
end
