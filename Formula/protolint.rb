# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Protolint < Formula
  desc "Pluggable tool to enforce Protocol Buffer style and conventions"
  homepage "https://github.com/yoheimuta/protolint"
  version "0.50.2"

  on_macos do
    on_intel do
      url "https://github.com/yoheimuta/protolint/releases/download/v0.50.2/protolint_0.50.2_darwin_amd64.tar.gz"
      sha256 "3ed51a16662c0485b57dfe53ebe3015ea7fda521878c11f11d4896507c519143"

      def install
        bin.install "protolint"
        bin.install "protoc-gen-protolint"
        prefix.install "LICENSE"
      end
    end
    on_arm do
      url "https://github.com/yoheimuta/protolint/releases/download/v0.50.2/protolint_0.50.2_darwin_arm64.tar.gz"
      sha256 "f22ddb48035257ee1ef679da95579e013044bf365198522f4cfaa36d9999e22f"

      def install
        bin.install "protolint"
        bin.install "protoc-gen-protolint"
        prefix.install "LICENSE"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/yoheimuta/protolint/releases/download/v0.50.2/protolint_0.50.2_linux_amd64.tar.gz"
        sha256 "b48a9d3d453d74f394ab2070c6361af16ab4ec9cb9d54742fb4334d03b92075c"

        def install
          bin.install "protolint"
          bin.install "protoc-gen-protolint"
          prefix.install "LICENSE"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/yoheimuta/protolint/releases/download/v0.50.2/protolint_0.50.2_linux_armv6.tar.gz"
        sha256 "f190dea0ec11df2e59812fae26bb8cd7b4583f3ed2d430969e358357edf74283"

        def install
          bin.install "protolint"
          bin.install "protoc-gen-protolint"
          prefix.install "LICENSE"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/yoheimuta/protolint/releases/download/v0.50.2/protolint_0.50.2_linux_arm64.tar.gz"
        sha256 "08b83556bf935eb84bad779391e58e1d11f2ef70f08926fdc0c1f2b5feaa28da"

        def install
          bin.install "protolint"
          bin.install "protoc-gen-protolint"
          prefix.install "LICENSE"
        end
      end
    end
  end

  test do
    system "#{bin}/protolint", "version"
    system "#{bin}/protoc-gen-protolint", "version"
  end
end
