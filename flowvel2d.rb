require "formula"

class Flowvel2d < Formula
  homepage "http://csdms.colorado.edu/wiki/Model:2DFLOWVEL"
  url "https://github.com/csdms-contrib/2dflowvel.git", :tag => "0.1"
  head "https://github.com/csdms-contrib/2dflowvel.git"

  depends_on :fortran

  def install
    inreplace "Makefile", /gfortran/, "\${FC}"

    system "make"
    bin.install "2dflowvel"
  end

  test do
    system "false"
  end
end
