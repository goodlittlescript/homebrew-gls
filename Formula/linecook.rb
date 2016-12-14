require "formula"

class Linecook < Formula
  homepage "https://github.com/goodlittlescript/linecook"
  url "https://github.com/goodlittlescript/linecook/archive/v1.0.2.tar.gz"
  sha256 "b2374442922bed7c7b286e0ef307bbd4f090c8ae85e493a56f8882f596cb629e"
  version "1.0.2"

  def install
    FileUtils.mkdir_p bin
    FileUtils.cp "bin/linecook", bin

    FileUtils.cp_r "lib", lib

    FileUtils.mkdir_p man1
    FileUtils.cp "man/man1/linecook.1", man1
  end
end
