class Gopls < Formula
  url "https://github.com/golang/tools/archive/gopls/v0.5.1.tar.gz"
  sha256 "8e29dd44f9bc1e0e1dfc64035af5e7aa195b3c20b124606fc1b082315886d6e3"

  depends_on "go"

  def install
    Dir.chdir "gopls"
    system "go", "build"
    bin.install "gopls"
  end
end
