require "formula"
require "open3"

class Wrf < Formula
  homepage "https://github.com/yyr/wrf"
  head "https://github.com/yyr/wrf.git"
  sha1 ""

  depends_on :fortran
  depends_on "homebrew/science/netcdf" => "enable-fortran" unless OS.linux?
  depends_on "csdms/dupes/netcdf" => "enable-fortran" if OS.linux?

  def install
    ENV['NETCDF'] = Formula['netcdf'].prefix

    Open3.popen3("./configure") do |stdin, stdout, _|
      stdin.write "15\n" unless OS.linux? # Darwin, serial
      stdin.write "32\n" if OS.linux? # Linux, serial
      stdin.write "0\n" # no nesting
      !!(stdout.read)
    end
    system "./compile em_real"
  end

  test do
    system "false"
  end
end
