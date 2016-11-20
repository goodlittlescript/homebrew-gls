require "formula"

class Timeseries < Formula
  homepage "https://github.com/goodlittlescript/timeseries"
  url "https://github.com/goodlittlescript/timeseries/archive/v1.0.0.tar.gz"
  sha256 "ad58b9a1f9e57f278917d150f7d0c937129c1cf2"
  version "1.0.0"

  def install
    FileUtils.cp_r "bin", bin
    FileUtils.cp_r "lib", lib

    FileUtils.mkdir_p man1
    FileUtils.cp "man/man1/timeseries.1", man1

    Dir.chdir(prefix) do
      system "bundle install --standalone --path vendor/bundle"
    end
  end

  test do
    system "#{bin}/timeseries -h"
  end
end
