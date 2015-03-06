require "formula"

class Child < Formula
  version "1.0"
  homepage ""
  head "https://github.com/childmodel/child.git"
  sha1 ""

  depends_on "cmake" => :build

  def install
    cd "Child/Code" do
      system "cmake", ".", *std_cmake_args
      system "make"
      system "make", "install"
    end
  end

  test do
    system "false"
  end
end
