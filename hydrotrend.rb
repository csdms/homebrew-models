require "formula"

class Hydrotrend < Formula
  version "3.1"
  homepage "http://csdms.colorado.edu/wiki/Model:HydroTrend"
  url "https://github.com/csdms-contrib/hydrotrend.git", :revision => "9f070977ac2e9945a7b86fed213086ea09acbfcc"
  head "https://github.com/csdms-contrib/hydrotrend.git"

  depends_on "cmake" => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make"
    system "make", "install"
  end

  test do
    system "#{bin}/hydrotrend", "--version"
  end
end
