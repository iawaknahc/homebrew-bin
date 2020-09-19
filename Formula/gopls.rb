class Gopls < Formula
  url "https://github.com/golang/tools/archive/gopls/v0.5.0.tar.gz"
  sha256 "1b5f80eb6da71afba18c7d4327d4913cfb9b6a0840ebb33006e3b9eccec12412"

  depends_on "go"

  def install
    Dir.chdir "gopls"
    system "go", "build"
    bin.install "gopls"
  end
end
