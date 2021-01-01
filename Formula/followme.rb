# This file was auto-generated. DO NOT EDIT.
class Followme < Formula
  desc "Utility to monitor Twitter followers"
  homepage "https://thingz.io"
  url "https://github.com/mchmarny/followme/releases/download/v0.3.7/followme-darwin-amd64.tar.gz"
  sha256 "152780a4dfe9340433a3a3830c0209ca24d98f575fb10cbe027af1e60a94081a"
  bottle :unneeded

  def install
    bin.install_symlink "followme" => "followme-darwin-amd64"
    bin.install "followme" => "followme"
  end

  test do
    system "#{bin}/followme", "--version"
  end
end
