# This file was auto-generated. DO NOT EDIT.
class Followme < Formula
  desc "Utility to monitor Twitter followers"
  homepage "https://thingz.io"
  version "v0.3.8"
  url "https://github.com/mchmarny/followme/releases/download/v0.3.8/followme-darwin-amd64.tar.gz"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
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