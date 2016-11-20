require "formula"

class Gls < Formula
  homepage "https://github.com/goodlittlescript/gls"
  url "https://github.com/goodlittlescript/gls/archive/1.0.2.tar.gz"
  sha256 "5c971ae5d8d22c5c9a611dc82ed06b8fc6962f7e571d40675dfaaac17c0f5e33"
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
