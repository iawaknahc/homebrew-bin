class Gopls < Formula
  url "https://github.com/golang/tools/archive/gopls/v0.6.4.tar.gz"
  sha256 "4e90f083d3659a0640538e3e4b047b8474de5c9a69525e535b840281734fc3a5"

  depends_on "go"

  def install
    Dir.chdir "gopls"
    system "go", "build"
    bin.install "gopls"
  end
end
