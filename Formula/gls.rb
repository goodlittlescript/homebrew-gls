require "formula"

class Gls < Formula
  homepage "https://github.com/goodlittlescript/gls"
  url "https://github.com/goodlittlescript/gls/archive/v1.0.0.tar.gz"
  sha1 "0bbd7d686c97242a2d4b9da243942d4777ba626f"
  version "1.0.0"

  def install
    FileUtils.mkdir_p bin
    FileUtils.cp "bin/gls", bin

    # FileUtils.mkdir_p man1
    # FileUtils.cp "man/man1/gls.1", man1
  end

  test do
    system "#{bin}/gls"
  end
end
