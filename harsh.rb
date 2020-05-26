# This file was generated by GoReleaser. DO NOT EDIT.
class Harsh < Formula
  desc "habit tracking for geeks. A minimalist CLI for examining your habits."
  homepage "https://github.com/wakatara/harsh"
  version "0.8.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/wakatara/harsh/releases/download/v0.8.2/harsh_Darwin_x86_64.tar.gz"
    sha256 "2067e911128c839aa47f0bb3abffa9b973a3b24647818ddce91a37a8a9b86984"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/wakatara/harsh/releases/download/v0.8.2/harsh_Linux_x86_64.tar.gz"
      sha256 "cc52080cc4b888aa9502f4ecb58d7f88c12cab78e0a5b6946deb95054805002c"
    end
  end

  def install
    bin.install "harsh"
  end

  test do
    system "#{bin}/harsh --version"
  end
end
