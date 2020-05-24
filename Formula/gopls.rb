class Gopls < Formula
  url "https://github.com/golang/tools/archive/gopls/v0.4.1.tar.gz"
  sha256 "da0594c469cb558f8059dd8edaf9fd662310ec4bc7ae41bb9b0a7266501472ad"

  depends_on "go"

  def install
    Dir.chdir "gopls"
    system "go", "build"
    bin.install "gopls"
  end
end
