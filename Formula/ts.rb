require "formula"

class Ts < Formula
  homepage "https://github.com/thinkerbot/ts"
  url "https://github.com/thinkerbot/ts/archive/v2.0.1.tar.gz"
  sha256 "c77fac72d8577c383f712df8b6cdff095611def0135bcaab278de676e351bc2d"
  version "2.0.1"

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
