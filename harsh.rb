# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Harsh < Formula
  desc "habit tracking for geeks. A minimalist CLI for examining your habits."
  homepage "https://github.com/wakatara/harsh"
  version "0.10.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/wakatara/harsh/releases/download/v0.10.4/harsh_Darwin_x86_64.tar.gz"
      sha256 "32e52a722b26d1890e767cf65c6d88cb6e31dba55c1772ca15cbe5da743253fb"

      def install
        bin.install "harsh"
      end
    end
    on_arm do
      url "https://github.com/wakatara/harsh/releases/download/v0.10.4/harsh_Darwin_arm64.tar.gz"
      sha256 "ae102a956728db49b5d093f4a23a150afe5dfb96d51c82c0bf2b758749631469"

      def install
        bin.install "harsh"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/wakatara/harsh/releases/download/v0.10.4/harsh_Linux_x86_64.tar.gz"
        sha256 "331e814ed3ec635784461e9596fa8a5eef0e27affeab339d010caa2a827f1087"

        def install
          bin.install "harsh"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/wakatara/harsh/releases/download/v0.10.4/harsh_Linux_arm64.tar.gz"
        sha256 "b8a6aa693d663649e99c692c6bc1ed149a0c0f83a5b2ef020ce5a09c289d1d2f"

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
