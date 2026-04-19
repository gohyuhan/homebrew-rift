class RiftAT030 < Formula
  desc "A cli tool to simplify path navigation (v0.3.0)"
  homepage "https://github.com/gohyuhan/rift"
  license "MIT"

  on_arm do
    url "https://github.com/gohyuhan/rift/releases/download/v0.3.0/rift-v0.3.0-darwin-arm64.tar.gz"
    sha256 "ce2915656b281cb866135bc0c05c4a4056f405736b39b6c4cf584755ba537d8d"
  end

  on_intel do
    url "https://github.com/gohyuhan/rift/releases/download/v0.3.0/rift-v0.3.0-darwin-amd64.tar.gz"
    sha256 "8cd6cc3bf4684b747f89ac2e5ea290373ff77d4537f9ddb79cfb6dbc9ca789c9"
  end

  version "0.3.0"

  def install
    bin.install "rift"
  end

  test do
    system "#{bin}/rift", "--version"
  end
end
