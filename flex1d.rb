require "formula"

class Flex1d < Formula
  homepage "http://csdms.colorado.edu/wiki/Model:Flex1D"
  url "https://github.com/csdms-contrib/flex1d.git", :tag => "0.1"
  head "https://github.com/csdms-contrib/flex1d.git"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build

  def install
    system "bash", "bootstrap"
    system "bash", "configure", "--prefix=#{prefix}"
    system "make"
    system "make", "install"

    (share + 'flex1d').install "load1dandes"
  end

  test do
    cp "#{share}/flex1d/load1dandes", testpath
    system "#{bin}/flex1d"
  end
end
