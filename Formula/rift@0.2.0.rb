class RiftAT020 < Formula
  desc "A cli tool to simplify path navigation (v0.2.0)"
  homepage "https://github.com/gohyuhan/rift"
  license "MIT"

  on_arm do
    url "https://github.com/gohyuhan/rift/releases/download/v0.2.0/rift-v0.2.0-darwin-arm64.tar.gz"
    sha256 "211f5ed6560c2f696046c4f6adc1ea4dd21697f397b884a14d0e3ea70f9ad543"
  end

  on_intel do
    url "https://github.com/gohyuhan/rift/releases/download/v0.2.0/rift-v0.2.0-darwin-amd64.tar.gz"
    sha256 "f9891d8832bbdd363fd7aac615461f2a49059d45d7fb6fdc0d747325d9f6be4a"
  end

  version "0.2.0"

  def install
    bin.install "rift"
  end

  test do
    system "#{bin}/rift", "--version"
  end
end
