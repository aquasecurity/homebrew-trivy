class Trivy < Formula
  desc ""
  homepage "https://github.com/knqyf263/trivy"
  url "https://github.com/knqyf263/trivy/releases/download/v0.0.1/trivy_0.0.1_macOS-64bit.tar.gz"
  version "0.0.1"
  sha256 "738716d656415a7c3f8fb686c34aabf2a234b48586e84a33ad07aa7f6b71c992"
  
  depends_on "rpm"

  def install
    bin.install "trivy"
  end

  test do
    system "#{bin}/program --version"
  end
end
