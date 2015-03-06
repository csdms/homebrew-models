require "formula"

class Flex2dAdi < Formula
  homepage "http://csdms.colorado.edu/wiki/Model:Flex2D-ADI"
  url "https://github.com/csdms-contrib/flex2d-adi.git", :tag => "0.1"
  head "https://github.com/csdms-contrib/flex2d-adi.git"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build

  def install
    system "bash", "bootstrap"
    system "bash", "configure", "--prefix=#{prefix}"
    system "make"
    system "make", "install"

    (share + 'flex2d-adi').install Dir["west*"]
  end

  test do
    cp Dir["#{share}/flex2d-adi/west*"], testpath
    system "#{bin}/flex2d-adi"
  end
end
