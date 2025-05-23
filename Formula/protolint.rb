# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Protolint < Formula
  desc "Pluggable tool to enforce Protocol Buffer style and conventions"
  homepage "https://github.com/yoheimuta/protolint"
  version "0.55.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/yoheimuta/protolint/releases/download/v0.55.5/protolint_0.55.5_darwin_amd64.tar.gz"
      sha256 "256f7fccaf7f9d4a116f8cb1207809d6a8a8f3065a2db9390c1bc58870acdec5"

      def install
        bin.install "protolint"
        bin.install "protoc-gen-protolint"
        prefix.install "LICENSE"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/yoheimuta/protolint/releases/download/v0.55.5/protolint_0.55.5_darwin_arm64.tar.gz"
      sha256 "1d3fc42624bbfddb639b5df1f4e36266d026bfc2fb1633f24c5530748f310bee"

      def install
        bin.install "protolint"
        bin.install "protoc-gen-protolint"
        prefix.install "LICENSE"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/yoheimuta/protolint/releases/download/v0.55.5/protolint_0.55.5_linux_amd64.tar.gz"
      sha256 "8ae0519f1b203605c08fe84c8c0f6bd9b844cef3d0f807fca7def060d1ea3677"
      def install
        bin.install "protolint"
        bin.install "protoc-gen-protolint"
        prefix.install "LICENSE"
      end
    end
    if Hardware::CPU.arm? and !Hardware::CPU.is_64_bit?
      url "https://github.com/yoheimuta/protolint/releases/download/v0.55.5/protolint_0.55.5_linux_armv6.tar.gz"
      sha256 "e7a996f916abf12383c16106531814ccf5b0c122a810be175615a784e51836d2"
      def install
        bin.install "protolint"
        bin.install "protoc-gen-protolint"
        prefix.install "LICENSE"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/yoheimuta/protolint/releases/download/v0.55.5/protolint_0.55.5_linux_arm64.tar.gz"
      sha256 "8b2b7de34beb1e8d1f811744aa2e2bd458fa6de1bf49e809c4ce35df91472ff0"
      def install
        bin.install "protolint"
        bin.install "protoc-gen-protolint"
        prefix.install "LICENSE"
      end
    end
  end

  test do
    system "#{bin}/protolint", "version"
    system "#{bin}/protoc-gen-protolint", "version"
  end
end
