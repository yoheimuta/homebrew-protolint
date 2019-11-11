class Protolint < Formula
  desc "A pluggable tool to enforce Protocol Buffer style and conventions. "
  homepage "https://github.com/yoheimuta/protolint"
  version "v0.19.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/yoheimuta/protolint/releases/download/v0.19.1/protolint_0.19.1_Darwin_x86_64.tar.gz"
    sha256 "f1c8d213421201298116dae80e47b116c59124eeecc9df84e4b23be10badbb77"
  elsif OS.linux?
    url "https://github.com/yoheimuta/protolint/releases/download/v0.19.1/protolint_0.19.1_Linux_x86_64.tar.gz"
    sha256 "fa03bd3b1711d4c9e755c5b0c1ddcca969ac65ba7eb4b6fa3ad49676b379aedb"
  end

  def install
    bin.install "protolint"
    prefix.install "LICENSE"
  end

  test do
    system "#{bin}/protolint list"
  end
end
