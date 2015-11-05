require "formula"

class Ts < Formula
  homepage "https://github.com/thinkerbot/ts"
  url "https://github.com/thinkerbot/ts/archive/v2.0.0.tar.gz"
  sha1 "5fb3b981da5ff9f750582eea7f3d0d1f3dea0dae"
  version "2.0.0"

  def install
    FileUtils.mkdir_p bin
    FileUtils.cp "bin/ts", bin

    FileUtils.mkdir_p man1
    FileUtils.cp "man/man1/ts.1", man1
  end

  test do
    File.open("example", "w") do |io|
      io.puts TEST_SCRIPT
    end
    FileUtils.chmod 0755, "example"
    system "#{bin}/ts example"
  end

  TEST_SCRIPT = "\
#!/bin/sh

test_pass () {
true
}

. ts
"
end
