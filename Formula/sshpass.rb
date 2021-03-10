require "formula"

class Sshpass < Formula
  homepage "https://sourceforge.net/projects/sshpass"
  version "1.09"
  url "https://sourceforge.net/projects/sshpass/files/sshpass/#{version}/sshpass-#{version}.tar.gz"
  sha256 "71746e5e057ffe9b00b44ac40453bf47091930cba96bbea8dc48717dedc49fb7"

  depends_on "gnu-sed"

  def install
    system "./configure",
           "--disable-debug",
           "--disable-dependency-tracking",
           "--prefix=#{prefix}"
    system "make install"
  end

  def test
    system "sshpass"
  end
end
