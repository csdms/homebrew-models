require "formula"

class Aquatellus < Formula
  homepage "http://csdms.colorado.edu/wiki/Model:AquaTellUs"
  url "https://github.com/csdms-contrib/aquatellus.git", :tag => "1.0.0"
  head "https://github.com/csdms-contrib/aquatellus.git"

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
