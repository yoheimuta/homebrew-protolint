# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Protolint < Formula
  desc "Pluggable tool to enforce Protocol Buffer style and conventions"
  homepage "https://github.com/yoheimuta/protolint"
  version "0.28.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/yoheimuta/protolint/releases/download/v0.28.2/protolint_0.28.2_Darwin_x86_64.tar.gz"
    sha256 "16ac497aadcdaa498be14f6974db453db5452dffd74ddb7d493d52762adab61d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/yoheimuta/protolint/releases/download/v0.28.2/protolint_0.28.2_Linux_x86_64.tar.gz"
    sha256 "1183793536ddc36b33bf19e822db41ce9e9e835a69b02d549c9fcc5c4cbcc6d7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/yoheimuta/protolint/releases/download/v0.28.2/protolint_0.28.2_Linux_arm64.tar.gz"
    sha256 "fce4cb6727b2c9621fcc2d7f2006be6e5ab12482b64ba0965d7a0972e5483163"
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
