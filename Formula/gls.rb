require "formula"

class Gls < Formula
  homepage "https://github.com/goodlittlescript/gls"
  url "https://github.com/goodlittlescript/gls/archive/1.0.2.tar.gz"
  sha1 "32be1f150048db80c79ca3aa34f85705feece735"
  version "1.0.2"

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
