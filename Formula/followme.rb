# This file was auto-generated. DO NOT EDIT.
class Followme < Formula
  desc "Utility to monitor Twitter followers"
  homepage "https://thingz.io"
  url "https://github.com/mchmarny/followme/releases/download/v0.3.2/followme"
  sha256 "6b1165dcb25f3def575fd5fb936f0b84bb4f6ae550d321120d0859565e549998"
  bottle :unneeded

  def install
    bin.install "followme" => "followme"
  end

  test do
    system "#{bin}/followme", "--version"
  end
end
