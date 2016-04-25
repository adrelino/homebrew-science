class G2o < Formula
  desc "A General Framework for Graph Optimization"
  homepage "http://openslam.org/g2o.html"
  url "https://github.com/RainerKuemmerle/g2o/archive/20160424_git.tar.gz"
  version "2016-04-24"
  sha256 "31abd5f4acf8407c18318b04f3ffc867c8ea7de89f18d51f9e92eb734d523b24"

  depends_on "cmake" => :build
  depends_on "eigen"
  depends_on "suite-sparse" => :recommended
  depends_on "qt" => :optional
  depends_on "libqglviewer" => :optional

  def install
    mkdir "build" do
      system "cmake", "..", *std_cmake_args
      system "make", "install"
    end
  end

  test do
    system "#{bin}/g2o", "-v"
  end
end
