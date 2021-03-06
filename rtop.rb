class Rtop < Formula
  homepage "http://www.rtop-monitor.org/"

  head do
    url "https://github.com/rapidloop/rtop.git"
    depends_on "go" => :build
  end

  def install
    system "make"
    bin.install "rtop"
  end

  test do
    system "#{bin}/rtop --version"
  end
end
