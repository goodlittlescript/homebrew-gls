require "formula"

class Gls < Formula
  homepage "https://github.com/goodlittlescript/gls"
  url "https://github.com/goodlittlescript/gls/archive/1.0.2.tar.gz"
  sha256 "3924bd01bceca46c9c86f57c9ed3c20396bb1ecf1cbe9d8ad9ac99ea66928e53"
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
