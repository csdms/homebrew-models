require "formula"

class Storm < Formula
  homepage "http://csdms.colorado.edu/wiki/Model:STORM"
  head "https://github.com/csdms-contrib/storm"
  sha1 ""

  depends_on "cmake" => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make"
    system "make", "install"
  end

  test do
    system "make", "test"
  end
end
