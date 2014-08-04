require "formula"

class Storm < Formula
  homepage "http://csdms.colorado.edu/wiki/Model:STORM"
  head "https://csdms.colorado.edu/svn/storm/trunk",
    :using => UnsafeSubversionDownloadStrategy

  depends_on :fortran

  def install
    inreplace "Makefile", /gfortran/, "\${FC}"

    system "make"
    bin.install "storm"
  end

  test do
    system "false"
  end
end
