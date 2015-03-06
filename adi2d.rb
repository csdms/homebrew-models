require "formula"

class Adi2d < Formula
  homepage "http://csdms.colorado.edu/wiki/Model:ADI-2D"
  url "https://github.com/csdms-contrib/adi-2d.git", :tag => "0.1"
  head "https://github.com/csdms-contrib/adi-2d.git"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build

  def install
    ENV.append "LDFLAGS", "-lm"

    system "bash", "bootstrap"
    system "bash", "configure", "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end

  test do
    system "false"
  end
end
