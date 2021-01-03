# This file was auto-generated. DO NOT EDIT.
class Followme < Formula
  desc "Utility to monitor Twitter followers"
  homepage "https://thingz.io"
  version "v0.4.7"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/mchmarny/followme/releases/download/v0.4.7/followme-darwin-amd64.tar.gz"
    sha256 "e9f23bf3503736e6a95c90c9c11c735edab43b775282598f6a5a0a8b36c1eddf"
  elsif OS.linux?
    url "https://github.com/mchmarny/followme/releases/download/v0.4.7/followme-linux-amd64.tar.gz"
    sha256 "fa8d3215d758dbae817b0c226dbd5814eb092f31760ef9959b41066b3467959d"
  end
  
  def install
    libexec.install Dir["*"]

    if OS.mac?
      bin.install_symlink libexec/"followme-darwin-amd64"
      bin.install_symlink bin/"followme-darwin-amd64" => "followme"
    elsif OS.linux?
      bin.install_symlink libexec/"followme-linux-amd64"
      bin.install_symlink bin/"followme-linux-amd64" => "followme"
    end
  end

  test do
    system "#{bin}/followme", "--version"
  end
end