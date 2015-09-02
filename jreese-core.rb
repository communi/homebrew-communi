require "formula"

class JreeseCore < Formula
  homepage "https://github.com/jreese/homebrew-formula"
  url "https://github.com/jreese/hang", :tag => "v1.0"

  depends_on "ack"
  depends_on "aria2"
  depends_on "autoconf"
  depends_on "automake"
  depends_on "cv"
  depends_on "gcc"
  depends_on "git"
  depends_on "htop-osx"
  depends_on "keybase"
  depends_on "mercurial"
  depends_on "mosh"
  depends_on "node"
  depends_on "python"
  depends_on "python3"
  depends_on "tmux"
  depends_on "vim"
  depends_on "watch"
  depends_on "wget"
  depends_on "zsh"

  def install
    system "make"
  end

  test do
    system "true"
  end
end

