# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Protolint < Formula
  desc "Pluggable tool to enforce Protocol Buffer style and conventions"
  homepage "https://github.com/yoheimuta/protolint"
  version "0.43.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/yoheimuta/protolint/releases/download/v0.43.0/protolint_0.43.0_Darwin_x86_64.tar.gz"
      sha256 "e7efd2358df191464985ae9268acded8fa1d94b3b3d421e9b63a02c4c3bb11f3"

      def install
        bin.install "protolint"
        bin.install "protoc-gen-protolint"
        prefix.install "LICENSE"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/yoheimuta/protolint/releases/download/v0.43.0/protolint_0.43.0_Darwin_arm64.tar.gz"
      sha256 "b6fe8e24b0b043fcacbccfa9456c0cb719be20bb1777363ce1fd6cbb9525982d"

      def install
        bin.install "protolint"
        bin.install "protoc-gen-protolint"
        prefix.install "LICENSE"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/yoheimuta/protolint/releases/download/v0.43.0/protolint_0.43.0_Linux_armv6.tar.gz"
      sha256 "a62681edffda49380daf42f29e3df627d22685680a2293c38f573beddc3e7995"

      def install
        bin.install "protolint"
        bin.install "protoc-gen-protolint"
        prefix.install "LICENSE"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/yoheimuta/protolint/releases/download/v0.43.0/protolint_0.43.0_Linux_arm64.tar.gz"
      sha256 "92f8a4aaad36075dce809b0428d3b84df3243b37e7874e9ab225ec3687486690"

      def install
        bin.install "protolint"
        bin.install "protoc-gen-protolint"
        prefix.install "LICENSE"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/yoheimuta/protolint/releases/download/v0.43.0/protolint_0.43.0_Linux_x86_64.tar.gz"
      sha256 "72884cf7e2c612c9a7e83835e29ae35d4130726aba4c53d901e3b3a1f68b9c72"

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
