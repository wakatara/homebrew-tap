# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Harsh < Formula
  desc "habit tracking for geeks. A minimalist CLI for examining your habits."
  homepage "https://github.com/wakatara/harsh"
  version "0.8.11"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/wakatara/harsh/releases/download/v0.8.11/harsh_Darwin_x86_64.tar.gz"
      sha256 "d786b8d5bafdcd321096cd69f8a6e330ad1fc99fffa4a9f491a3dd7afd26c885"
    end
    if Hardware::CPU.arm?
      url "https://github.com/wakatara/harsh/releases/download/v0.8.11/harsh_Darwin_arm64.tar.gz"
      sha256 "55ccca1011805e8ea3edb7e88bbffa17c92faf6de3e5de4e76b73bf58bb71209"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/wakatara/harsh/releases/download/v0.8.11/harsh_Linux_x86_64.tar.gz"
      sha256 "78d5dae3c396654da5cf2962f4fc8b091b415ec19393eb1fbec4f499e127ced2"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/wakatara/harsh/releases/download/v0.8.11/harsh_Linux_armv6.tar.gz"
      sha256 "2e47e042316f743a96d63be04faf4e37c3b58faed2279dad071b26e225802a36"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/wakatara/harsh/releases/download/v0.8.11/harsh_Linux_arm64.tar.gz"
      sha256 "32aafa7dc3765e5dac9d3adcc37a109671bfdb60d3222e2d2698fc08e2ce753a"
    end
  end

  def install
    bin.install "harsh"
  end

  test do
    system "#{bin}/harsh --version"
  end
end
