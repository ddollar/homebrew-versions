class Unison240 < Formula
  homepage "http://www.cis.upenn.edu/~bcpierce/unison/"
  url "http://www.seas.upenn.edu/~bcpierce/unison//download/releases/unison-2.40.128/unison-2.40.128.tar.gz"
  sha1 "392a573cbf331d71cac8ccb32f5440dceec88470"

  depends_on "objective-caml"

  def install
    ENV.j1
    ENV.delete "CFLAGS" # ocamlopt reads CFLAGS but doesn't understand common options
    system "make ./mkProjectInfo"
    system "make UISTYLE=text"
    bin.install "unison"
  end
end
