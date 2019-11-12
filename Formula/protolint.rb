class Protolint < Formula
  desc "A pluggable tool to enforce Protocol Buffer style and conventions. "
  homepage "https://github.com/yoheimuta/protolint"
  version "v0.20.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/yoheimuta/protolint/releases/download/v0.20.0/protolint_0.20.0_Darwin_x86_64.tar.gz"
    sha256 "4839c4c041393d0323b62e673cd43d5176b57a9b46098570869f3874bbf488fe"
  elsif OS.linux?
    url "https://github.com/yoheimuta/protolint/releases/download/v0.20.0/protolint_0.20.0_Linux_x86_64.tar.gz"
    sha256 "abc293f2d1f106a26f63d054190c82516ec293035c6630cdc9493a5338da1042"
  end

  def install
    bin.install "protolint"
    prefix.install "LICENSE"
  end

  test do
    system "#{bin}/protolint version"
  end
end
