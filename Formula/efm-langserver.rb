class EfmLangserver < Formula
  version "0.0.15"
  url "https://github.com/mattn/efm-langserver/archive/v#{version}.tar.gz"
  sha256 "fa238fce99a4c3f67e867e5f835a20efaa06826bda2040c398fabdbf77968c10"

  depends_on "go"

  def install
    system "go", "build", "-o", "efm-langserver"
    bin.install "efm-langserver"
  end
end
