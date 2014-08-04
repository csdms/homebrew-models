require "formula"

class Adi2d < Formula
  homepage "http://csdms.colorado.edu/wiki/Model:ADI-2D"
  head "https://csdms.colorado.edu/svn/adi-2d/trunk",
    :using => UnsafeSubversionDownloadStrategy

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build

  def install
    system "bash", "bootstrap"
    system "bash", "configure", "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end

  test do
    system "false"
  end
end
