# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Harsh < Formula
  desc "habit tracking for geeks. A minimalist CLI for examining your habits."
  homepage "https://github.com/wakatara/harsh"
  version "0.10.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/wakatara/harsh/releases/download/v0.10.18/harsh_Darwin_x86_64.tar.gz"
      sha256 "f462942135aaff3a79f7ce732dd1be5ba82ff4eef39889d86c7acf4f640d07b8"

      def install
        bin.install "harsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/wakatara/harsh/releases/download/v0.10.18/harsh_Darwin_arm64.tar.gz"
      sha256 "fa81215d6f7bc24b10a9b8f7a3dcdc9a0b8caec8f458629d39d0f7e028200ded"

      def install
        bin.install "harsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/wakatara/harsh/releases/download/v0.10.18/harsh_Linux_x86_64.tar.gz"
        sha256 "4e960cda6ffe3d01b3d07861624eacc3671bde1e6e9f74e335f09e5d7e7731f4"

        def install
          bin.install "harsh"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/wakatara/harsh/releases/download/v0.10.18/harsh_Linux_arm64.tar.gz"
        sha256 "0bc75fbd84052185597eba1f4b90f9a4634f06655992fabc1ad353c46336cd80"

        def install
          bin.install "harsh"
        end
      end
    end
  end

  test do
    system "#{bin}/harsh --version"
  end
end
