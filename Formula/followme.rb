# This file was auto-generated. DO NOT EDIT.
class Followme < Formula
  desc "Utility to monitor Twitter followers"
  homepage "https://thingz.io"
  version "v0.3.8"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/mchmarny/followme/releases/download/v0.3.8/followme-darwin-amd64.tar.gz"
    sha256 "c6eb61222ff4205c89e7c11676e8f6cb80ac417e879aa8bf73c61a0a5184b99f"
  elsif OS.linux?
    url "https://github.com/mchmarny/followme/releases/download/v0.3.8/followme-linux-amd64.tar.gz"
    sha256 "7b45006f72c884dbdcf46de91c23aa5e9d8eed570e8a54c3d07865c9274ddf41"
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