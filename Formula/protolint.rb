# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Protolint < Formula
  desc "Pluggable tool to enforce Protocol Buffer style and conventions"
  homepage "https://github.com/yoheimuta/protolint"
  version "0.35.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/yoheimuta/protolint/releases/download/v0.35.0/protolint_0.35.0_Darwin_x86_64.tar.gz"
      sha256 "d8dc2e70845ef6d3241ea518735a131508497b7e1b6f3c6139dbdda44b4e351e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/yoheimuta/protolint/releases/download/v0.35.0/protolint_0.35.0_Darwin_arm64.tar.gz"
      sha256 "300ee7e32176f5421e331af2d28e9a3741ea917f685641d0a8729145ae77f91d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/yoheimuta/protolint/releases/download/v0.35.0/protolint_0.35.0_Linux_x86_64.tar.gz"
      sha256 "edcc6fb4148027af05148e9ce6023aee50325f5fa9da7f59609286468161d2ac"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/yoheimuta/protolint/releases/download/v0.35.0/protolint_0.35.0_Linux_arm64.tar.gz"
      sha256 "58562582d4e400646b0f05b318e59daabc267535599a29cf6ff91c0549bd5b87"
    end
  end

  def install
    bin.install "protolint"
    bin.install "protoc-gen-protolint"
    prefix.install "LICENSE"
  end

  test do
    system "#{bin}/protolint", "version"
    system "#{bin}/protoc-gen-protolint", "version"
  end
end
