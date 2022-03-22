# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Harsh < Formula
  desc "habit tracking for geeks. A minimalist CLI for examining your habits."
  homepage "https://github.com/wakatara/harsh"
  version "0.8.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wakatara/harsh/releases/download/v0.8.16/harsh_Darwin_arm64.tar.gz"
      sha256 "559e6713df499fb9c30862a05731bd6aa66c50aef102fd18885ba055f87b8577"

      def install
        bin.install "harsh"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/wakatara/harsh/releases/download/v0.8.16/harsh_Darwin_x86_64.tar.gz"
      sha256 "01a31e20e4ff4ad81341edee01479b5db07b471b1cd17ae09e5c4fc263effd5f"

      def install
        bin.install "harsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/wakatara/harsh/releases/download/v0.8.16/harsh_Linux_armv6.tar.gz"
      sha256 "9f05892e4e6121ca29f899a89c5b48e83abb7076c1584f14631fdcf2cbd2eb78"

      def install
        bin.install "harsh"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/wakatara/harsh/releases/download/v0.8.16/harsh_Linux_x86_64.tar.gz"
      sha256 "b1db193b1743a8bd7b1c1577d3142f702fb450c95de6d69e1b7d1595de0a36dc"

      def install
        bin.install "harsh"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/wakatara/harsh/releases/download/v0.8.16/harsh_Linux_arm64.tar.gz"
      sha256 "cff8e3ec8ed22986c18033ef4ec18a359fc61f476ea25e523dad1b82ee497fee"

      def install
        bin.install "harsh"
      end
    end
  end

  test do
    system "#{bin}/harsh --version"
  end
end
