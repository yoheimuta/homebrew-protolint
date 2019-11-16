class Protolint < Formula
  desc "A pluggable tool to enforce Protocol Buffer style and conventions. "
  homepage "https://github.com/yoheimuta/protolint"
  version "v0.20.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/yoheimuta/protolint/releases/download/v0.20.2/protolint_0.20.2_Darwin_x86_64.tar.gz"
    sha256 "19a4c5097de6ae486cf63a24965ea9c9a7b4a0a32c5fc6d692f2ee091168eaf8"
  elsif OS.linux?
    url "https://github.com/yoheimuta/protolint/releases/download/v0.20.2/protolint_0.20.2_Linux_x86_64.tar.gz"
    sha256 "f7b4df1226d321ddc9c493ef9f5af8bbd775470d263556cfd5076d831326d79b"
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
