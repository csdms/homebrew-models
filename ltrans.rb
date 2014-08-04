require "formula"

class Ltrans < Formula
  homepage "http://csdms.colorado.edu/wiki/Model:LTRANS"
  head "https://csdms.colorado.edu/svn/ltrans/trunk/src",
    :using => UnsafeSubversionDownloadStrategy

  depends_on :fortran
  depends_on "netcdf" => "enable-fortran"

  def install
    ENV.deparallelize  # if your formula fails when building in parallel

    inreplace "makefile", /^FC =/, "# FC ="
    inreplace "makefile", /^NETCDF_/, "# NETCDF_"

    ENV['NETCDF_INCDIR'] = Formula['netcdf'].include
    ENV['NETCDF_LIBDIR'] = Formula['netcdf'].lib

    system "make"
    bin.install "LTRANS" => "ltrans"
  end

  test do
    system "false"
  end
end
