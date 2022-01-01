# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Harsh < Formula
  desc "habit tracking for geeks. A minimalist CLI for examining your habits."
  homepage "https://github.com/wakatara/harsh"
  version "0.8.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/wakatara/harsh/releases/download/v0.8.13/harsh_Darwin_x86_64.tar.gz"
      sha256 "069f1d04835629d5a10f8df863ea908c7ed62a9da5afe2c927f446418f94038f"

      def install
        bin.install "harsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/wakatara/harsh/releases/download/v0.8.13/harsh_Darwin_arm64.tar.gz"
      sha256 "6367edd6a756dde6df0c73c2bb5c0b69a16871a8d0d6ac50471494ee783e7e52"

      def install
        bin.install "harsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/wakatara/harsh/releases/download/v0.8.13/harsh_Linux_x86_64.tar.gz"
      sha256 "c6f09d3d9d196085addb809c4d652b869e079517ea7207f5dd4063dec8f5b261"

      def install
        bin.install "harsh"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/wakatara/harsh/releases/download/v0.8.13/harsh_Linux_armv6.tar.gz"
      sha256 "4b316e2557c4ebd5da14b342516eaa131e9a54684077180d7a22f80d342e95a5"

      def install
        bin.install "harsh"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/wakatara/harsh/releases/download/v0.8.13/harsh_Linux_arm64.tar.gz"
      sha256 "280ede73a14f177409663fabee60ff2be076a0db5d4692d3153ddab5bc67ea80"

      def install
        bin.install "harsh"
      end
    end
  end

  test do
    system "#{bin}/harsh --version"
  end
end
