class Protolint < Formula
  desc "A pluggable tool to enforce Protocol Buffer style and conventions. "
  homepage "https://github.com/yoheimuta/protolint"
  version "v0.21.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/yoheimuta/protolint/releases/download/v0.21.0/protolint_0.21.0_Darwin_x86_64.tar.gz"
    sha256 "2f156bbb4386de3bcaa8a8e3a44db9f2a300ab186743cb81a9081f9d6fd69a36"
  elsif OS.linux?
    url "https://github.com/yoheimuta/protolint/releases/download/v0.21.0/protolint_0.21.0_Linux_x86_64.tar.gz"
    sha256 "6cd2acf0ca0fa5519ec5e3e29cc81c78a0e2d06d4b6d924427562c2779a70715"
  end

  def install
    bin.install "protolint"
    bin.install "protoc-gen-protolint"
    prefix.install "LICENSE"
  end

  test do
    system "#{bin}/protolint version"
    system "#{bin}/protoc-gen-protolint version"
  end
end
