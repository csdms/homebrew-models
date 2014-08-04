require "formula"

class Flex2dAdi < Formula
  homepage "http://csdms.colorado.edu/wiki/Model:Flex2D-ADI"
  head "https://csdms.colorado.edu/svn/flex2d-adi/trunk",
    :using => UnsafeSubversionDownloadStrategy

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
