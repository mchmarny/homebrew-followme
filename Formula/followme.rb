# This file was auto-generated. DO NOT EDIT.
class Followme < Formula
  desc "Utility to monitor Twitter followers"
  homepage "https://thingz.io"
  version "v0.3.12"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/mchmarny/followme/releases/download/v0.3.12/followme-darwin-amd64.tar.gz"
    sha256 "908d97f679fe258f58cc3b7299b41d451ae10592853fb68d846e8e13fad8e77d"
  elsif OS.linux?
    url "https://github.com/mchmarny/followme/releases/download/v0.3.12/followme-linux-amd64.tar.gz"
    sha256 "f0480dfd54fe87591cb107fc100fa3b13b0cd290933a365c229616bc8ffabfe2"
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