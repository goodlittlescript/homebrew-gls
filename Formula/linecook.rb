require "formula"

class Linecook < Formula
  homepage "https://github.com/goodlittlescript/linecook"
  url "https://github.com/goodlittlescript/linecook/archive/v1.0.1.tar.gz"
  sha256 "dce776e55678cc9531f870ca3eea82ac6683ac607a1cd15195abb165da5f4241"
  version "1.0.1"

  def install
    FileUtils.mkdir_p bin
    FileUtils.cp "bin/linecook", bin

    FileUtils.cp_r "lib", lib

    FileUtils.mkdir_p man1
    FileUtils.cp "man/man1/linecook.1", man1
  end

  test do
    system "#{bin}/linecook -e \"#{bin}/linecook -X\""
  end
end
