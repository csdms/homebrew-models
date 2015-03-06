require "formula"

class Marssim < Formula
  homepage "http://csdms.colorado.edu/wiki/Model:MARSSIM"
  url "https://github.com/csdms-contrib/marssim.git", :tag => "3.0.0"
  head "https://github.com/csdms-contrib/marssim.git"

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
