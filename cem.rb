require "formula"

class Cem < Formula
  homepage "http://csdms.colorado.edu/wiki/Model:CEM"
  url "https://github.com/csdms/cem-old.git", :tag => "0.2"
  head "https://github.com/csdms/cem-old.git"

  depends_on "csdms/dupes/glib"
  depends_on "cmake" => :build
  depends_on "pkgconfig" => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make"
    system "make", "install"
  end

  test do
    system "#{bin}/deltas", "--version"
    system "#{bin}/waves", "--version"
  end
end
