# This file was auto-generated. DO NOT EDIT.
class Followme < Formula
  desc "Utility to monitor Twitter followers"
  homepage "https://thingz.io"
  version "v0.3.9"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/mchmarny/followme/releases/download/v0.3.9/followme-darwin-amd64.tar.gz"
    sha256 "0227e2910d04b2e2d5a39a940c66d522d602db5b7164eed9f1e39366be79e6db"
  elsif OS.linux?
    url "https://github.com/mchmarny/followme/releases/download/v0.3.9/followme-linux-amd64.tar.gz"
    sha256 "0e5164722194bcb3215026d8ec7c6181288e9d9d4299c012209d2b17a26adf94"
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