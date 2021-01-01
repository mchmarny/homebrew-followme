# This file was auto-generated. DO NOT EDIT.
class Followme < Formula
  desc "Utility to monitor Twitter followers"
  homepage "https://thingz.io"
  version "v0.3.7"
  url "https://github.com/mchmarny/followme/releases/download/v0.3.7/followme-darwin-amd64.tar.gz"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  bottle :unneeded

  def install
    bin.install_symlink "followme-darwin-amd64" => "followme"
    bin.install "followme" => "followme"
  end

  test do
    system "#{bin}/followme", "--version"
  end
end