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
      sha256 "b039baddcf13054040dda0422cfb00fc05ede790d245c3626b5cf6971c684419"

      def install
        bin.install "harsh"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/wakatara/harsh/releases/download/v0.8.28/harsh_Darwin_x86_64.tar.gz"
      sha256 "8e53752ee6d6f073c0db89ffece001d249b079d7c77a14834210380e8c2ef2a5"

      def install
        bin.install "harsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/wakatara/harsh/releases/download/v0.8.28/harsh_Linux_x86_64.tar.gz"
      sha256 "51fdbb83cf3fde92af1809422b6e99108e169242403864d58cd5723312e8f600"

      def install
        bin.install "harsh"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/wakatara/harsh/releases/download/v0.8.28/harsh_Linux_arm64.tar.gz"
      sha256 "aa14804604ae433b94f24bdb1f69d824305e22e45784581e5e89a8461a9be00a"

      def install
        bin.install "harsh"
      end
    end
  end

  test do
    system "#{bin}/harsh --version"
  end
end
