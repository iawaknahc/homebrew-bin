class Gopls < Formula
  url "https://github.com/golang/tools/archive/gopls/v0.4.4.tar.gz"
  sha256 "2e7bb806952e0266c65c33784698aa5ddf493ad8911e24ba063bb7e73fdfab5e"

  depends_on "go"

  def install
    Dir.chdir "gopls"
    system "go", "build"
    bin.install "gopls"
  end
end
