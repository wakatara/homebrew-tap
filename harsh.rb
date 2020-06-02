# This file was generated by GoReleaser. DO NOT EDIT.
class Harsh < Formula
  desc "habit tracking for geeks. A minimalist CLI for examining your habits."
  homepage "https://github.com/wakatara/harsh"
  version "0.8.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/wakatara/harsh/releases/download/v0.8.3/harsh_Darwin_x86_64.tar.gz"
    sha256 "c9b7d6f75845c7db55555c609b8253b9a1d43a4f04f7a64b6dffd55b0fc09a33"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/wakatara/harsh/releases/download/v0.8.3/harsh_Linux_x86_64.tar.gz"
      sha256 "a3350b0955b01942cb9ea6b586e8960cf2d6e6a047e653bc49a38f74b841c8cc"
    end
  end

  def install
    bin.install "harsh"
  end

  test do
    system "#{bin}/harsh --version"
  end
end
