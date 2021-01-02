# This file was auto-generated. DO NOT EDIT.
class Followme < Formula
  desc "Utility to monitor Twitter followers"
  homepage "https://thingz.io"
  version "v0.3.11"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/mchmarny/followme/releases/download/v0.3.11/followme-darwin-amd64.tar.gz"
    sha256 "4f2115f03bb49ee87e283c70243751c136ae3ab0f47441a51de6c6d65b443d6c"
  elsif OS.linux?
    url "https://github.com/mchmarny/followme/releases/download/v0.3.11/followme-linux-amd64.tar.gz"
    sha256 "2b73c90808188251e0575ac4f0a97aa50fcd473b1bbcf88a42e11935695319ce"
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