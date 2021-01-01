# This file was auto-generated. DO NOT EDIT.
class Followme < Formula
  desc "Utility to monitor Twitter followers"
  homepage "https://thingz.io"
  version "v0.3.10"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/mchmarny/followme/releases/download/v0.3.10/followme-darwin-amd64.tar.gz"
    sha256 "f9c817916a58cf8cf5e2a20ce04d9e260b63480083caf8608d1cd575a8af6399"
  elsif OS.linux?
    url "https://github.com/mchmarny/followme/releases/download/v0.3.10/followme-linux-amd64.tar.gz"
    sha256 "8a77c5bb20dc5355f015b8cd15fb76b78ed57aefa307e3da27a8e7116992e992"
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