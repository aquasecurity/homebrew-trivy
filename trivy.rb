class Trivy < Formula
  desc ""
  homepage "https://github.com/aquasecurity/trivy"
  url "https://github.com/aquasecurity/trivy/releases/download/v0.1.6/trivy_0.1.6_macOS-64bit.tar.gz"
  version "0.1.6"
  sha256 "6e68c26952de51f6c8d1e51c1502f639969e9cb338a2025806c2d8aef19f55dc"
  
  depends_on "rpm"

  def install
    bin.install "trivy"
  end

  test do
    system "#{bin}/program --version"
  end
end
