class EfmLangserver < Formula
  version "0.0.26"
  url "https://github.com/mattn/efm-langserver/archive/v#{version}.tar.gz"
  sha256 "a7923aa2aeaa1933a919a27d8da65801bd94f3547f76e1122fe645129f3c1cf1"

  depends_on "go"

  def install
    system "go", "build", "-o", "efm-langserver"
    bin.install "efm-langserver"
  end
end
