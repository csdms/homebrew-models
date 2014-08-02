require "formula"

class Child < Formula
  version "1.0"
  homepage ""
  url "https://csdms.colorado.edu/svn/child/trunk/Child/Code",
    :using => UnsafeSubversionDownloadStrategy
  sha1 ""

  depends_on "cmake" => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make"
    system "make", "install"
  end

  test do
    system "false"
  end
end
