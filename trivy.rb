class Trivy < Formula
  desc ""
  homepage "https://github.com/knqyf263/trivy"
  url "https://github.com/knqyf263/trivy/releases/download/v0.0.3/trivy_0.0.3_macOS-64bit.tar.gz"
  version "0.0.3"
  sha256 "a05c2e0d3c9685b2d7c23505e93920c8a6254783f66bd363ccaa143d6a01eca4"
  
  depends_on "rpm"

  def install
    bin.install "trivy"
  end

  test do
    system "#{bin}/program --version"
  end
end
