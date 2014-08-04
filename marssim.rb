require "formula"

class Marssim < Formula
  homepage "http://csdms.colorado.edu/wiki/Model:MARSSIM"
  head "https://csdms.colorado.edu/svn/marssim/trunk",
    :using => UnsafeSubversionDownloadStrategy

  depends_on "cmake" => :build
  depends_on :fortran

  def install
    ENV.deparallelize

    system "cmake", ".", *std_cmake_args
    system "make"
    system "make", "install"

    bin.install "src/run_marssim" => "marssim"
  end

  test do
    system "false"
  end
end
