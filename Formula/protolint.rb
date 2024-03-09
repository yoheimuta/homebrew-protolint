# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Protolint < Formula
  desc "Pluggable tool to enforce Protocol Buffer style and conventions"
  homepage "https://github.com/yoheimuta/protolint"
  version "0.48.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yoheimuta/protolint/releases/download/v0.48.0/protolint_0.48.0_darwin_arm64.tar.gz"
      sha256 "6a46686a0b873be72dedf6ee67755c072975974c4d530b07b7e0de0ab1cf523c"

      def install
        bin.install "protolint"
        bin.install "protoc-gen-protolint"
        prefix.install "LICENSE"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/yoheimuta/protolint/releases/download/v0.48.0/protolint_0.48.0_darwin_amd64.tar.gz"
      sha256 "4f0feff5e7e6edac4d93bce2db4463da72181bd905ab016c3e436e3f188db132"

      def install
        bin.install "protolint"
        bin.install "protoc-gen-protolint"
        prefix.install "LICENSE"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/yoheimuta/protolint/releases/download/v0.48.0/protolint_0.48.0_linux_arm64.tar.gz"
      sha256 "30af8e1b5258f516b6f8d1974ee6a6a7f353eb24b8344b647df377fff3f327e7"

      def install
        bin.install "protolint"
        bin.install "protoc-gen-protolint"
        prefix.install "LICENSE"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/yoheimuta/protolint/releases/download/v0.48.0/protolint_0.48.0_linux_amd64.tar.gz"
      sha256 "b38c4d8d53ca9cf786b9b7cd2aa203db07ad67092e966871ea1efae5ec22e2ef"

      def install
        bin.install "protolint"
        bin.install "protoc-gen-protolint"
        prefix.install "LICENSE"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/yoheimuta/protolint/releases/download/v0.48.0/protolint_0.48.0_linux_armv6.tar.gz"
      sha256 "10310333cd222eb45f99ffb85be616905c587a2ed7558ed23478ae5b6784e1e9"

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
