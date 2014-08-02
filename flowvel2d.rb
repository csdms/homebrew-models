require "formula"

class Flowvel2d < Formula
  homepage "http://csdms.colorado.edu/wiki/Model:2DFLOWVEL"
  head "https://csdms.colorado.edu/svn/2dflowvel/trunk",
    :using => UnsafeSubversionDownloadStrategy

  depends_on :fortran

  def install
    system "make"
    bin.install "2dflowvel"
  end

  test do
    system "false"
  end
end
