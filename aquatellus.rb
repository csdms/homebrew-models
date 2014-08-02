require "formula"

class Aquatellus < Formula
  homepage "http://csdms.colorado.edu/wiki/Model:AquaTellUs"
  head "https://csdms.colorado.edu/svn/aquatellus/trunk",
    :using => UnsafeSubversionDownloadStrategy

  depends_on "cmake" => :build
  depends_on "pkgconfig" => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make"
    system "make", "install"
  end

  test do
    system "false"
  end
end
