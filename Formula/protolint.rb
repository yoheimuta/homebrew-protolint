class Protolint < Formula
  desc "A pluggable tool to enforce Protocol Buffer style and conventions. "
  homepage "https://github.com/yoheimuta/protolint"
  version "v0.21.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/yoheimuta/protolint/releases/download/v0.21.1/protolint_0.21.1_Darwin_x86_64.tar.gz"
    sha256 "d91cee750d82ba520e6b062eebf33c0530ce525e46f15901effa692cdc524c3e"
  elsif OS.linux?
    url "https://github.com/yoheimuta/protolint/releases/download/v0.21.1/protolint_0.21.1_Linux_x86_64.tar.gz"
    sha256 "6801dfe36d0860e583e02c652aaa087efcc8e22e4677d5d4d306cdcab6150187"
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
