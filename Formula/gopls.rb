class Gopls < Formula
  url "https://github.com/golang/tools/archive/gopls/v0.6.1.tar.gz"
  sha256 "e02bd50379993220cec2c8a3ebda1214d759a547fb96daa41dbdd12d56e61a4f"

  depends_on "go"

  def install
    Dir.chdir "gopls"
    system "go", "build"
    bin.install "gopls"
  end
end
