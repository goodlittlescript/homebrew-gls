require "formula"

class Linecook < Formula
  homepage "https://github.com/goodlittlescript/linecook"
  url "https://github.com/goodlittlescript/linecook/archive/v1.0.0.tar.gz"
  sha256 "db36c28e6e19821784724d378474c1bbe002bd818f96ea936623fe26d76c250c"
  version "1.0.0"

  def install
    FileUtils.mkdir_p bin
    FileUtils.cp "bin/linecook", bin

    FileUtils.mkdir_p lib
    FileUtils.cp_r "lib", lib

    FileUtils.mkdir_p man1
    FileUtils.cp "man/man1/linecook.1", man1
  end

  test do
    system "#{bin}/linecook -e \"#{bin}/linecook -X\""
  end
end
