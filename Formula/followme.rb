# This file was auto-generated. DO NOT EDIT.
class Followme < Formula
  desc "Utility to monitor Twitter followers"
  homepage "https://thingz.io"
  url "https://github.com/mchmarny/followme/releases/download/v0.3.2/followme"
  sha256 "84eaa63eaab863efcfed6218c5a86778d51228ba00619b84aa5c1ca3157a0b17"
  bottle :unneeded

  def install
    bin.install "followme" => "followme"
  end

  test do
    system "#{bin}/followme", "--version"
  end
end
