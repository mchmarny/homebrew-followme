# This file was auto-generated. DO NOT EDIT.
class Followme < Formula
  desc "Utility to monitor Twitter followers"
  homepage "https://thingz.io"
  version "v0.4.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/mchmarny/followme/releases/download/v0.4.2/followme-darwin-amd64.tar.gz"
    sha256 "4639ded8c66e61229ac3ebd851a2b45ff4030890811003105937c7a287838918"
  elsif OS.linux?
    url "https://github.com/mchmarny/followme/releases/download/v0.4.2/followme-linux-amd64.tar.gz"
    sha256 "3142b7602d44c2aa7cccc3d4cc811252731eb106a0bf1a5ee1ccc17bc2292108"
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