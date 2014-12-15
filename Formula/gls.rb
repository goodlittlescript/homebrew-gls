require "formula"

class Gls < Formula
  homepage "https://github.com/goodlittlescript/gls"
  url "https://github.com/goodlittlescript/gls/archive/v1.0.1.tar.gz"
  sha1 "f0d41cd6af11c3dad7667387ad049a2f78a4e840"
  version "1.0.1"

  def core; prefix+'core' end

  def install
    FileUtils.cp_r "bin", bin
    FileUtils.cp_r "core", core

    FileUtils.mkdir_p man1
    FileUtils.cp "man/man1/gls.1", man1
  end

  test do
    system "#{bin}/gls"
  end
end
