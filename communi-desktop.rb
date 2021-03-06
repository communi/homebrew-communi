require "formula"

class CommuniDesktop < Formula
  homepage "https://github.com/communi/communi-desktop"
  url "https://github.com/communi/communi-desktop.git", :tag => "v3.5.0"
  head "https://github.com/communi/communi-desktop.git"

  depends_on "qt5" => :build
  depends_on "libcommuni"

  def install
    ENV.deparallelize  # if your formula fails when building in parallel
    system "qmake"
    system "make"
    system "make", "install"
  end

  test do
    system "true"
  end
end
