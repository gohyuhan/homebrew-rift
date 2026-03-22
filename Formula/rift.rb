class Rift < Formula
  desc "A cli tool to simplify path navigation"
  homepage "https://github.com/gohyuhan/rift"
  license "MIT"

  on_arm do
    url "https://github.com/gohyuhan/rift/releases/download/v0.1.0/rift-v0.1.0-darwin-arm64.tar.gz"
    sha256 "a9dbf8e23e3138a717be5923f0be07e77556638b8bcf6a12172b0bd20f46f1be"
  end

  on_intel do
    url "https://github.com/gohyuhan/rift/releases/download/v0.1.0/rift-v0.1.0-darwin-amd64.tar.gz"
    sha256 "21cbc44336d3a70c087bd7213925aa970dceefc084dd825717333b5969c87d3c"
  end

  version "0.1.0"

  def install
    bin.install "rift"
  end

  test do
    system "#{bin}/rift", "--version"
  end
end
