# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Harsh < Formula
  desc "habit tracking for geeks. A minimalist CLI for examining your habits."
  homepage "https://github.com/wakatara/harsh"
  version "0.8.28"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wakatara/harsh/releases/download/v0.8.28/harsh_Darwin_arm64.tar.gz"
      sha256 "a7db99504e652522c7499f21b470a0fad6a21d3fd6e7d78de80a1e56c0295b7f"

      def install
        bin.install "harsh"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/wakatara/harsh/releases/download/v0.8.28/harsh_Darwin_x86_64.tar.gz"
      sha256 "eeeec80662ecdd69f85e588089dee7a9be09c431c5a62140055c021c7c55de8a"

      def install
        bin.install "harsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/wakatara/harsh/releases/download/v0.8.28/harsh_Linux_arm64.tar.gz"
      sha256 "5379e60b3bb7d55cd6560bdb0f4ba630f1d42e520e294a5aef1e79ac98e0a93f"

      def install
        bin.install "harsh"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/wakatara/harsh/releases/download/v0.8.28/harsh_Linux_x86_64.tar.gz"
      sha256 "709b4e9d8d8f810ba9b0cd76558fb148b808d5fc99695cd0fd12d771d266f5d5"

      def install
        bin.install "harsh"
      end
    end
  end

  test do
    system "#{bin}/harsh --version"
  end
end
