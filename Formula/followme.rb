# This file was auto-generated. DO NOT EDIT.
class Followme < Formula
  desc "Utility to monitor Twitter followers"
  homepage "https://thingz.io"
  version "v0.3.8"
  url "https://github.com/mchmarny/followme/releases/download/v0.3.8/followme-darwin-amd64.tar.gz"
  sha256 "c6eb61222ff4205c89e7c11676e8f6cb80ac417e879aa8bf73c61a0a5184b99f"
  bottle :unneeded

  def install
    libexec.install Dir["*"]

    bin.install_symlink libexec/"followme-darwin-amd64"
    bin.install_symlink bin/"followme-darwin-amd64" => "followme"
  end

  test do
    system "#{bin}/followme", "--version"
  end
end