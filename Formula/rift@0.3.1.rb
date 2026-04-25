class RiftAT031 < Formula
  desc "A cli tool to simplify path navigation (v0.3.1)"
  homepage "https://github.com/gohyuhan/rift"
  license "MIT"

  on_arm do
    url "https://github.com/gohyuhan/rift/releases/download/v0.3.1/rift-v0.3.1-darwin-arm64.tar.gz"
    sha256 "77bfb27ad7e5fb157727101055fde51578c8c35aa18f309a6e7abdad12874bc9"
  end

  on_intel do
    url "https://github.com/gohyuhan/rift/releases/download/v0.3.1/rift-v0.3.1-darwin-amd64.tar.gz"
    sha256 "68b4dd07caec30f23345aa8c02fa28210a6af3fa2bc7ac998a83aa1365b326cc"
  end

  version "0.3.1"

  def install
    bin.install "rift"
  end

  test do
    system "#{bin}/rift", "--version"
  end
end
