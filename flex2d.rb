require "formula"

class Flex2d < Formula
  homepage "http://csdms.colorado.edu/wiki/Model:Flex2D"
  url "https://github.com/csdms-contrib/flex2d.git", :tag => "0.1"
  head "https://github.com/csdms-contrib/flex2d.git"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build

  def install
    system "bash", "bootstrap"
    system "bash", "configure", "--prefix=#{prefix}"
    system "make"
    system "make", "install"

    (share + 'flex2d').install "load2dandes"
  end

  test do
    cp "#{share}/flex2d/load2dandes", testpath
    system "#{bin}/flex2d"
  end
end
