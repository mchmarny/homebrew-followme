# This file was auto-generated. DO NOT EDIT.
class Followme < Formula
  desc "Utility to monitor Twitter followers"
  homepage "https://thingz.io"
  url "https://github.com/mchmarny/followme/releases/download/v0.3.3/followme"
  sha256 "2957b92e31ddd12f94c59d1d2ed63c7be984acf2123bb731fa462a6869e16688"
  bottle :unneeded

  def install
    bin.install "followme" => "followme"
  end

  test do
    system "#{bin}/followme", "--version"
  end
end
