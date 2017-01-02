require "formula"

class Linecook < Formula
  homepage "https://github.com/goodlittlescript/linecook"
  url "https://github.com/goodlittlescript/linecook/archive/v2.0.0.tar.gz"
  sha256 "f5e8bc8747734cd988768e29bff633c8488028c4ac9ec00fa4b7c88f0434b40f"
  version "2.0.0"

  def install
    FileUtils.mkdir_p bin
    FileUtils.cp "bin/linecook", bin

    FileUtils.mkdir_p man1
    FileUtils.cp "man/man1/linecook.1", man1
  end
end
